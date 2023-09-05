VHDL_FILE = COMP_OR_WITH_SELECT_28082023
TEST_FILE = testbench

all: compile run

compile:
	ghdl -a $(VHDL_FILE).vhdl $(TEST_FILE).vhdl
	ghdl -e $(TEST_FILE)

run:
	ghdl -r $(TEST_FILE) --vcd=testbench.vcd
	gtkwave $(TEST_fILE).vcd

clean:
	ghdl --clean
	rm -f $(VHDL_FILE) $(TEST_FILE)
