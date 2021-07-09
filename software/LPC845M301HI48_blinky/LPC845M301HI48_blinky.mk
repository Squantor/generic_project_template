# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# project settings
#
# Version: 20210116

#additional library includes
include libMcuLL/libMcuLL.mk
include squantorLibC/squantorLibC.mk
include squantorLibEmbedded/squantorLibEmbedded.mk

# project settings
MCU = LPC845M301BD48
TARGET = MCU
BOARD = nuclone_LPC845M301BD48

# project sources
FILES += $(PROJECT)/src/main.cpp \
$(PROJECT)/src/$(BOARD).cpp

INCLUDES += -I$(PROJECT)/inc


