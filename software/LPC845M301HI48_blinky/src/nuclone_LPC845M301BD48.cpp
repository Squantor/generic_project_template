/*
 * SPDX-License-Identifier: MIT
 *
 * Copyright (c) 2021 Bart Bilos
 * For conditions of distribution and use, see LICENSE file
 */
#include <nuclone_LPC845M301BD48.hpp>

void crudeDelay(uint32_t iterations) {
  for (uint32_t i = iterations; i > 0; i--) {
    __NOP();
    __NOP();
    __NOP();
    __NOP();
    __NOP();
    __NOP();
    __NOP();
    __NOP();
  }
}

void boardInit(void) {
  sysconEnableClocks(SYSCON, CLKCTRL0_IOCON | CLKCTRL0_GPIO0 | CLKCTRL0_SWM,
                     CLKCTRL1_NONE);
  ioconSetupPin(IOCON, IOCON_LED, IOCON_MODE_INACTIVE);
  // setup crystal oscillator and PLL to run core at 30MHz
  ioconSetupPin(IOCON, IOCON_XTAL_IN, IOCON_MODE_INACTIVE);
  ioconSetupPin(IOCON, IOCON_XTAL_OUT, IOCON_MODE_INACTIVE);
  swmEnableFixedPin(SWM0, SWM_EN0_XTALIN | SWM_EN0_XTALOUT, SWM_EN1_NONE);
  sysconSysOscControl(SYSCON, SYSOSCCTRL_FREQ_1_20MHZ);
  sysconPowerEnable(SYSCON, PDRUNCFG_SYSOSC);
  crudeDelay(6000);
  sysconExternalClockSelect(SYSCON, EXTCLKSEL_SYSOSC);
  sysconSysPllClockSelect(SYSCON, SYSPLLCLKSEL_EXTCLK);
  FlashControlFlashClocks(FLASHTIM_2_CLOCKS);
  sysconPowerDisable(SYSCON, PDRUNCFG_SYSPLL);
  // setup PLL for 60MHz output
  sysconPllControl(SYSCON, 4, SYSPLLCTRL_POSTDIV_4);
  sysconPowerEnable(SYSCON, PDRUNCFG_SYSPLL);
  while (sysconPllStatus(SYSCON) == 0)
    ;
  // divide 60MHz from Pll to 30MHz for the CPU
  sysconMainClockDivider(SYSCON, 2);
  sysconMainClockPllSelect(SYSCON, MAINCLKPLLSEL_SYSPLL);
  gpioSetPinDIROutput(GPIO, PORT_LED, PIN_LED);
  gpioPinWrite(GPIO, PORT_LED, PIN_LED, 0);
  // disable all unneeded clocks
  sysconDisableClocks(SYSCON, CLKCTRL0_SWM, CLKCTRL1_NONE);
  // setup systick
  SysTick_Config(CLOCK_AHB / TICKS_PER_S);
}
