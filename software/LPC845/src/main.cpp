/*
 * SPDX-License-Identifier: MIT
 *
 * Copyright (c) 2021 Bart Bilos
 * For conditions of distribution and use, see LICENSE file
 */
/*
 * This is simple example file which does do any I/O and thus
 * can be compiled and run on any Cortex-M MCU. However, to see
 * its effect, you'll need to use debugger.
 */
#include <board.hpp>
//#include <mcu_ll.h>

volatile int var;

int main()
{
    boardInit();
    while (1) {
        var ^= 0x55;
    }
}
