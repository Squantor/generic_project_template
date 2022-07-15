# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# Version: 202020715

# project settings
NAME := PC_bare

# current makefile base dir relative to Makefile
PROJ_DIR := $(patsubst %/,%,$(dir $(lastword $(MAKEFILE_LIST))))

$(NAME)_TARGET := PC_bare

$(NAME)_LIBS := squantorLibC

# project sources
$(NAME)_FILES := $(PROJ_DIR)/src/main.c

$(NAME)_INCLUDES := -I$(PROJ_DIR)/inc

# --- nothing user definable below ---
PROJECTS += $(NAME)
include $(PROJ_DIR)/PC_bare_rules.mak
