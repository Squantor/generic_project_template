# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# settings for the MCU target
#
# Version: 20220911

ifndef $(PROJECT)_MCU
$(error Project MCU is not defined!)
else
MCU := $($(PROJECT)_MCU)
endif
include targets/$(MCU).mak

# valid configurations like debug, release, test, define them here
CONFIGS = debug release_size release_speed

# configuration specific flags
CFLAGS += -std=gnu11 -Wall -Wextra -Wno-main -fno-common -c -ffunction-sections -fdata-sections
CFLAGS_debug += -Og -g3
CFLAGS_release_size += -Os -g -flto
CFLAGS_release_speed += -O2 -g -flto
CXXFLAGS += -std=gnu++20 -Wall -Wextra -Wno-main -fno-common -c -ffunction-sections -fdata-sections -fno-rtti -fno-exceptions
CXXFLAGS_debug += -Og -g3
CXXFLAGS_release_size += -Os -g
CXXFLAGS_release_speed += -O2 -g
ASMFLAGS += -c -x assembler-with-cpp
LDFLAGS +=  -nostdlib -Wl,--gc-sections -Wl,-print-memory-usage -Wl,-Ltargets/ld -flto
DEFINES += -D$(BOARD)
DEFINES_debug += -DDEBUG
DEFINES_release_size += -DNDEBUG
DEFINES_release_speed += -DNDEBUG
TARGET_LIBRARIES := -lgcc
