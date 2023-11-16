VHDL_FILE = memo_rom_512x8_10112023
COMPONENT_FILE0 = decod_3_8_10112023
COMPONENT_FILE1 = memo_rom_10112023
TEST_FILE = testbench

all: compile run

compile:
	ghdl -a $(VHDL_FILE).vhdl	$(TEST_FILE).vhdl	$(COMPONENT_FILE0).vhdl	$(COMPONENT_FILE1).vhdl
	ghdl -e $(TEST_FILE)

run:
	ghdl -r $(TEST_FILE) --vcd=testbench.vcd

clean:
	ghdl --clean
	rm -f $(VHDL_FILE) $(TEST_FILE)

