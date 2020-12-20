/*
 * Copyright (c) 2015, Louis P. Santillan <lpsantil@gmail.com>
 * All rights reserved.
 * See LICENSE for licensing details.
 */

#ifndef __RT0__
#define __RT0__

extern char **__environ; /* pointer to array of char * strings that define the current environment variables */
extern int PC_bare_errno;
extern char _end, _edata, _etext, __executable_start;

void _exit(int r);
//void _exit( int r ) __attribute__((noreturn));

#endif
