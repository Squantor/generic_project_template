# SPDX-License-Identifier: MIT
# Copyright (c) 2022 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# Version: 20230101

# current makefile base dir relative to Makefile
BASE_DIR := $(patsubst %/,%,$(dir $(lastword $(MAKEFILE_LIST))))

# include all libraries
include $(BASE_DIR)/projects/PC_bare/PC_bare.mak
include $(BASE_DIR)/projects/PC/PC.mak
include $(BASE_DIR)/projects/CortexM0/CortexM0.mak
include $(BASE_DIR)/projects/CortexM0plus/CortexM0plus.mak
include $(BASE_DIR)/projects/CortexM3/CortexM3.mak
include $(BASE_DIR)/projects/CortexM4/CortexM4.mak
include $(BASE_DIR)/projects/CortexM7/CortexM7.mak
include $(BASE_DIR)/projects/LPC812M101DH20/LPC812M101DH20.mak
include $(BASE_DIR)/projects/LPC812M101DH20_blinky/LPC812M101DH20_blinky.mak
include $(BASE_DIR)/projects/LPC824M201DH20_blinky/LPC824M201DH20_blinky.mak
include $(BASE_DIR)/projects/LPC824M201HI33/LPC824M201HI33.mak
include $(BASE_DIR)/projects/LPC824M201HI33_blinky/LPC824M201HI33_blinky.mak
include $(BASE_DIR)/projects/LPC844M201BD64/LPC844M201BD64.mak
include $(BASE_DIR)/projects/LPC845M301BD48/LPC845M301BD48.mak
include $(BASE_DIR)/projects/LPC845M301BD48_blinky/LPC845M301BD48_blinky.mak
include $(BASE_DIR)/projects/LPC1114BD48_323/LPC1114BD48_323.mak
include $(BASE_DIR)/projects/LPC1125BD48_303/LPC1125BD48_303.mak
include $(BASE_DIR)/projects/STM32F030K6_blinky/STM32F030K6_blinky.mak
include $(BASE_DIR)/projects/STM32F031K6_blinky/STM32F031K6_blinky.mak
include $(BASE_DIR)/projects/RP2040_blinky/RP2040_blinky.mak
