# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# settings for the PC target
#
# Version: 20200426

# Tool settings
MAKE := make
MKDIR := mkdir
RM := rm
TOOLCHAIN_PREFIX := 
C_COMPILER := gcc
CXX_COMPILER := g++
GDB := gdb
SIZE := size
AR := ar
OBJDUMP := objdump
OBJCOPY := objcopy
TOUCH := touch

# valid configurations like debug, release test, etcetera
CONFIGS = debug release

#default flags
CFLAGS = -std=gnu11 -Wall -Wextra -c
CFLAGS_debug = -O0 -g3
CFLAGS_release = -O2 -g
CXXFLAGS = -std=c++17 -Wall -Wextra -c
CXXFLAGS_debug = -O0 -g3
CXXFLAGS_release = -O2 -g
ASMFLAGS = -c -x assembler-with-cpp
LDFLAGS +=
DEFINES_release += -DNDEBUG
DEFINES_debug += -DDEBUG
DEFINES +=
