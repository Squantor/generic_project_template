# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# Project specific rules, a few predefined but feel free to add your own
#
# Version: 20210115

# project specific rules
execute: all
	$(EXECUTABLE)

.PHONY: execute

# executed 
pre-build:
	$(U) "executing pre build steps"

.PHONY: pre-build

post-build: main-build
	$(U) "executing post build steps"

.PHONY: post-build


