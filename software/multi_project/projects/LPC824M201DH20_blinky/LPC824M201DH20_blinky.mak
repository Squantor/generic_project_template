# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# Version: 20230704

# current makefile base dir relative to Makefile
PROJ_DIR := $(patsubst %/,%,$(dir $(lastword $(MAKEFILE_LIST))))

# project settings
NAME := LPC824M201DH20_blinky
BOARD := nuclone_LPC824M201DH20
TARGET := MCU
MCU := LPC824M201DH20
DEFINES := 
LIBS := libMcuLL squantorLibC squantorLibEmbedded squantorLibEmbeddedCortexM
FILES := $(PROJ_DIR)/src/main.cpp \
$(PROJ_DIR)/src/$(BOARD).cpp
INCLUDES := -I$(PROJ_DIR)/inc

# --- nothing user definable below ---
PROJECTS += $(NAME)
$(NAME)_PROJECT_ROOT := $(PROJ_DIR)
$(NAME)_TARGET := $(TARGET)
$(NAME)_MCU := $(MCU)
$(NAME)_DEFINES := $(DEFINES)
$(NAME)_LIBS := $(LIBS)
$(NAME)_FILES := $(FILES)
$(NAME)_INCLUDES := $(INCLUDES)
$(NAME)_PREBUILD_SCRIPT := $(PREBUILD_SCRIPT)
$(NAME)_POSTBUILD_SCRIPT := $(POSTBUILD_SCRIPT)

# cleanup project variables
undefine NAME
undefine TARGET
undefine MCU
undefine DEFINES
undefine LIBS
undefine FILES
undefine INCLUDES
undefine PREBUILD_SCRIPT
undefine POSTBUILD_SCRIPT