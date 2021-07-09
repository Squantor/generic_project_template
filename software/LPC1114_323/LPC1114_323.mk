# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# project settings
#
# Version: 20210113

#additional library includes
include squantorLibC/squantorLibC.mk
include squantorLibEmbedded/squantorLibEmbedded.mk

# project settings
MCU = LPC1114BD48_323
TARGET = MCU
BOARD = dummy_board

# project sources
FILES += $(PROJECT)/src/main.cpp \
$(PROJECT)/src/$(BOARD).cpp

INCLUDES += -IlibMcuLL/inc -I$(PROJECT)/inc


