# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# Version: 20230101

# current makefile base dir relative to Makefile
PROJ_DIR := $(patsubst %/,%,$(dir $(lastword $(MAKEFILE_LIST))))

# project settings
NAME := PC_bare
$(NAME)_TARGET := PC_bare
$(NAME)_LIBS := squantorLibC
$(NAME)_DEFINES := 
$(NAME)_FILES := $(PROJ_DIR)/src/main.c
$(NAME)_INCLUDES := -I$(PROJ_DIR)/inc

# --- nothing user definable below ---
PROJECTS += $(NAME)
$(NAME)_PROJECT_ROOT := $(PROJ_DIR)