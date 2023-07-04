/*
SPDX-License-Identifier: MIT

Copyright (c) 2021 Bart Bilos
For conditions of distribution and use, see LICENSE file
*/
#ifndef NUCLONE_LPC824M201DH20_HPP
#define NUCLONE_LPC824M201DH20_HPP

#define CLOCK_MAIN_SOURCE SYSCTL_MAINCLKSRC_PLLOUT

#define CLOCK_XTAL (12000000u)
#define CLOCK_EXT_IN (0u)
#define CLOCK_CPU (30000000u)
#define CLOCK_AHB (30000000u)
#define CLOCK_MAIN (60000000u)

#define IOCON_XTAL_IN IOCON_PIO0_8
#define IOCON_XTAL_OUT IOCON_PIO0_9

#define IOCON_LED IOCON_PIO0_13
#define PORT_LED GPIO_PORT0
#define PIN_LED (13u)

#define TICKS_PER_S 4

void boardInit(void);

#endif