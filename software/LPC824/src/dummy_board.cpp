/*
SPDX-License-Identifier: MIT

Copyright (c) 2021 Bart Bilos
For conditions of distribution and use, see LICENSE file
*/
#include <board.hpp>
#include <mcu_ll.h>


void boardInit(void)
{
    // setup system clocks
    ClockSetPLLBypass(false, false);
    //SysctlPowerUp(SYSCTL_SLPWAKE_SYSOSC_PD);
    ClockSetSystemPLLSource(SYSCTL_PLLCLKSRC_IRC);
    //ClockSetSystemPLLSource(SYSCTL_PLLCLKSRC_SYSOSC);
    FmcSetFlashAccess(FLASHTIM_30MHZ_CPU);
    SysctlPowerDown(SYSCTL_SLPWAKE_SYSPLL_PD);
    ClockSetupSystemPLL(4, 1);
    SysctlPowerUp(SYSCTL_SLPWAKE_SYSPLL_PD);
    while (!ClockIsSystemPLLLocked());
    ClockSetSysClockDiv(2);
    ClockSetMainClockSource(SYSCTL_MAINCLKSRC_PLLOUT);
}
