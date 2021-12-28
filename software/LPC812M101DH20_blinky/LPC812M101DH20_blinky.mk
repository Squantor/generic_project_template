# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# project settings
#
# Version: 20210113

# includes of additional libraries
include libMcuLL/libMcuLL.mk
include squantorLibC/squantorLibC.mk
include squantorLibEmbedded/squantorLibEmbedded.mk

# project settings
MCU = LPC812M101DH20
TARGET = MCU
BOARD ?= nuclone_LPC812M101DH20

# project sources
FILES +=  $(PROJECT)/src/main.cpp \
$(PROJECT)/src/$(BOARD).cpp \


LIBS +=
INCLUDES += -I$(PROJECT)/inc

