# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# Version: 202020715

# project settings
NAME := applicationA

TARGET := PC_bare

# get base path
BASE := $(patsubst %/,%,$(dir $(lastword $(MAKEFILE_LIST))))

$(NAME)_LIBS := squantorLibC

# project sources
$(NAME)_FILES += $(BASE)/src/main.c

$(NAME)_INCLUDES += -I$(BASE)/inc


