/*
 * SPDX-License-Identifier: MIT
 *
 * Copyright (c) 2021 Bart Bilos
 * For conditions of distribution and use, see LICENSE file
 */

#ifndef __RT0__
#define __RT0__

extern char **__environ; /**< pointer to array of char * strings that are the current environment variables */
extern int PC_bare_errno; /**< Error value */
extern char _end, _edata, _etext, __executable_start; /**< section starts/ends */

void _exit(int r);
//void _exit( int r ) __attribute__((noreturn));

#endif
