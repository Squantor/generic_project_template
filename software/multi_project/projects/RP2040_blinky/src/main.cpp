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
#include <generic_board.hpp>

volatile unsigned int systicks = 0;

extern "C" {
void SysTick_Handler(void) {
  systicks = systicks + 1;
  sioGpioOutXor(SIO, LED_MASK);
}
}

__attribute__((noinline, section(".ramfunc"))) void delay_cycles(uint32_t cycles) {
  cycles /= 4;

  asm volatile(
    "1: sub %[cycles], %[cycles], #1 \n"
    "   nop \n"
    "   bne 1b \n"
    : [cycles] "+l"(cycles));
}

int main() {
  boardInit();
  while (1) {
    delay_cycles(10);
    __NOP();
  }
}
