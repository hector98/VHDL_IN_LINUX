VHDL_FILE = conv_bcd_dec_29092023
COMPONENT_FILE0 = segmento_a_24092023
COMPONENT_FILE1 = segmento_b_24092023
COMPONENT_FILE2 = segmento_c_25092023
COMPONENT_FILE3 = segmento_d_25092023
COMPONENT_FILE4 = segmento_e_27092023
COMPONENT_FILE5 = segmento_f_27092023
COMPONENT_FILE6 = segmento_g_27092023
TEST_FILE = testbench

all: compile run

compile:
	ghdl -a $(VHDL_FILE).vhdl	$(TEST_FILE).vhdl	$(COMPONENT_FILE0).vhdl	$(COMPONENT_FILE1).vhdl	$(COMPONENT_FILE2).vhdl	$(COMPONENT_FILE3).vhdl	$(COMPONENT_FILE4).vhdl	$(COMPONENT_FILE5).vhdl	$(COMPONENT_FILE6).vhdl
	ghdl -e $(TEST_FILE)

run:
	ghdl -r $(TEST_FILE) --vcd=testbench.vcd

clean:
	ghdl --clean
	rm -f $(VHDL_FILE) $(TEST_FILE)

