// timep.c
// to compile loadable shared librrary file (timep.so): clone bash git tree, cd to bash/examples/loadables, copy "timep.c" to that dir, and run 
// gcc -Wall -fPIC -flto -O3 -v -DSHELL -DLOADABLE_BUILTIN -DHAVE_CONFIG_H -DSELECT_COMMAND -I/usr/include -I/usr/include/bash -I/usr/include/bash/builtins -I/usr/include/bash/include -I. -shared -o timep.so timep.c
// gcc -Wall -fPIC -flto -O3 -v -DSHELL -DHAVE_CONFIG_H -DSELECT_COMMAND -I/usr/include -I/usr/include/bash -I/usr/include/bash/builtins -I/usr/include/bash/include -shared  -o timep.so timep.c
// gcc -Wall -fPIC -flto -O3 -v -DSHELL -DHAVE_CONFIG_H -DSELECT_COMMAND -I/usr/include -I/usr/include/bash -I/usr/include/bash/builtins -I/usr/include/bash/include -static -c timep.c -o timep.o
// gcc -shared -O3 -fPIC -flto -o timep.so timep.o
//
// for cross compile:
// aarch64-linux-gnu-gcc --sysroot=/usr/aarch64-redhat-linux/sys-root/fc41/ -v -fPIC -flto -static -DHAVE_CONFIG_H -DSHELL -DLOADABLE_BUILTIN -DSELECT_COMMAND -O3 -I/usr/include -I/usr/include/bash -I/usr/include/bash/builtins -I/usr/include/bash/include -I/usr/lib/gcc/aarch64-linux-gnu/14/include-fixed -I/usr/lib/gcc/aarch64-linux-gnu/14/include -I/mnt/ramdisk/bash/examples/loadables -c timep.c -o timep.o
// aarch64-linux-gnu-gcc --sysroot=/usr/aarch64-redhat-linux/sys-root/fc41/  -shared -o timep.so timep.o



// Enable GNU extensions 
#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif

// System headers
#include <sys/types.h>
#include <sys/resource.h>
#include <sys/time.h>
#include <sys/stat.h>
#include <errno.h>
#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <poll.h>
#include <unistd.h>

#ifdef HAVE_CONFIG_H
#include <config.h>
#endif

// Bash internal headers
#include "command.h"
#include "builtins.h"
#include "shell.h"
#include "common.h"
#include "xmalloc.h"
#include "variables.h"

// Helpers for builtins
extern int add_builtin(struct builtin *bp, int keep);
//extern char **make_builtin_argv(WORD_LIST * list);

// define function prototypes
static int timep_builtin(WORD_LIST * list);
static int getCPUtime_main(int argc, char **argv);
static int timep_crc32_main(int argc, char **argv);
static int timep_fnv1a_main(int argc, char **argv);

/* ----------------------------- */
/* --------  getCPUtime -------- */
/* ----------------------------- */

static char *getCPUtime_doc[] = {
    "",
    "USAGE: getCPUtime [<VAR> [<VAR_SELF>]]",
    "",
    "Return high-resolution CPU time (microseconds) used by this process and",
    "all finished child processes and all their finished descendents.",
    "",
    "If <VAR> is given, assigns the value to that variable; otherwise prints it.",
    "If <VAR_SELF> is also given, assigns self CPU time (no children) to that variable.",
    "",
    NULL
};

static int getCPUtime_main(int argc, char **argv) {
    if (argc > 3) {
        builtin_error("getCPUtime: too many arguments");
        return EXECUTION_FAILURE;
    }

    char *var_combined = NULL;
    char *var_self     = NULL;

    if (argc >= 2 && argv[1][0] != '\0')
        var_combined = argv[1];
    if (argc == 3 && argv[2][0] != '\0')
        var_self = argv[2];

    int64_t micros_self = 0;     // Self-only CPU time
    int64_t micros_combined = 0; // Self + finished children

    // ---- Collect self time ----
#if defined(CLOCK_PROCESS_CPUTIME_ID)
    {
        struct timespec ts;
        if (clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &ts) == 0) {
            micros_self = (int64_t)ts.tv_sec * 1000000LL + ts.tv_nsec / 1000;
        } else {
            // Fallback to getrusage(RUSAGE_SELF)
            struct rusage ru_self;
            if (getrusage(RUSAGE_SELF, &ru_self) == 0) {
                micros_self = (int64_t)ru_self.ru_utime.tv_sec * 1000000LL +
                              ru_self.ru_utime.tv_usec +
                              (int64_t)ru_self.ru_stime.tv_sec * 1000000LL +
                              ru_self.ru_stime.tv_usec;
            } else {
                builtin_error("getrusage (SELF) failed: %s", strerror(errno));
                return EXECUTION_FAILURE;
            }
        }
    }
#else
    {
        struct rusage ru_self;
        if (getrusage(RUSAGE_SELF, &ru_self) == 0) {
            micros_self = (int64_t)ru_self.ru_utime.tv_sec * 1000000LL +
                          ru_self.ru_utime.tv_usec +
                          (int64_t)ru_self.ru_stime.tv_sec * 1000000LL +
                          ru_self.ru_stime.tv_usec;
        } else {
            builtin_error("getrusage (SELF) failed: %s", strerror(errno));
            return EXECUTION_FAILURE;
        }
    }
#endif

    // ---- Add finished children for combined time ----
    micros_combined = micros_self; // Start with self
    struct rusage ru_child;
    if (getrusage(RUSAGE_CHILDREN, &ru_child) == 0) {
        micros_combined += (int64_t)ru_child.ru_utime.tv_sec * 1000000LL +
                           ru_child.ru_utime.tv_usec +
                           (int64_t)ru_child.ru_stime.tv_sec * 1000000LL +
                           ru_child.ru_stime.tv_usec;
    } else {
        builtin_error("getrusage (CHILDREN) failed: %s", strerror(errno));
        return EXECUTION_FAILURE;
    }

    // ---- Output results ----
    if (var_combined) {
        char buf_combined[64];
        snprintf(buf_combined, sizeof(buf_combined), "%lld", (long long)micros_combined);
        bind_variable(var_combined, buf_combined, 0);

        if (var_self) {
            char buf_self[64];
            snprintf(buf_self, sizeof(buf_self), "%lld", (long long)micros_self);
            bind_variable(var_self, buf_self, 0);
        }
    } else {
        // No variables provided: print combined time to stdout
        printf("%lld\n", (long long)micros_combined);
    }

    return EXECUTION_SUCCESS;
}

struct builtin getCPUtime_struct = {
    "getCPUtime",
    timep_builtin,
    BUILTIN_ENABLED,
    getCPUtime_doc,
    "getCPUtime [<VAR> [<VAR_SELF>]]",
    0
};


/* ----------------------------- */
/* ------- timep_crc32 ------ */
/* ----------------------------- */

static char *timep_crc32_doc[] = {
    "",
    "USAGE: timep_crc32 <FILE|-> [<VAR>]",
    "",
    "Compute CRC32 (IEEE) of <FILE>. Use '-' or empty to read from stdin.",
    "",
    "If <VAR> is provided the checksum (8 hex digits) is stored in that variable,",
    "    otherwise it is printed to stdout.",
    "",
    "If both <FILE> and <VAR> are passed as empty (timep_crc32 '' ''),"
    "    initialize crc32 tables but do not compute a crc32 hash.",
    NULL
};

/* Small, self-contained CRC32 implementation (polynomial 0xEDB88320) */
static uint32_t crc32_table[256];
static int crc32_table_inited = 0;

static void
crc32_init(void)
{
    if (crc32_table_inited)
        return;
    const uint32_t poly = 0xEDB88320u;
    for (uint32_t i = 0; i < 256; ++i) {
        uint32_t crc = i;
        for (int j = 0; j < 8; ++j) {
            if (crc & 1)
                crc = (crc >> 1) ^ poly;
            else
                crc = crc >> 1;
        }
        crc32_table[i] = crc;
    }
    crc32_table_inited = 1;
}

static uint32_t
crc32_update(uint32_t crc, const unsigned char *buf, size_t len)
{
    /* This helper inverts at entry and exit so it can be called repeatedly. */
    crc = ~crc;
    for (size_t i = 0; i < len; ++i)
        crc = crc32_table[(crc ^ buf[i]) & 0xFF] ^ (crc >> 8);
    return ~crc;
}

static int
timep_crc32_main(int argc, char **argv)
{
    if (argc > 3) {
        builtin_error("timep_crc32: too many arguments");
        return EXECUTION_FAILURE;
    }

    /* If invoked as: timep_crc32 '' ''  --> just initialize table and exit */
    if (argc == 3 && argv[1][0] == '\0' && argv[2][0] == '\0') {
        crc32_init();
        return EXECUTION_SUCCESS;
    }

    /* Determine input source */
    const char *filename = NULL;
    if (argc >= 2 && argv[1][0] != '\0')
        filename = argv[1];
    else
        filename = "-"; /* use stdin by default */

    const char *varname = NULL;
    if (argc == 3 && argv[2][0] != '\0')
        varname = argv[2];

    FILE *fp = NULL;
    int using_stdin = 0;

    /* Special handling for filename == "-" :
       * If stdin currently has data (poll says POLLIN) use stdin.
       * Otherwise, if a real file named "-" exists in the cwd, open that file.
       * Else fall back to stdin.
       */
    if (strcmp(filename, "-") == 0) {
        /* ensure table exists early for the user's possible empty-init pattern */
        crc32_init();

        struct pollfd pfd;
        pfd.fd = STDIN_FILENO;
        pfd.events = POLLIN;
        int polres = poll(&pfd, 1, 0); /* non-blocking check */

        if (polres > 0 && (pfd.revents & POLLIN)) {
            fp = stdin;
            using_stdin = 1;
        } else {
            struct stat st;
            if (stat("-", &st) == 0) {
                /* There is a file literally named "-" in the cwd; open it */
                fp = fopen("-", "rb");
                if (!fp) {
                    builtin_error("timep_crc32: failed to open './-' : %s", strerror(errno));
                    return EXECUTION_FAILURE;
                }
                using_stdin = 0;
            } else {
                /* No data on stdin and no local file '-' -- use stdin anyway */
                fp = stdin;
                using_stdin = 1;
            }
        }
    } else {
        fp = fopen(filename, "rb");
        if (!fp) {
            builtin_error("timep_crc32: failed to open '%s': %s", filename, strerror(errno));
            return EXECUTION_FAILURE;
        }
    }

    /* If we reached here and crc table not yet initialized, do it now */
    crc32_init();

    /* Read and compute */
    const size_t BUF_SZ = 65536;
    unsigned char *buf = (unsigned char *) xmalloc(BUF_SZ);
    if (!buf) {
        if (!using_stdin) fclose(fp);
        builtin_error("timep_crc32: out of memory");
        return EXECUTION_FAILURE;
    }

    uint32_t crc = 0; /* helper handles inversion internally */

    size_t nread;
    while ((nread = fread(buf, 1, BUF_SZ, fp)) > 0) {
        crc = crc32_update(crc, buf, nread);
    }
    if (ferror(fp)) {
        xfree(buf);
        if (!using_stdin) fclose(fp);
        builtin_error("timep_crc32: read error: %s", strerror(errno));
        return EXECUTION_FAILURE;
    }

    xfree(buf);
    if (!using_stdin) fclose(fp);

    /* Format checksum as 8 hex digits (lowercase) */
    char outbuf[32];
    snprintf(outbuf, sizeof(outbuf), "%08x", (unsigned int)crc);

    if (varname) {
        bind_variable((char *)varname, outbuf, 0);
    } else {
        printf("%s\n", outbuf);
    }

    return EXECUTION_SUCCESS;
}

struct builtin timep_crc32_struct = {
    "timep_crc32",
    timep_builtin, /* dispatch via timep_builtin */
    BUILTIN_ENABLED,
    timep_crc32_doc,
    "timep_crc32 <file|-> [<VAR>]",
    0
};


/* ----------------------------- */
/* ------- timep_fnv1a --------- */
/* ----------------------------- */

static char *timep_fnv1a_doc[] = {
    "",
    "USAGE: timep_fnv1a <file|-> [<VAR>]",
    "",
    "Compute FNV-1a 64-bit hash of <file>. Use '-' or empty to read from stdin.",
    "If <VAR> is provided the checksum (16 hex digits) is stored in that variable,",
    "otherwise it is printed to stdout.",
    NULL
};

/* FNV-1a 64-bit constants */
#define FNV1A64_OFFSET 14695981039346656037ULL
#define FNV1A64_PRIME  1099511628211ULL

static uint64_t
fnv1a64_update(uint64_t h, const unsigned char *buf, size_t len)
{
    uint64_t hash = h;
    for (size_t i = 0; i < len; ++i) {
        hash ^= (uint64_t)buf[i];
        hash *= FNV1A64_PRIME;
    }
    return hash;
}

static int
timep_fnv1a_main(int argc, char **argv)
{
    if (argc > 3) {
        builtin_error("timep_fnv1a: too many arguments");
        return EXECUTION_FAILURE;
    }

    const char *filename = NULL;
    if (argc >= 2 && argv[1][0] != '\0')
        filename = argv[1];
    else
        filename = "-";

    const char *varname = NULL;
    if (argc == 3 && argv[2][0] != '\0')
        varname = argv[2];

    FILE *fp = NULL;
    int using_stdin = 0;

    /* Special handling for filename == "-" (same heuristic as checksum builtin) */
    if (strcmp(filename, "-") == 0) {
        struct pollfd pfd;
        pfd.fd = STDIN_FILENO;
        pfd.events = POLLIN;
        int polres = poll(&pfd, 1, 0); /* non-blocking check */

        if (polres > 0 && (pfd.revents & POLLIN)) {
            fp = stdin;
            using_stdin = 1;
        } else {
            struct stat st;
            if (stat("-", &st) == 0) {
                fp = fopen("-", "rb");
                if (!fp) {
                    builtin_error("timep_fnv1a: failed to open './-': %s", strerror(errno));
                    return EXECUTION_FAILURE;
                }
                using_stdin = 0;
            } else {
                fp = stdin;
                using_stdin = 1;
            }
        }
    } else {
        fp = fopen(filename, "rb");
        if (!fp) {
            builtin_error("timep_fnv1a: failed to open '%s': %s", filename, strerror(errno));
            return EXECUTION_FAILURE;
        }
    }

    const size_t BUF_SZ = 65536;
    unsigned char *buf = (unsigned char *) xmalloc(BUF_SZ);
    if (!buf) {
        if (!using_stdin) fclose(fp);
        builtin_error("timep_fnv1a: out of memory");
        return EXECUTION_FAILURE;
    }

    uint64_t hash = FNV1A64_OFFSET;
    size_t nread;
    while ((nread = fread(buf, 1, BUF_SZ, fp)) > 0) {
        hash = fnv1a64_update(hash, buf, nread);
    }
    if (ferror(fp)) {
        xfree(buf);
        if (!using_stdin) fclose(fp);
        builtin_error("timep_fnv1a: read error: %s", strerror(errno));
        return EXECUTION_FAILURE;
    }

    xfree(buf);
    if (!using_stdin) fclose(fp);

    /* Format 16 hex digits, lowercase */
    char outbuf[32];
    /* cast to unsigned long long to be safe across platforms */
    snprintf(outbuf, sizeof(outbuf), "%016llx", (unsigned long long)hash);

    if (varname) {
        bind_variable((char *)varname, outbuf, 0);
    } else {
        printf("%s\n", outbuf);
    }

    return EXECUTION_SUCCESS;
}

struct builtin timep_fnv1a_struct = {
    "timep_fnv1a",
    timep_builtin, /* dispatch via timep_builtin */
    BUILTIN_ENABLED,
    timep_fnv1a_doc,
    "timep_fnv1a <file|-> [<VAR>]",
    0
};

/* --------------------------------------------*/
/* Register all builtins (under timep_builtin) */
/* --------------------------------------------*/

static int timep_builtin(WORD_LIST * list) {
    // convert input WORD_LISTR to argc + argv
    int argc;
    char ** argv = make_builtin_argv(list, & argc);

    char * sub = argv[0];

    int ret;
    if (strcmp(sub, "getCPUtime") == 0) {
        ret = getCPUtime_main(argc, argv);
    } else if (strcmp(sub, "timep_fnv1a") == 0) {
        ret = timep_fnv1a_main(argc, argv);
    } else if (strcmp(sub, "timep_crc32") == 0) {
        ret = timep_crc32_main(argc, argv);
    } else {
        builtin_error("timep: unknown command '%s'", sub);
        ret = EXECUTION_FAILURE;
    }

    xfree(argv);
    return ret;
}

int setup_builtin_timep(void) {
    add_builtin(&getCPUtime_struct, 1);
    add_builtin(&timep_fnv1a_struct, 1);
    add_builtin(&timep_crc32_struct, 1);

    return 0;
}

