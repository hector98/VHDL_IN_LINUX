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

-- date create: Fri Sep  8 07:07:36 PM CST 2023


library ieee;
use ieee.std_logic_1164.all;

entity medio_sum_case_08092023 is
        
       port(
			a: in std_logic;
			b: in std_logic;
			cout: out std_logic;
			q: out std_logic

       );

end medio_sum_case_08092023;

architecture medio_sum_case_08092023 of medio_sum_case_08092023 is
		signal c: std_logic_vector(1 downto 0);
begin
		c <= a & b;

		process(c)
		begin
				case c is 
						when "00" =>
								cout <= '0';
								q <= '0';

						when "11" =>
								cout <= '1';
								q <= '0';

						when others =>
								cout <= '0';
								q <= '1';
				end case;
		end process;

end medio_sum_case_08092023;
