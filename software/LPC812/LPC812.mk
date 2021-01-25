# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# project settings
#
# Version: 20201220

# project settings
MCU = LPC812M101DH20
TARGET = MCU
BOARD = dummy_board

# project sources
FILES += $(PROJECT)/src/main.cpp \
$(PROJECT)/src/$(BOARD).cpp

INCLUDES += -IlibMcuLL/inc -I$(PROJECT)/inc


