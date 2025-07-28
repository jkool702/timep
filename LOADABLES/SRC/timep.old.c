// timep.c
// timep.so
// gcc -Wall -fPIC -flto -O3 -v -DSHELL -DLOADABLE_BUILTIN -I/usr/include -I/usr/include/bash -I/usr/include/bash/builtins -I/usr/include/bash/include -I. -shared  -c timep.c -o timep.so

// Enable GNU extensions 
#ifndef _GNU_SOURCE
#define _GNU_SOURCE
#endif

// System headers
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include <errno.h>
#include <sys/eventfd.h>
#include <sys/time.h>
#include <sys/resource.h>
#include <dirent.h>
#include <ctype.h>
#include <sys/sendfile.h>
#include <poll.h>
#include <limits.h>
#include <sys/mman.h>
#include <inttypes.h>
#include <time.h>

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
extern int add_builtin(struct builtin * bp, int keep);
extern char ** make_builtin_argv();

// define function prototypes
static int timep_builtin(WORD_LIST * list);
static int clock_gettime_main(int argc, char ** argv);

/* -------------------------------------------------- */
/* clock_gettime builtin                              */
/* -------------------------------------------------- */

static char * clock_gettime_doc[] = {
    "",
    "USAGE: clock_gettime [<VAR>]",
    "",
    "Return high-resolution CPU time used by the current process.",
    "If an argument is passed, use it as the name of a Bash variable to assign the result.",
    "Otherwise, prints the result to stdout.",
    NULL
};

static int clock_gettime_main(int argc, char ** argv) {
    if (argc > 2) {
        builtin_error("clock_gettime: too many arguments");
        return EXECUTION_FAILURE;
    }
    char * varname = NULL;
    if (argc == 2 && argv[1][0] != '\0') {
        varname = argv[1];
    }
	
#if defined(CLOCK_PROCESS_CPUTIME_ID)
    struct timespec ts;
    if (clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &ts) != 0) {
        builtin_error("clock_gettime failed: %s", strerror(errno));
        xfree(argv);
        return EXECUTION_FAILURE;
    }

    // Calculate microseconds
    int64_t micros = ts.tv_sec * 1000000LL + ts.tv_nsec / 1000;
	
    if (varname) {
        char buf_micros[32];
        snprintf(buf_micros, sizeof(buf_micros), "%lld", (long long) micros);
        bind_variable(varname, buf_micros, 0);
    } else {
        printf("%lld\n", (long long) micros);
    }
    return EXECUTION_SUCCESS;
	
#else
    builtin_error("clock_gettime is not supported on this system.");
    xfree(argv);
    return EXECUTION_FAILURE;
#endif
}

struct builtin clock_gettime_struct = {
    "clock_gettime",
    timep_builtin,
    BUILTIN_ENABLED,
    clock_gettime_doc,
    "clock_gettime [<VAR>]",
    0
};

/* -------------------------------------------------- */
/* Register all builtins  (under timep)                  */
/* -------------------------------------------------- */

static int timep_builtin(WORD_LIST * list) {
    int argc;
    char ** argv = make_builtin_argv(list, & argc);

    char * sub = argv[0];

    int ret;
    if (strcmp(sub, "clock_gettime") == 0) {
        ret = clock_gettime_main(argc, argv);
    } else {
        builtin_error("timep: unknown command '%s'", sub);
        ret = EXECUTION_FAILURE;
    }

    xfree(argv);
    return ret;
}

int setup_builtin_timep(void) {
    add_builtin(&clock_gettime_struct, 1);
    return 0;
}
