LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY COMP_OR_WITH_SELECT_28082023 IS
		PORT(
		A: IN STD_LOGIC;
		B: IN STD_LOGIC;
		Q: OUT STD_LOGIC
        );
END COMP_OR_WITH_SELECT_28082023;

ARCHITECTURE COMP_OR_WITH_SELECT_28082023 OF COMP_OR_WITH_SELECT_28082023 IS

SIGNAL C:STD_LOGIC_VECTOR(1 DOWNTO 0);

BEGIN
		C <= A&B;
		WITH C SELECT
				Q <= '0' WHEN "00",
				     '1' WHEN "01",
					 '1' WHEN "10",
					 '1' WHEN "11",
					 '0' WHEN OTHERS;

END COMP_OR_WITH_SELECT_28082023;
