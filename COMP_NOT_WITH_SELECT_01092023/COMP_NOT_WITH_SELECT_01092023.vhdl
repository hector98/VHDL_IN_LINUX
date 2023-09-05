library ieee;
use ieee.std_logic_1164.all;

entity COMP_NOT_WITH_SELECT_01092023 is
		port(
		A: in std_logic;
		Q: out std_logic
);
end COMP_NOT_WITH_SELECT_01092023;

architecture COMP_NOT_WITH_SELECT_01092023 OF COMP_NOT_WITH_SELECT_01092023 is

--signal C: std_logic_vector(1 downto 0);

begin
		with A select
				Q <= '0' when '1',
				     '1' when '0',
					 '0' when others;

end COMP_NOT_WITH_SELECT_01092023;



