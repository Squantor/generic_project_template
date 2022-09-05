# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# Version: 20220905

# project settings
NAME := LPC845M301BD48_blinky
BOARD := nuclone_LPC845M301BD48
$(NAME)_TARGET := MCU
$(NAME)_MCU := LPC845M301BD48

$(NAME)_LIBS := libMcuLL squantorLibC squantorLibEmbedded squantorLibEmbeddedCortexM

# current makefile base dir relative to Makefile
PROJ_DIR := $(patsubst %/,%,$(dir $(lastword $(MAKEFILE_LIST))))

# project sources
$(NAME)_FILES := $(PROJ_DIR)/src/main.cpp \
$(PROJ_DIR)/src/$(BOARD).cpp

$(NAME)_INCLUDES := -I$(PROJ_DIR)/inc

$(NAME)-pre-build:
	@echo $(PROJECT) pre build step

.PHONY: $(PROJECT)-pre-build

$(NAME)-post-build:
	@echo $(PROJECT) post build step

.PHONY: $(PROJECT)-post-build

# --- nothing user definable below ---
PROJECTS += $(NAME)
$(NAME)_PROJECT_ROOT := $(PROJ_DIR)
$(NAME)_BOARD := $(BOARD)
