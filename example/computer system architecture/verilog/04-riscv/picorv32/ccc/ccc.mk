
RISCV_GNU_TOOLCHAIN_GIT_REVISION = 411d134
RISCV_GNU_TOOLCHAIN_INSTALL_PREFIX = /opt/riscv32

# Give the user some easy overrides for local configuration quirks.
# If you change one of these and it breaks, then you get to keep both pieces.
SHELL = bash
# PYTHON = python3
PYTHON = python
VERILATOR = verilator
ICARUS_SUFFIX =
IVERILOG = iverilog$(ICARUS_SUFFIX)
VVP = vvp$(ICARUS_SUFFIX)

TEST_OBJS = $(addsuffix .o,$(basename $(wildcard tests/*.S)))
# FIRMWARE_OBJS = firmware/start.o firmware/irq.o firmware/print.o firmware/hello.o firmware/sieve.o firmware/multest.o firmware/stats.o
FIRMWARE_OBJS = firmware/start.o firmware/irq.o firmware/print.o firmware/hello.o firmware/sieve.o firmware/stats.o # 去掉 firmware/multest.o (因為有錯 undefined reference to `__divdi3) 
GCC_WARNS  = -Werror -Wall -Wextra -Wshadow -Wundef -Wpointer-arith -Wcast-qual -Wcast-align -Wwrite-strings
GCC_WARNS += -Wredundant-decls -Wstrict-prototypes -Wmissing-prototypes -pedantic # -Wconversion
# TOOLCHAIN_PREFIX = $(RISCV_GNU_TOOLCHAIN_INSTALL_PREFIX)i/bin/riscv32-unknown-elf-
TOOLCHAIN_PREFIX = riscv64-unknown-elf-
COMPRESSED_ISA = C

# Add things like "export http_proxy=... https_proxy=..." here
GIT_ENV = true

test: testbench.vvp firmware/firmware.hex
	$(VVP) -N $<

test_vcd: testbench.vvp firmware/firmware.hex
	$(VVP) -N $< +vcd +trace +noerror

test_rvf: testbench_rvf.vvp firmware/firmware.hex
	$(VVP) -N $< +vcd +trace +noerror

test_wb: testbench_wb.vvp firmware/firmware.hex
	$(VVP) -N $<

test_wb_vcd: testbench_wb.vvp firmware/firmware.hex
	$(VVP) -N $< +vcd +trace +noerror

test_ez: testbench_ez.vvp
	$(VVP) -N $<

test_ez_vcd: testbench_ez.vvp
	$(VVP) -N $< +vcd

test_sp: testbench_sp.vvp firmware/firmware.hex
	$(VVP) -N $<

test_axi: testbench.vvp firmware/firmware.hex
	$(VVP) -N $< +axi_test

test_synth: testbench_synth.vvp firmware/firmware.hex
	$(VVP) -N $<

test_verilator: testbench_verilator firmware/firmware.hex
	./testbench_verilator

testbench.vvp: testbench.v picorv32.v
	$(IVERILOG) -o $@ $(subst C,-DCOMPRESSED_ISA,$(COMPRESSED_ISA)) $^
	chmod -x $@

testbench_rvf.vvp: testbench.v picorv32.v rvfimon.v
	$(IVERILOG) -o $@ -D RISCV_FORMAL $(subst C,-DCOMPRESSED_ISA,$(COMPRESSED_ISA)) $^
	chmod -x $@

testbench_wb.vvp: testbench_wb.v picorv32.v
	$(IVERILOG) -o $@ $(subst C,-DCOMPRESSED_ISA,$(COMPRESSED_ISA)) $^
	chmod -x $@

testbench_ez.vvp: testbench_ez.v picorv32.v
	$(IVERILOG) -o $@ $(subst C,-DCOMPRESSED_ISA,$(COMPRESSED_ISA)) $^
	chmod -x $@

testbench_sp.vvp: testbench.v picorv32.v
	$(IVERILOG) -o $@ $(subst C,-DCOMPRESSED_ISA,$(COMPRESSED_ISA)) -DSP_TEST $^
	chmod -x $@

testbench_synth.vvp: testbench.v synth.v
	$(IVERILOG) -o $@ -DSYNTH_TEST $^
	chmod -x $@

testbench_verilator: testbench.v picorv32.v testbench.cc
	$(VERILATOR) --cc --exe -Wno-lint -trace --top-module picorv32_wrapper testbench.v picorv32.v testbench.cc \
			$(subst C,-DCOMPRESSED_ISA,$(COMPRESSED_ISA)) --Mdir testbench_verilator_dir
	$(MAKE) -C testbench_verilator_dir -f Vpicorv32_wrapper.mk
	cp testbench_verilator_dir/Vpicorv32_wrapper testbench_verilator

check: check-yices

check-%: check.smt2
	yosys-smtbmc -s $(subst check-,,$@) -t 30 --dump-vcd check.vcd check.smt2
	yosys-smtbmc -s $(subst check-,,$@) -t 25 --dump-vcd check.vcd -i check.smt2

check.smt2: picorv32.v
	yosys -v2 -p 'read_verilog -formal picorv32.v' \
	          -p 'prep -top picorv32 -nordff' \
		  -p 'assertpmux -noinit; opt -fast' \
		  -p 'write_smt2 -wires check.smt2'

synth.v: picorv32.v scripts/yosys/synth_sim.ys
	yosys -qv3 -l synth.log scripts/yosys/synth_sim.ys

firmware/firmware.hex: firmware/firmware.bin firmware/makehex.py
	$(PYTHON) firmware/makehex.py $< 32768 > $@

firmware/firmware.bin: firmware/firmware.elf
	$(TOOLCHAIN_PREFIX)objcopy -O binary $< $@
	chmod -x $@

#firmware/firmware.elf: $(FIRMWARE_OBJS) $(TEST_OBJS) firmware/sections.lds
#	$(TOOLCHAIN_PREFIX)gcc -Os $(CFLAGS) -ffreestanding -nostdlib -o $@ \
#		-Wl,-Bstatic,-T,firmware/sections.lds,-Map,firmware/firmware.map,--strip-debug \
#		$(FIRMWARE_OBJS) $(TEST_OBJS) -lgcc

firmware/firmware.elf: $(FIRMWARE_OBJS) $(TEST_OBJS) firmware/sections.lds
	$(TOOLCHAIN_PREFIX)gcc -Os $(CFLAGS) -ffreestanding -nostdlib -o $@ \
		-Wl,-Bstatic,-T,firmware/sections.lds,-Map,firmware/firmware.map,--strip-debug \
		$(FIRMWARE_OBJS) $(TEST_OBJS)
#	$(TOOLCHAIN_PREFIX)gcc -Os -ffreestanding -nostdlib -o $@ \
#		-Wl,-Bstatic,-T,firmware/sections.lds,-Map,firmware/firmware.map,--strip-debug \
#		$(FIRMWARE_OBJS) $(TEST_OBJS) -lgcc
	chmod -x $@

# ccc:
CFLAGS = -nostdlib -fno-builtin -mcmodel=medany -march=rv32ima -mabi=ilp32

firmware/start.o: firmware/start.S
	 $(TOOLCHAIN_PREFIX)gcc -c $(CFLAGS) -o $@ $<
#	 $(TOOLCHAIN_PREFIX)gcc -c -march=rv32im$(subst C,c,$(COMPRESSED_ISA)) -o $@ $<

firmware/%.o: firmware/%.c
	 $(TOOLCHAIN_PREFIX)gcc -c $(CFLAGS) -Os --std=c99 $(GCC_WARNS) -ffreestanding -o $@ $<
#	$(TOOLCHAIN_PREFIX)gcc -c -march=rv32i$(subst C,c,$(COMPRESSED_ISA)) -Os --std=c99 $(GCC_WARNS) -ffreestanding -nostdlib -o $@ $<

tests/%.o: tests/%.S tests/riscv_test.h tests/test_macros.h
	$(TOOLCHAIN_PREFIX)gcc -c $(CFLAGS) -o $@ -DTEST_FUNC_NAME=$(notdir $(basename $<)) \
		-DTEST_FUNC_TXT='"$(notdir $(basename $<))"' -DTEST_FUNC_RET=$(notdir $(basename $<))_ret $<
#	$(TOOLCHAIN_PREFIX)gcc -c -march=rv32im -o $@ -DTEST_FUNC_NAME=$(notdir $(basename $<)) \
#		-DTEST_FUNC_TXT='"$(notdir $(basename $<))"' -DTEST_FUNC_RET=$(notdir $(basename $<))_ret $<

toc:
	gawk '/^-+$$/ { y=tolower(x); gsub("[^a-z0-9]+", "-", y); gsub("-$$", "", y); printf("- [%s](#%s)\n", x, y); } { x=$$0; }' README.md

clean:
	rm -rf *.vvp *.o *.log *.elf

.PHONY: test test_vcd test_sp test_axi test_wb test_wb_vcd test_ez test_ez_vcd test_synth toc clean
