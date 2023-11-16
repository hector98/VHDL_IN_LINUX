-- Tests of the entity segmento_e_27092023
library ieee;
use ieee.std_logic_1164.all;

entity TestBench is
end TestBench;

architecture segmento_e_27092023_test of TestBench is

			signal a_tb: std_logic := '0';
			signal b_tb: std_logic := '0';
			signal c_tb: std_logic := '0';
			signal d_tb: std_logic := '0';
			signal q_tb: std_logic;


        component segmento_e_27092023
            port(
  			a: in std_logic;
			b: in std_logic;
			c: in std_logic;
			d: in std_logic;
			q: out std_logic

            );
        end component;

begin
        uut: segmento_e_27092023
        port map(
			a => a_tb,
			b => b_tb,
			c => c_tb,
			d => d_tb,
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
			b_tb <= '0';
			c_tb <= '0';
			d_tb <= '0';
			wait for 10 ns; 

			a_tb <= '0';
			b_tb <= '0';
			c_tb <= '0';
			d_tb <= '1';
			wait for 10 ns; 

			a_tb <= '0';
			b_tb <= '0';
			c_tb <= '1';
			d_tb <= '0';
			wait for 10 ns; 

			a_tb <= '0';
			b_tb <= '0';
			c_tb <= '1';
			d_tb <= '1';
			wait for 10 ns; 

			a_tb <= '0';
			b_tb <= '1';
			c_tb <= '0';
			d_tb <= '0';
			wait for 10 ns; 

			a_tb <= '0';
			b_tb <= '1';
			c_tb <= '0';
			d_tb <= '1';
			wait for 10 ns; 

			a_tb <= '0';
			b_tb <= '1';
			c_tb <= '1';
			d_tb <= '0';
			wait for 10 ns; 

			a_tb <= '0';
			b_tb <= '1';
			c_tb <= '1';
			d_tb <= '1';
			wait for 10 ns; 

			a_tb <= '1';
			b_tb <= '0';
			c_tb <= '0';
			d_tb <= '0';
			wait for 10 ns; 

			a_tb <= '1';
			b_tb <= '0';
			c_tb <= '0';
			d_tb <= '1';
			wait for 10 ns; 

			a_tb <= '1';
			b_tb <= '0';
			c_tb <= '1';
			d_tb <= '0';
			wait for 10 ns; 

			a_tb <= '1';
			b_tb <= '0';
			c_tb <= '1';
			d_tb <= '1';
			wait for 10 ns; 

			a_tb <= '1';
			b_tb <= '1';
			c_tb <= '0';
			d_tb <= '0';
			wait for 10 ns; 

			a_tb <= '1';
			b_tb <= '1';
			c_tb <= '0';
			d_tb <= '1';
			wait for 10 ns; 

			a_tb <= '1';
			b_tb <= '1';
			c_tb <= '1';
			d_tb <= '0';
			wait for 10 ns; 

			a_tb <= '1';
			b_tb <= '1';
			c_tb <= '1';
			d_tb <= '1';
			wait for 10 ns; 

			wait;
        end process;
end segmento_e_27092023_test;
