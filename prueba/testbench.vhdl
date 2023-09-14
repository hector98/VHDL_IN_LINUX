-- Tests of the entity prueba
library ieee;
use ieee.std_logic_1164.all;

entity TestBench is
end TestBench;

architecture prueba_test of TestBench is

			signal a_tb: std_logic := '0';
			signal q_tb: std_logic;


        component prueba
            port(
  			a: in std_logic;
			q: out std_logic

            );
        end component;

begin
        uut: prueba
        port map(
			a => a_tb,
			q => q_tb

        );

        stim_proc: process
        begin
              -- aqui van los casos de prueba
              -- ejemplo:
              -- a_tb <= '0';
              -- b_tb <= '0';
              -- wait for 10 ns; tiempo de espera
              -- wait;
			a_tb <= '0';
			wait for 10 ns; 

			a_tb <= '1';
			wait for 10 ns; 

			wait;
        end process;
end prueba_test;
