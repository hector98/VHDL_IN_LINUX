VHDL_FILE = cont_4bits_jk_22092023
COMPONENT_FILE0 = flp_flop_jk_22092023
TEST_FILE = testbench

all: compile run

compile:
	ghdl -a $(VHDL_FILE).vhdl	$(TEST_FILE).vhdl	$(COMPONENT_FILE0).vhdl
	ghdl -e $(TEST_FILE)

run:
	ghdl -r $(TEST_FILE) --vcd=testbench.vcd

clean:
	ghdl --clean
	rm -f $(VHDL_FILE) $(TEST_FILE)

