VHDL_FILE = sum_8bits_08092023
MEDIO = medio_sum_case_08092023
SUM = sum_comp_case_08092023
TEST_FILE = testbench

all: compile run

compile:
	ghdl -a $(VHDL_FILE).vhdl	$(TEST_FILE).vhdl	$(MEDIO).vhdl	$(SUM).vhdl
	ghdl -e $(TEST_FILE)

run:
	ghdl -r $(TEST_FILE) --vcd=testbench.vcd

clean:
	ghdl --clean
	rm -f $(VHDL_FILE) $(TEST_FILE)

