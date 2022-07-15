# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# Version: 202020715

# project settings
NAME := LPC812M101DH20_empty

#additional library includes
include libMcuLL/libMcuLL.mk

# project settings
MCU = LPC812M101DH20
TARGET = MCU
BOARD = dummy_board

# project sources
FILES += $(PROJECT)/src/main.cpp \
$(PROJECT)/src/$(BOARD).cpp

INCLUDES += -I$(PROJECT)/inc
