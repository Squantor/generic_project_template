# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

#
# Version: 20220715

# various utilities present here

# generate disassembly of currently built executable
generate-disassembly: $(EXECUTABLE) $(PROJ_DIR)/disassemblies/build-tag
	$(C)$(TOOLCHAIN_PREFIX)$(OBJDUMP) -h --no-show-raw-insn --no-addresses -S "$(EXECUTABLE)" > "$(PROJ_DIR)/disassemblies/$(PROJECT)_$(DATESTRING).lss"

.PHONY: generate-disassembly

$(PROJ_DIR)/disassemblies/build-tag: 
	$(C)$(MKDIR) -p $(PROJ_DIR)/disassemblies
	$(C)$(TOUCH) $@