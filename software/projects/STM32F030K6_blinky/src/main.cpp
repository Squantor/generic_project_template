/*
SPDX-License-Identifier: MIT

Copyright (c) 2021 Bart Bilos
For conditions of distribution and use, see LICENSE file
*/
#include <board.hpp>

extern "C" {
void SysTick_Handler(void) { GPIOA->ODR = GPIOA->ODR ^ 0x01; }
}

int main() {
  boardInit();
  while (1) {
    __NOP();
  }
}
