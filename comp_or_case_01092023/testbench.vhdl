LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY TestBench IS
END TestBench;

ARCHITECTURE and_case OF TestBench IS
		SIGNAL A_TB: STD_LOGIC := '0';
		signal B_TB: std_logic := '0';
		SIGNAL Q_TB : STD_LOGIC;

		COMPONENT comp_and_case_01092023
				PORT(
						a : IN STD_LOGIC;
						b: in std_logic;
						q : OUT STD_LOGIC
				);
		END COMPONENT;

BEGIN
		UUT : comp_and_case_01092023
		PORT MAP(
				a => A_TB,
				b => B_TB,
				q => Q_TB
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
END and_case;

