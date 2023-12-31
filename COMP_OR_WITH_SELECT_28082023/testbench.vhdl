LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY TestBench IS
END TestBench;

ARCHITECTURE OR_SELECT OF TestBench IS
		SIGNAL A_TB, B_TB : STD_LOGIC := '0';
		SIGNAL Q_TB : STD_LOGIC;

		COMPONENT COMP_OR_WITH_SELECT_28082023
				PORT(
						A : IN STD_LOGIC;
						B : IN STD_LOGIC;
						Q : OUT STD_LOGIC
				);
		END COMPONENT;

BEGIN
		UUT : COMP_OR_WITH_SELECT_28082023
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
				WAIT FOR 10 NS;

				A_TB <= '1';
				B_TB <= '1';
				WAIT FOR 10 NS;

				WAIT;

		END PROCESS;
END OR_SELECT;

