/*
 * SPDX-License-Identifier: MIT
 *
 * Copyright (c) 2021 Bart Bilos
 * For conditions of distribution and use, see LICENSE file
 */
/*
 * Simple example blink program for the Nuclone LPC824M201DH20.
 * Using 12MHz Crystal + PLL as the clock source with systick.
 */
#include <board.hpp>
#include <mcu_ll.h>

volatile int var;

extern "C" {
void SysTick_Handler(void) {
  gpioPortToggle(GPIO, PORT_LED, 1 << PIN_LED);
}
}

int main() {
  boardInit();
  while (1) {
    var = var ^ 0x55;
  }
}
