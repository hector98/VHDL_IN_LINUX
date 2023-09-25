-- ************************************************************************************************
-- Development name: Hector Manuel Barrios Barrios                                   
-- Operating System: GNU/Linux
                                
-- Kernel version: 6.3.6-060306-generic
                                  
-- ghdl version: -- GHDL 1.0.0 (Ubuntu 1.0.0+dfsg-6) [Dunoon edition]
--  Compiled with GNAT Version: 10.3.1 20211117
--  mcode code generator
-- Written by Tristan Gingold.
-- 
-- Copyright (C) 2003 - 2021 Tristan Gingold.
-- GHDL is free software, covered by the GNU General Public License.  There is NO
-- warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
                                                           
-- date create: Fri Sep 22 08:11:46 PM CST 2023
                                         
-- ************************************************************************************************

library ieee;
use ieee.std_logic_1164.all;

entity cont_4bits_jk_22092023 is
        
       port(
			hab: in std_logic;
		    hab_out: out std_logic;
			clk: in std_logic;
			q: out std_logic_vector (3 downto 0);
			qn: out std_logic_vector (3 downto 0)

       );

end cont_4bits_jk_22092023;

architecture cont_4bits_jk_22092023 of cont_4bits_jk_22092023 is
-- Aqui van las señales
		signal s0, s1, s2, s3, s4, s5, s6, s7, s8, s9: std_logic;

-- Y los components
		component flp_flop_jk_22092023 is 
			        
 
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
--Apartir de aqui va el codigo de tu programa
		s8 <= s7 and (not s5) and (not s3) and s1; -- se hace 1 cuando el conteo llega a 1001
		s9 <= not s8; --s9 se hace 0 cuando 
		s0 <= hab;
		s2 <= s0 and s1;
		s4 <= s2 and s3;
		s6 <= s4 and s5;
		hab_out <= s6 and s7;
		q <= s7 & s5 & s3 & s1;

		conteo0: flp_flop_jk_22092023 port map(hab, clk, s9, '1', s1, qn(0));
		conteo1: flp_flop_jk_22092023 port map(s2, clk, s9, '1', s3, qn(0));
		conteo2: flp_flop_jk_22092023 port map(s4, clk, s9, '1', s5, qn(0));
		conteo3: flp_flop_jk_22092023 port map(s6, clk, s9, '1', s7, qn(0));

end cont_4bits_jk_22092023;
