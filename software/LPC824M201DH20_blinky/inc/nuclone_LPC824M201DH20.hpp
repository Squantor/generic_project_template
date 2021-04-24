/*
SPDX-License-Identifier: MIT

Copyright (c) 2021 Bart Bilos
For conditions of distribution and use, see LICENSE file
*/
#ifndef BOARD_HPP
#define BOARD_HPP

#define CLOCK_MAIN_SOURCE   SYSCTL_MAINCLKSRC_PLLOUT

#define CLOCK_XTAL          (12000000u)
#define CLOCK_EXT_IN        (0u)
#define CLOCK_CPU           (30000000u)
#define CLOCK_AHB           (30000000u)
#define CLOCK_MAIN          (60000000u)

#define IOCON_XTAL_IN       IOCON_PIO8
#define IOCON_XTAL_OUT      IOCON_PIO9

#define IOCON_LED           IOCON_PIO23
#define PIN_LED             (23u)

#define TICKS_PER_S         4

void boardInit(void);

#endif
