# SPDX-License-Identifier: MIT
# Copyright (c) 2021 Bart Bilos
# For conditions of distribution and use, see LICENSE file

#
# Version: 20220722

# various utilities present here

# generate disassembly of currently built executable
generate-disassembly: $(EXECUTABLE) $(PROJ_DIR)/disassemblies/build-tag
	$(C)$(TOOLCHAIN_PREFIX)$(OBJDUMP) -h --no-show-raw-insn --no-addresses -S "$(EXECUTABLE)" > "$(PROJ_DIR)/disassemblies/$(PROJECT)_$(DATESTRING).lss"

.PHONY: generate-disassembly

$(PROJ_DIR)/disassemblies/build-tag: 
	$(C)$(MKDIR) -p $(PROJ_DIR)/disassemblies
	$(C)$(TOUCH) $@

#project hardware specific commands
gdbbmp: all
	$(TOOLCHAIN_PREFIX)$(GDB) -x ./gdb_scripts/$(PROJECT)_$(CONFIG).txt
.PHONY: gdbbmp

tpwrdisable:
	$(TOOLCHAIN_PREFIX)$(GDB) -x ./gdb_scripts/bmp_tpwr_disable.txt
.PHONY: tpwrdisable

tpwrenable:
	$(TOOLCHAIN_PREFIX)$(GDB) -x ./gdb_scripts/bmp_tpwr_enable.txt
.PHONY: tpwrenable

projects:
	@echo available projects: $(PROJECTS)
.PHONY: projects

libraries:
	@echo available libraries: $(LIBRARIES)
.PHONY: libraries