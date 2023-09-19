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
                                                           
-- date create: Mon Sep 18 01:24:23 PM CST 2023
                                         
-- ************************************************************************************************

library ieee;
use ieee.std_logic_1164.all;

entity comp_xor_if_18092023 is
        
       port(
			a: in std_logic;
			b: in std_logic;
			q: out std_logic

       );

end comp_xor_if_18092023;

architecture comp_xor_if_18092023 of comp_xor_if_18092023 is

		signal c: std_logic_vector(1 downto 0);
        
begin

		c <= a & b;
		process(c)
		begin 
				if c = "00" then
						q <= '0';

				elsif c = "01" then
						q <= '1';

				elsif c = "10" then
						q <= '1';

				elsif c = "11" then
						q <= '0';

				else
						q <= '0';
				end if;
		end process;

end comp_xor_if_18092023;
