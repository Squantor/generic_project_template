/*
SPDX-License-Identifier: MIT

Copyright (c) 2021 Bart Bilos
For conditions of distribution and use, see LICENSE file
*/

/* UM10601 Ch.2 p.9 */
MEMORY
{
    rom   :   ORIGIN = 0x08000000, LENGTH = 32K
    ram   :   ORIGIN = 0x20000000, LENGTH = 4K
}

/* Include main link script. Note: it will be searched in -L paths. */
INCLUDE linkscript.ld
