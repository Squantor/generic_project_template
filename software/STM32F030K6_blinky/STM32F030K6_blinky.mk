# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# project settings
#
# Version: 20200625

# project settings
MCU = STM32F030K6
TARGET = MCU
BOARD = nuclone_STM32F030K6

# project sources
FILES += $(PROJECT)/src/main.cpp \
$(PROJECT)/src/$(BOARD).cpp

INCLUDES += -IlibMcuLL/inc -I$(PROJECT)/inc


