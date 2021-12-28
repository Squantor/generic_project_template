/*
SPDX-License-Identifier: MIT

Copyright (c) 2021 Bart Bilos
For conditions of distribution and use, see LICENSE file
*/
#include <board.hpp>

void boardInit(void) {
  rccEnableClocks(RCC, APB1_CLK_None, APB2_CLK_None,
                  AHB_CLK_FLITF | AHB_CLK_SRAM | AHB_CLK_IOPA);
  GPIOA->MODER = 0x28000001;

  SysTick_Config(CLOCK_APB / TICKS_PER_S);
}
