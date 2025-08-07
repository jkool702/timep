// timep.c
// to compile loadable shared librrary file (timep.so): clone bash git tree, cd to bash/examples/loadables, copy "timep.c" to that dir, and run 
// gcc -Wall -fPIC -flto -O3 -v -DSHELL -DLOADABLE_BUILTIN -DHAVE_CONFIG_H -DSELECT_COMMAND -I/usr/include -I/usr/include/bash -I/usr/include/bash/builtins -I/usr/include/bash/include -I. -shared  -o timep.so timep.c
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
#include <errno.h>
#include <time.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>

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
    } else {
        builtin_error("timep: unknown command '%s'", sub);
        ret = EXECUTION_FAILURE;
    }

    xfree(argv);
    return ret;
}

int setup_builtin_timep(void) {
    add_builtin(&getCPUtime_struct, 1);
    return 0;
}

