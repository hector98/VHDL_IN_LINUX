-- Tests of the entity cont_4bits_jk_22092023
library ieee;
use ieee.std_logic_1164.all;

entity TestBench is
end TestBench;

architecture cont_4bits_jk_22092023_test of TestBench is

			signal hab_tb: std_logic := '0';
			signal hab_out_tb: std_logic := '0';
			signal clk_tb: std_logic := '0';
			signal q_tb: std_logic_vector(3 downto 0);
			signal qn_tb: std_logic_vector(3 downto 0);


        component cont_4bits_jk_22092023
            port(
  			hab: in std_logic;
		    hab_out: out std_logic;
			clk: in std_logic;
			q: out std_logic_vector (3 downto 0);
			qn: out std_logic_vector (3 downto 0)

            );
        end component;

begin
        uut: cont_4bits_jk_22092023
        port map(
			hab => hab_tb,
			hab_out => hab_out_tb,
			clk => clk_tb,
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
				clk_tb <= not clk_tb;
				hab_tb <= '0';
						  wait for 5 ns;

				clk_tb <= not clk_tb;
				hab_tb <= '1' ;
						  wait for 5 ns;

				clk_tb <= not clk_tb;
				hab_tb <= '0';
						  wait for 5 ns;

				clk_tb <= not clk_tb;
				hab_tb <= '1' ;
						  wait for 5 ns;
				wait;

        end process;
end cont_4bits_jk_22092023_test;
