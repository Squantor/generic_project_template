# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# settings for the LPC824 Microcontroller
#
# Version: 20201220

# import compiler settings for the core in this microcontroller
include targets/core_CortexM0plus.mk

# Specific C files and linker scripts
FILES += targets/src/LPC824.cpp targets/src/startup_LPC82X.cpp \
targets/src/LPC82X_aeabi_romdiv_patch.s
DEFINES += -DMCU_$(MCU)
LDSCRIPT = -T"targets/ld/LPC824.ld"

