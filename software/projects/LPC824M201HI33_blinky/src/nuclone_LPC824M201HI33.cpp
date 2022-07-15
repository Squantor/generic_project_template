/*
 * SPDX-License-Identifier: MIT
 *
 * Copyright (c) 2021 Bart Bilos
 * For conditions of distribution and use, see LICENSE file
 */
#include <cortexM/delay_cycles.h>
#include <board.hpp>

void boardInit(void) {
  sysconEnableClocks(SYSCON, CLKCTRL_SWM | CLKCTRL_IOCON | CLKCTRL_GPIO);
  ioconSetupPin(IOCON, IOCON_XTAL_IN, IOCON_MODE(IOCON_MODE_INACTIVE));
  ioconSetupPin(IOCON, IOCON_XTAL_OUT, IOCON_MODE(IOCON_MODE_INACTIVE));
  ioconSetupPin(IOCON, IOCON_LED, IOCON_MODE(IOCON_MODE_INACTIVE));
  swmEnableFixedPin(SWM, SWM_EN0_XTALIN | SWM_EN0_XTALOUT);
  sysconDisableClocks(SYSCON, CLKCTRL_SWM | CLKCTRL_IOCON);

  // setup system clocks
  sysconSysOscControl(SYSCON, SYSOSCCTRL_BYPASS(0) | SYSOSCCTRL_FREQ_1_20MHZ);
  sysconPowerEnable(SYSCON, PDRUNCFG_SYSOSC);
  delay_cycles(1000);
  sysconSysPllClockSelect(SYSCON, SYSPLLCLKSEL_SYSOSC);
  FmcSetFlashAccess(FLASHTIM_30MHZ_CPU);
  sysconPowerDisable(SYSCON, PDRUNCFG_SYSPLL);
  sysconPllControl(SYSCON, 4, SYSPLLCTRL_POSTDIV_4);
  sysconPowerEnable(SYSCON, PDRUNCFG_SYSPLL);
  while (!sysconPllStatus(SYSCON))
    ;
  sysconMainClockDivider(SYSCON, 2);
  sysconMainClockSelect(SYSCON, MAINCLKSEL_PLL_OUT);

  gpioSetPinDIROutput(GPIO, PORT_LED, PIN_LED);
  gpioPinWrite(GPIO, PORT_LED, PIN_LED, 0);
  
  SysTick_Config(CLOCK_AHB / TICKS_PER_S);
}
