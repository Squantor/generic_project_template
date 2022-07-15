# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# Version: 20220715

# variables used in settings
BASE := $(patsubst %/,%,$(dir $(lastword $(MAKEFILE_LIST))))

# include all libraries
include $(BASE)/../squantorLibC/squantorLibC.mak


# --- nothing user definable below ---