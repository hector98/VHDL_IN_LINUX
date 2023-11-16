VHDL_FILE = decod_3_8_10112023

TEST_FILE = testbench

all: compile run

compile:
	ghdl -a $(VHDL_FILE).vhdl	$(TEST_FILE).vhdl
	ghdl -e $(TEST_FILE)

run:
	ghdl -r $(TEST_FILE) --vcd=testbench.vcd

clean:
	ghdl --clean
	rm -f $(VHDL_FILE) $(TEST_FILE)

