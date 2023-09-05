library ieee;
use ieee.std_logic_1164.all;

entity COMP_NAND_WITH_SELECT_01092023 is
		port(
		A: in std_logic;
		B: in std_logic;
		Q: out std_logic
);
end COMP_NAND_WITH_SELECT_01092023;

architecture COMP_NAND_WITH_SELECT_01092023 of COMP_NAND_WITH_SELECT_01092023 is 

signal C: std_logic_vector(1 downto 0);

begin
		C <= A&B;

		with C select
				Q <= '1' when "00",
					 '1' when "01",
					 '1' when "10",
					 '0' when "11",
					 '0' when others;

end COMP_NAND_WITH_SELECT_01092023;
