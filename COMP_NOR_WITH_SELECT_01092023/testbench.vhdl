LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY TestBench IS
END TestBench;

ARCHITECTURE NOR_SELECT OF TestBench IS
		SIGNAL A_TB: STD_LOGIC := '0';
		signal B_TB: std_logic := '0';
		SIGNAL Q_TB : STD_LOGIC;

		COMPONENT COMP_NOR_WITH_SELECT_01092023
				PORT(
						A : IN STD_LOGIC;
						B: in std_logic;
						Q : OUT STD_LOGIC
				);
		END COMPONENT;

BEGIN
		UUT : COMP_NOR_WITH_SELECT_01092023
		PORT MAP(
				A => A_TB,
				B => B_TB,
				Q => Q_TB
		);

		STIM_PROC : PROCESS
		BEGIN
				A_TB <= '0';
				B_TB <= '0';
				WAIT FOR 10 NS;

				A_TB <= '0';
				B_TB <= '1';
				WAIT FOR 10 NS;

				A_TB <= '1';
				B_TB <= '0';
				wait for 10 ns;

				A_TB <= '1';
				B_TB <= '1';
				wait for 10 ns;

				WAIT;

		END PROCESS;
END NOR_SELECT;

