# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# project settings
#
# Version: 20201220

include squantorLibC/squantorLibC.mk

# project settings
TARGET = PC_bare

# project sources
FILES += $(PROJECT)/src/main.c

INCLUDES += -I$(PROJECT)/inc


