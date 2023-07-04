/*
SPDX-License-Identifier: MIT

Copyright (c) 2021 Bart Bilos
For conditions of distribution and use, see LICENSE file
*/
#ifndef NUCLONE_STM32F030K6_HPP
#define NUCLONE_STM32F030K6_HPP

#define CLOCK_XTAL (8000000u) /*!< Crystal frequency */
#define CLOCK_AHB1 (8000000u) /*!< AHB1 frequency */
#define CLOCK_AHB2 (8000000u) /*!< AHB2 frequency */
#define CLOCK_APB (8000000u)  /*!< APB frequency */
#define CLOCK_HCLK (8000000u) /*!< core clock */

// PA0 is led pin

#define TICKS_PER_S 2

void boardInit(void);

#endif