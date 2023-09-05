VHDL_FILE = COMP_AND_WITH_SELECT_25082023
TEST_FILE = testbench

all: compile run

compile:
	ghdl -a $(VHDL_FILE).vhdl
	ghdl -a $(TEST_FILE).vhdl
	ghdl -e $(TEST_FILE)

run:
	ghdl -r $(TEST_FILE) --vcd=testbench.vcd
	gtkwave $(TEST_FILE).vcd

clean:
	ghdl --clean
	rm -f $(VHDL_FILE) $(TEST_FILE)
