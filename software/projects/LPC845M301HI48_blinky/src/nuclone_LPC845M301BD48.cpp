/*
 * SPDX-License-Identifier: MIT
 *
 * Copyright (c) 2021 Bart Bilos
 * For conditions of distribution and use, see LICENSE file
 */
#include <cortexM/delay_cycles.h>
#include <nuclone_LPC845M301BD48.hpp>

void boardInit(void) {
  sysconEnableClocks(SYSCON, CLKCTRL0_IOCON | CLKCTRL0_GPIO0 | CLKCTRL0_SWM, CLKCTRL1_NONE);

  ioconSetupPin(IOCON, IOCON_LED, IOCON_MODE(IOCON_MODE_INACTIVE));
  ioconSetupPin(IOCON, IOCON_XTAL_IN, IOCON_MODE(IOCON_MODE_INACTIVE));
  ioconSetupPin(IOCON, IOCON_XTAL_OUT, IOCON_MODE(IOCON_MODE_INACTIVE));
  swmEnableFixedPin(SWM, SWM_EN0_XTALIN | SWM_EN0_XTALOUT, SWM_EN1_NONE);

  sysconSysOscControl(SYSCON, SYSOSCCTRL_FREQ_1_20MHZ);
  sysconPowerEnable(SYSCON, PDRUNCFG_SYSOSC);
  delay_cycles(1000);
  sysconExternalClockSelect(SYSCON, EXTCLKSEL_SYSOSC);
  sysconSysPllClockSelect(SYSCON, SYSPLLCLKSEL_EXTCLK);
  FlashControlFlashClocks(FLASHTIM_2_CLOCKS);
  sysconPowerDisable(SYSCON, PDRUNCFG_SYSPLL);
  sysconPllControl(SYSCON, 4, SYSPLLCTRL_POSTDIV_4);
  sysconPowerEnable(SYSCON, PDRUNCFG_SYSPLL);
  while (sysconPllStatus(SYSCON) == 0)
    ;
  sysconMainClockDivider(SYSCON, 2);
  sysconMainClockPllSelect(SYSCON, MAINCLKPLLSEL_SYSPLL);

  gpioSetPinDIROutput(GPIO, PORT_LED, PIN_LED);
  gpioPinWrite(GPIO, PORT_LED, PIN_LED, 0);

  SysTick_Config(CLOCK_AHB / TICKS_PER_S);

  sysconDisableClocks(SYSCON, CLKCTRL0_SWM, CLKCTRL1_NONE);
}
