LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY COMP_AND_WHEN_ELSE_25082023 IS
		PORT (
		A:IN STD_LOGIC;
		B:IN STD_LOGIC;
		Q:OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
		);
END COMP_AND_WHEN_ELSE_25082023;

ARCHITECTURE COMP_AND_WHEN_ELSE_25082023 OF COMP_AND_WHEN_ELSE_25082023 IS
BEGIN
		Q <= '0' WHEN A&B = "00" ELSE
			 '0' WHEN A&B="01" ELSE
			 '0' WHEN A&B="10" ELSE
			 '1' WHEN A&B="11" ELSE
			 '0';

END COMP_AND_WHEN_ELSE_25082023;
