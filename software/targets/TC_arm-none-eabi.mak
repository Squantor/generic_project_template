# SPDX-License-Identifier: MIT
# Copyright (c) 2022 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# Toolchain definitions for ARM
#
# Version: 20220909

# Tool settings
MAKE := make
MKDIR := mkdir
RM := rm
TOOLCHAIN_PREFIX := arm-none-eabi-
C_COMPILER := gcc
CXX_COMPILER := g++
GDB := gdb
SIZE := size
AR := gcc-ar
OBJDUMP := objdump
OBJCOPY := objcopy
TOUCH := touch