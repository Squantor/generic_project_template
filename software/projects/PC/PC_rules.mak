# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

# Project specific rules with a few predefined, extend as needed
#
# Version: 20220715

# always executed by build engine
pre-build:
	@echo executing pre build steps

.PHONY: pre-build

post-build: main-build generate-diassembly
	@echo executing post build steps

.PHONY: post-build

DATESTRING := $(shell date +%Y%m%d%H%M%S)

# generate disassembly of currently built executable
generate-diassembly: $(EXECUTABLE) $(PROJ_DIR)/disassemblies/build-tag
	$(C)$(TOOLCHAIN_PREFIX)$(OBJDUMP) -h --no-show-raw-insn --no-addresses -S "$(EXECUTABLE)" > "$(PROJ_DIR)/disassemblies/$(PROJECT)_$(DATESTRING).lss"

.PHONY: generate-diassembly

$(PROJ_DIR)/disassemblies/build-tag: 
	$(C)$(MKDIR) -p $(PROJ_DIR)/disassemblies
	$(C)$(TOUCH) $@