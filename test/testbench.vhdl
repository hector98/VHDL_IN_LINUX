-- Tests of the entity test
library ieee;
use ieee.std_logic_1164.all;

entity TestBench is
end TestBench;

architecture test_test of TestBench is

			signal clk_tb: std_logic := '0';
			signal a_tb: std_logic_vector(1 downto 0) := "00";


        component test
            port(
  			clk: in std_logic;
			a: in std_logic_vector (1 downto 0)

            );
        end component;

begin
        uut: test
        port map(
			clk => clk_tb,
			a => a_tb

        );

        stim_proc: process
        begin
              -- aqui van los casos de prueba
              -- ejemplo:
              -- a_tb <= '0';
              -- b_tb <= '0';
              -- wait for 10 ns; tiempo de espera
              -- wait;
			clk_tb <= '0';
			a_tb <= "00";
			wait for 10 ns; 

			clk_tb <= '1';
			a_tb <= "01";
			wait for 10 ns; 

			clk_tb <= '0';
			a_tb <= "10";
			wait for 10 ns; 

			clk_tb <= '1';
			a_tb <= "11";
			wait for 10 ns; 

			wait;
        end process;
end test_test;
