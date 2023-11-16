-- Tests of the entity flip_flop_test
library ieee;
use ieee.std_logic_1164.all;

entity TestBench is
end TestBench;

architecture flip_flop_test_test of TestBench is

			signal hab_tb: std_logic := '0';
			signal clk_tb: std_logic := '0';
			signal j_tb: std_logic := '0';
			signal k_tb: std_logic := '0';
			signal q_tb: std_logic;
			signal qn_tb: std_logic;


        component flip_flop_test
            port(
  			hab: in std_logic;
			clk: in std_logic;
			j: in std_logic;
			k: in std_logic;
			q: out std_logic;
			qn: out std_logic

            );
        end component;

begin
        uut: flip_flop_test
        port map(
			hab => hab_tb,
			clk => clk_tb,
			j => j_tb,
			k => k_tb,
			q => q_tb,
			qn => qn_tb

        );

        stim_proc: process
        begin
              -- aqui van los casos de prueba
              -- ejemplo:
              -- a_tb <= '0';
              -- b_tb <= '0';
              -- wait for 10 ns; tiempo de espera
              -- wait;
			hab_tb <= '0';
			clk_tb <= not clk_tb;
			j_tb <= '0';
			k_tb <= '0';
			wait for 10 ns; 

			hab_tb <= '1';
			clk_tb <= not clk_tb;
			j_tb <= '1';
			k_tb <= '1';
			wait for 10 ns; 

			wait;
        end process;
end flip_flop_test_test;
