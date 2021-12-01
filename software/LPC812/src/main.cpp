/*
SPDX-License-Identifier: MIT

Copyright (c) 2021 Bart Bilos
For conditions of distribution and use, see LICENSE file
*/
#include <mcu_ll.h>

#include <board.hpp>

volatile int var;

int main() {
  boardInit();
  while (1) {
    var ^= 0x55;
  }
}
