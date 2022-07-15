# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# Version: 202020715

# project settings
NAME := PC_bare

# current makefile base dir relative to Makefile
BASE_DIR := $(patsubst %/,%,$(dir $(lastword $(MAKEFILE_LIST))))

$(NAME)_TARGET := PC_bare

$(NAME)_LIBS := squantorLibC

# project sources
$(NAME)_FILES += $(BASE_DIR)/src/main.c

$(NAME)_INCLUDES += -I$(BASE_DIR)/inc

# --- nothing user definable below ---
PROJECTS += $(NAME)
$(NAME)_PROJECT_ROOT := $(BASE_DIR)
include $(BASE_DIR)/PC_bare_rules.mak
