# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# Version: 20230101

# current makefile base dir relative to Makefile
PROJ_DIR := $(patsubst %/,%,$(dir $(lastword $(MAKEFILE_LIST))))

# project settings
NAME := LPC845M301BD48_blinky
BOARD := nuclone_LPC845M301BD48
$(NAME)_TARGET := MCU
$(NAME)_MCU := LPC845M301BD48
$(NAME)_DEFINES := 
$(NAME)_LIBS := libMcuLL squantorLibC squantorLibEmbedded squantorLibEmbeddedCortexM
$(NAME)_FILES := $(PROJ_DIR)/src/main.cpp \
$(PROJ_DIR)/src/$(BOARD).cpp
$(NAME)_INCLUDES := -I$(PROJ_DIR)/inc

# --- nothing user definable below ---
PROJECTS += $(NAME)
$(NAME)_PROJECT_ROOT := $(PROJ_DIR)
$(NAME)_BOARD := $(BOARD)
$(NAME)_DEFINES += -D$(BOARD)