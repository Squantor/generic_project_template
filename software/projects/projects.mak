# SPDX-License-Identifier: MIT
# Copyright (c) 2022 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# Version: 20220715

# current makefile base dir relative to Makefile
PROJECTS_DIR := $(patsubst %/,%,$(dir $(lastword $(MAKEFILE_LIST))))

# include all libraries
include $(PROJECTS_DIR)/PC_bare/PC_bare.mak
include $(PROJECTS_DIR)/PC/PC.mak
include $(PROJECTS_DIR)/CortexM0/CortexM0.mak
include $(PROJECTS_DIR)/CortexM0plus/CortexM0plus.mak
include $(PROJECTS_DIR)/CortexM3/CortexM3.mak
include $(PROJECTS_DIR)/CortexM4/CortexM4.mak
include $(PROJECTS_DIR)/CortexM7/CortexM7.mak
include $(PROJECTS_DIR)/LPC812M101DH20/LPC812M101DH20.mak
include $(PROJECTS_DIR)/LPC812M101DH20_blinky/LPC812M101DH20_blinky.mak
include $(PROJECTS_DIR)/LPC824M201DH20_blinky/LPC824M201DH20_blinky.mak
include $(PROJECTS_DIR)/LPC824M201HI33/LPC824M201HI33.mak
include $(PROJECTS_DIR)/LPC824M201HI33_blinky/LPC824M201HI33_blinky.mak
include $(PROJECTS_DIR)/LPC844M201BD64/LPC844M201BD64.mak
include $(PROJECTS_DIR)/LPC845M301BD48/LPC845M301BD48.mak
include $(PROJECTS_DIR)/LPC845M301BD48_blinky/LPC845M301BD48_blinky.mak
include $(PROJECTS_DIR)/LPC1114BD48_323/LPC1114BD48_323.mak
include $(PROJECTS_DIR)/LPC1125BD48_303/LPC1125BD48_303.mak
include $(PROJECTS_DIR)/STM32F030K6_blinky/STM32F030K6_blinky.mak
include $(PROJECTS_DIR)/STM32F031K6_blinky/STM32F031K6_blinky.mak