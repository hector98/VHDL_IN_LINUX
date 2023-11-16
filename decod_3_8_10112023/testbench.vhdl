-- Tests of the entity decod_3_8_10112023
library ieee;
use ieee.std_logic_1164.all;

entity TestBench is
end TestBench;

architecture decod_3_8_10112023_test of TestBench is

			signal ina_tb: std_logic_vector(2 downto 0) := "000";
			signal outa_tb: std_logic_vector(7 downto 0);


        component decod_3_8_10112023
            port(
  			ina: in std_logic_vector (2 downto 0);
			outa: out std_logic_vector (7 downto 0)

            );
        end component;

begin
        uut: decod_3_8_10112023
        port map(
			ina => ina_tb,
			outa => outa_tb

        );

        stim_proc: process
        begin
              -- aqui van los casos de prueba
              -- ejemplo:
              -- a_tb <= '0';
              -- b_tb <= '0';
              -- wait for 10 ns; tiempo de espera
              -- wait;
			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			ina_tb <= "000";
			wait for 10 ns; 

			ina_tb <= "001";
			wait for 10 ns; 

			ina_tb <= "010";
			wait for 10 ns; 

			ina_tb <= "011";
			wait for 10 ns; 

			ina_tb <= "100";
			wait for 10 ns; 

			ina_tb <= "101";
			wait for 10 ns; 

			ina_tb <= "110";
			wait for 10 ns; 

			ina_tb <= "111";
			wait for 10 ns; 

			wait;
        end process;
end decod_3_8_10112023_test;
