// timep.c
// to compile loadable shared librrary file (timep.so): clone bash git tree, cd to bash/examples/loadables, copy "timep.c" to that dir, and run 
// gcc -Wall -fPIC -flto -O3 -v -DSHELL -DLOADABLE_BUILTIN -DHAVE_CONFIG_H -DSELECT_COMMAND -I/usr/include -I/usr/include/bash -I/usr/include/bash/builtins -I/usr/include/bash/include -shared -o timep.so timep.c
// ON x86_64 ADD: -msse4.2     ON armv8 ADD:  -march=armv8-a+crc
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
#include <stddef.h>
#include <string.h>
#include <poll.h>
#include <unistd.h>

#if defined(__x86_64__) || defined(__i386__)
#include <cpuid.h>
#include <nmmintrin.h>
#elif defined(__aarch64__)
#include <sys/auxv.h>
#include <asm/hwcap.h>
#include <arm_acle.h>
#endif

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
#include "array.h"
#include "bashansi.h"

// Helpers for builtins
extern int add_builtin(struct builtin *bp, int keep);
//extern char **make_builtin_argv(WORD_LIST * list);

// define function prototypes
static int timep_builtin(WORD_LIST * list);
static int getCPUtime_main(int argc, char **argv);
static int timep_crc32_main(int argc, char **argv);
static int timep_fnv1a_main(int argc, char **argv);
static int timep_hash_main(int argc, char **argv);
static int bind_var_or_array(const char *varname, const char *value);

/* 
 * bind_var_or_array:
 *
 * Assign a value to a Bash variable, handling both scalars and arrays.
 *
 * Behavior:
 * 1. Scalar variable (e.g., "foo"):
 *      - Calls bind_variable(varname, value, 0)
 *      - Creates the variable if it does not exist
 *
 * 2. Indexed array (e.g., "arr[3]"):
 *      - Splits into base name and index
 *      - If the array does not exist, auto-creates an indexed array
 *      - Calls bind_array_variable() for the assignment
 *      - Bash will throw "bad array subscript" if the index is invalid (non-numeric)
 *
 * 3. Associative array (e.g., "A[foo]") that was declared with `declare -A A`:
 *      - find_variable() returns a valid SHELL_VAR* even if the array is empty
 *      - bind_array_variable() inserts the element into the empty associative array
 *      - No prior assignment is needed; works on a "defined but empty" associative array
 *
 * Notes:
 * - Does not automatically create associative arrays; the user must declare with `declare -A` first
 * - Uses xmalloc/xfree for memory management to stay compatible with Bash internals
 * - All index checking (numeric, invalid subscript) is deferred to Bash itself
 */
static int bind_var_or_array(const char *varname, const char *value) {
    if (!varname)
        return NULL;

    const char *lbrack = strrchr(varname, '[');
    const char *rbrack = lbrack ? strrchr(varname, ']') : NULL;

    if (lbrack && rbrack && rbrack > lbrack) {
        /* Array-style variable: split name and index */
        size_t name_len  = (size_t)(lbrack - varname);
        size_t index_len = (size_t)(rbrack - lbrack - 1);

        char *name  = (char *)xmalloc(name_len + 1);
        char *index = (char *)xmalloc(index_len + 1);

        memcpy(name, varname, name_len);
        name[name_len] = NULL;

        memcpy(index, lbrack + 1, index_len);
        index[index_len] = NULL;

        /* Find existing variable */
        char *var = (char *)find_variable(name);

        if (!var) {
            /* Auto-create as indexed array if it doesn’t exist */
            var = make_new_array_variable(name);
        }

        /* Bind the array element; Bash will handle all index validation */
        ret = bind_array_variable(var, index, value, 0);

        xfree(name);
        xfree(index);
        xfree(var);
    } else {
        /* Plain scalar variable */
        ret = bind_variable(varname, value, 0);
    }
    xfree(lbrack);
    xfree(rbrack);
    return ret;
}

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
        bind_var_or_array(var_combined, buf_combined, 0);

        if (var_self) {
            char buf_self[64];
            snprintf(buf_self, sizeof(buf_self), "%lld", (long long)micros_self);
            bind_var_or_array(var_self, buf_self, 0);
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
/* ------- timep_crc32 / fnv1a / timep_hash ----------*/
/* ----------------------------- */

/* --- timep_crc32 doc --- */
static char *timep_crc32_doc[] = {
    "",
    "USAGE: timep_crc32 <FILE|-> [<VAR>]",
    "",
    "Compute CRC32 (IEEE) of <FILE>. Use '-' or empty to read from stdin.",
    "",
    "If <VAR> is provided the checksum (8 hex digits) is stored in that variable,",
    "    otherwise it is printed to stdout.",
    "",
    "If both <FILE> and <VAR> are passed as empty (timep_crc32 '' ''),",
    "    initialize tables but do not compute a crc32 hash.",
    NULL
};

/* --- timep_fnv1a doc --- */
static char *timep_fnv1a_doc[] = {
    "",
    "USAGE: timep_fnv1a <file|-> [<VAR>]",
    "",
    "Compute FNV-1a 64-bit hash of <file>. Use '-' or empty to read from stdin.",
    "If <VAR> is provided the checksum (16 hex digits) is stored in that variable,",
    "otherwise it is printed to stdout.",
    NULL
};

/* --- timep_hash doc (crc32-fnv1a combined) --- */
static char *timep_hash_doc[] = {
    "",
    "USAGE: timep_hash <file|-> [<VAR>]",
    "",
    "Compute CRC32 and FNV-1a (64) of <file> and output as: <crc32>-<fnv1a>",
    "Use '-' or empty to read from stdin.",
    "If <VAR> is provided the combined string is stored in that variable,",
    "otherwise it is printed to stdout.",
    "If both <FILE> and <VAR> are passed as empty (timep_hash '' ''),",
    "    initialize tables but do not compute hashes.",
    NULL
};

/* ---------------- CRC32 implementation (HW accel + SW fallback) ---------------- */

/* NB: file includes already contain <cpuid.h>, <nmmintrin.h>, <sys/auxv.h>, <arm_acle.h>, etc. */

/* software table */
#define TIMEP_CRC32_POLY 0xEDB88320UL
static uint32_t timep_crc32_table[256];
static int timep_crc32_table_init_done = 0;

static void timep_crc32_init_table(void)
{
    if (timep_crc32_table_init_done) return;
    for (uint32_t i = 0; i < 256; ++i) {
        uint32_t c = i;
        for (int j = 0; j < 8; ++j)
            c = (c & 1) ? ((c >> 1) ^ TIMEP_CRC32_POLY) : (c >> 1);
        timep_crc32_table[i] = c;
    }
    timep_crc32_table_init_done = 1;
}

/* All impls conform to this API: update incremental CRC.
 * Pass previous crc as `crc` (initially 0). Returns updated crc.
 * The functions themselves handle the internal inversion semantics.
 */
typedef uint32_t (*timep_crc32_fn_t)(uint32_t crc, const unsigned char *buf, size_t len);

/* software incremental */
static uint32_t timep_crc32_sw(uint32_t crc, const unsigned char *buf, size_t len)
{
    if (!timep_crc32_table_init_done) timep_crc32_init_table();

    /* invert at entry, process, invert at exit (works incrementally) */
    crc = ~crc;
    for (size_t i = 0; i < len; ++i)
        crc = timep_crc32_table[(crc ^ buf[i]) & 0xFF] ^ (crc >> 8);
    return ~crc;
}

#if defined(__x86_64__) || defined(__i386__)
/* x86 SSE4.2 accelerated incremental version */
static uint32_t timep_crc32_hw_x86(uint32_t crc, const unsigned char *buf, size_t len)
{
    /* invert initial like software path */
    uint64_t c = ~(uint32_t)crc;
    size_t i = 0;

    /* process leading bytes until 8-byte aligned or buffer end */
    for (; i < len && ((uintptr_t)(buf + i) & 7); ++i) {
        c = (uint32_t)_mm_crc32_u8((uint32_t)c, buf[i]);
    }

    /* process 8-byte chunks safely using memcpy to avoid UB on unaligned platforms */
    for (; i + 8 <= len; i += 8) {
        uint64_t chunk;
        memcpy(&chunk, buf + i, sizeof(chunk));
        c = _mm_crc32_u64(c, chunk);
    }

    /* remaining bytes */
    for (; i < len; ++i) {
        c = (uint32_t)_mm_crc32_u8((uint32_t)c, buf[i]);
    }

    return ~(uint32_t)c;
}
#endif

#if defined(__aarch64__)
/* ARMv8 incremental version (uses __crc32* intrinsics when available) */
static uint32_t timep_crc32_hw_arm(uint32_t crc, const unsigned char *buf, size_t len)
{
    uint32_t c = ~crc;
    size_t i = 0;

#if defined(__ARM_FEATURE_CRC32)
    /* 8-byte chunks not always directly supported by builtin; use 4-byte where available */
    for (; i + 4 <= len; i += 4) {
        uint32_t w;
        memcpy(&w, buf + i, 4);
        c = __crc32w(c, w);
    }
    for (; i < len; ++i)
        c = __crc32b(c, buf[i]);
#else
    /* If intrinsics not available, fallback to software for this chunk */
    for (; i < len; ++i)
        c = timep_crc32_sw(c, buf + i, 1);
#endif

    return ~c;
}
#endif

/* runtime pick (cached) */
static timep_crc32_fn_t timep_crc32_impl = NULL;

static timep_crc32_fn_t timep_pick_crc32_impl(void)
{
#if defined(__x86_64__) || defined(__i386__)
    unsigned int eax, ebx, ecx, edx;
    if (__get_cpuid(1, &eax, &ebx, &ecx, &edx)) {
        /* SSE4.2 is bit 20 of ECX */
        if (ecx & (1u << 20)) {
#ifdef __x86_64__
            return timep_crc32_hw_x86;
#else
            /* in case 32-bit build lacks u64 intrinsic, fall back */
            return timep_crc32_sw;
#endif
        }
    }
#endif

#if defined(__aarch64__)
    unsigned long hwcaps = 0;
#if defined(AT_HWCAP)
    hwcaps = getauxval(AT_HWCAP);
#endif
#ifndef HWCAP_CRC32
#define HWCAP_CRC32 (1 << 7)
#endif
    if (hwcaps & HWCAP_CRC32) {
        return timep_crc32_hw_arm;
    }
#endif

    return timep_crc32_sw;
}

static inline uint32_t timep_crc32_dispatch(uint32_t crc, const unsigned char *buf, size_t len)
{
    if (!timep_crc32_impl)
        timep_crc32_impl = timep_pick_crc32_impl();
    return timep_crc32_impl(crc, buf, len);
}

/* helper to expose init (used by '' '' special-case) */
static void timep_crc32_init(void)
{
    timep_crc32_init_table();
    if (!timep_crc32_impl) timep_crc32_impl = timep_pick_crc32_impl();
}

/* ---------------- FNV-1a 64-bit implementation ---------------- */

#define TIMEP_FNV1A64_OFFSET 14695981039346656037ULL
#define TIMEP_FNV1A64_PRIME  1099511628211ULL

static inline uint64_t timep_fnv1a64_update(uint64_t h, const unsigned char *buf, size_t len)
{
    uint64_t hash = h;
    for (size_t i = 0; i < len; ++i) {
        hash ^= (uint64_t)buf[i];
        hash *= TIMEP_FNV1A64_PRIME;
    }
    return hash;
}

/* ---------------- Common streaming helper ----------------
   Read from filename (or stdin if "-") and in a single pass compute both
   crc32 (incremental) and fnv1a64. Returns 0 on success.
   If filename == "-" uses the same poll/./- heuristic as other builtins.
   If out_crc or out_fnv are NULL, that output is skipped.
*/
static int timep_compute_crc32_and_fnv1a(const char *filename, uint32_t *out_crc, uint64_t *out_fnv, int *used_stdin)
{
    const char *fn = filename ? filename : "-";
    FILE *fp = NULL;
    int using_stdin = 0;

    if (strcmp(fn, "-") == 0) {
        /* init early if needed */
        timep_crc32_init();

        struct pollfd pfd = { .fd = STDIN_FILENO, .events = POLLIN };
        int polres = poll(&pfd, 1, 0);
        if (polres > 0 && (pfd.revents & POLLIN)) {
            fp = stdin;
            using_stdin = 1;
        } else {
            struct stat st;
            if (stat("-", &st) == 0) {
                fp = fopen("-", "rb");
                if (!fp) {
                    builtin_error("timep: failed to open literal file './-'");
                    return EXECUTION_FAILURE;
                }
                using_stdin = 0;
            } else {
                fp = stdin;
                using_stdin = 1;
            }
        }
    } else {
        fp = fopen(fn, "rb");
        if (!fp) {
            builtin_error("timep: failed to open '%s': %s", fn, strerror(errno));
            return EXECUTION_FAILURE;
        }
    }

    const size_t BUF_SZ = 64 * 1024;
    unsigned char *buf = (unsigned char *) xmalloc(BUF_SZ);
    if (!buf) {
        if (!using_stdin) fclose(fp);
        builtin_error("timep: out of memory");
        return EXECUTION_FAILURE;
    }

    uint32_t crc = 0;          /* initial crc state for incremental API */
    uint64_t fnv = TIMEP_FNV1A64_OFFSET;

    size_t nread;
    while ((nread = fread(buf, 1, BUF_SZ, fp)) > 0) {
        crc = timep_crc32_dispatch(crc, buf, nread);
        fnv = timep_fnv1a64_update(fnv, buf, nread);
    }

    if (ferror(fp)) {
        xfree(buf);
        if (!using_stdin) fclose(fp);
        builtin_error("timep: read error: %s", strerror(errno));
        return EXECUTION_FAILURE;
    }

    xfree(buf);
    if (!using_stdin) fclose(fp);

    if (out_crc) *out_crc = crc;
    if (out_fnv) *out_fnv = fnv;
    if (used_stdin) *used_stdin = using_stdin;
    return EXECUTION_SUCCESS;
}

/* ---------------- timep_crc32 builtin ---------------- */

static int timep_crc32_main(int argc, char **argv)
{
    if (argc > 3) {
        builtin_error("timep_crc32: too many arguments");
        return EXECUTION_FAILURE;
    }

    /* init-only special case */
    if (argc == 3 && argv[1][0] == '\0' && argv[2][0] == '\0') {
        timep_crc32_init();
        return EXECUTION_SUCCESS;
    }

    const char *filename = (argc >= 2 && argv[1][0] != '\0') ? argv[1] : "-";
    const char *varname = (argc == 3 && argv[2][0] != '\0') ? argv[2] : NULL;

    uint32_t crc = 0;
    if (timep_compute_crc32_and_fnv1a(filename, &crc, NULL, NULL) != 0)
        return EXECUTION_FAILURE;

    char outbuf[32];
    snprintf(outbuf, sizeof(outbuf), "%08x", (unsigned int)crc);

    if (varname)
        bind_var_or_array((char *)varname, outbuf, 0);
    else
        printf("%s\n", outbuf);

    return EXECUTION_SUCCESS;
}

struct builtin timep_crc32_struct = {
    "timep_crc32",
    timep_builtin,
    BUILTIN_ENABLED,
    timep_crc32_doc,
    "timep_crc32 <file|-> [<VAR>]",
    0
};

/* ---------------- timep_fnv1a builtin ---------------- */

static int timep_fnv1a_main(int argc, char **argv)
{
    if (argc > 3) {
        builtin_error("timep_fnv1a: too many arguments");
        return EXECUTION_FAILURE;
    }

    /* init-only special case */
    if (argc == 3 && argv[1][0] == '\0' && argv[2][0] == '\0') {
        /* ensure FNV state is OK and pre-init crc tables (cheap) */
        timep_crc32_init();
        return EXECUTION_SUCCESS;
    }

    const char *filename = (argc >= 2 && argv[1][0] != '\0') ? argv[1] : "-";
    const char *varname = (argc == 3 && argv[2][0] != '\0') ? argv[2] : NULL;

    uint64_t fnv = TIMEP_FNV1A64_OFFSET;
    if (timep_compute_crc32_and_fnv1a(filename, NULL, &fnv, NULL) != 0)
        return EXECUTION_FAILURE;

    char outbuf[48];
    snprintf(outbuf, sizeof(outbuf), "%016llx", (unsigned long long)fnv);

    if (varname)
        bind_var_or_array((char *)varname, outbuf, 0);
    else
        printf("%s\n", outbuf);

    return EXECUTION_SUCCESS;
}

struct builtin timep_fnv1a_struct = {
    "timep_fnv1a",
    timep_builtin,
    BUILTIN_ENABLED,
    timep_fnv1a_doc,
    "timep_fnv1a <file|-> [<VAR>]",
    0
};

/* ---------------- timep_hash builtin (crc32-fnv1a combined) ---------------- */

static int timep_hash_main(int argc, char **argv)
{
    if (argc > 3) {
        builtin_error("timep_hash: too many arguments");
        return EXECUTION_FAILURE;
    }

    /* init-only special case */
    if (argc == 3 && argv[1][0] == '\0' && argv[2][0] == '\0') {
        timep_crc32_init();
        return EXECUTION_SUCCESS;
    }

    const char *filename = (argc >= 2 && argv[1][0] != '\0') ? argv[1] : "-";
    const char *varname = (argc == 3 && argv[2][0] != '\0') ? argv[2] : NULL;

    uint32_t crc = 0;
    uint64_t fnv = TIMEP_FNV1A64_OFFSET;
    if (timep_compute_crc32_and_fnv1a(filename, &crc, &fnv, NULL) != 0)
        return EXECUTION_FAILURE;

    char outbuf[80];
    snprintf(outbuf, sizeof(outbuf), "%08x-%016llx", (unsigned int)crc, (unsigned long long)fnv);

    if (varname)
        bind_var_or_array((char *)varname, outbuf, 0);
    else
        printf("%s\n", outbuf);

    return EXECUTION_SUCCESS;
}

struct builtin timep_hash_struct = {
    "timep_hash",
    timep_builtin,
    BUILTIN_ENABLED,
    timep_hash_doc,
    "timep_hash <file|-> [<VAR>]",
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
    } else if (strcmp(sub, "timep_hash") == 0) {
        ret = timep_hash_main(argc, argv);
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
    add_builtin(&timep_hash_struct, 1);

    return EXECUTION_SUCCESS;
}

