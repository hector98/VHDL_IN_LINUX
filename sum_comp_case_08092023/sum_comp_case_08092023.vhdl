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

-- date create: Fri Sep  8 07:20:13 PM CST 2023


library ieee;
use ieee.std_logic_1164.all;

entity sum_comp_case_08092023 is
        
       port(
			a: in std_logic;
			b: in std_logic;
			cin: in std_logic;
			cout: out std_logic;
			q: out std_logic

       );

end sum_comp_case_08092023;

architecture sum_comp_case_08092023 of sum_comp_case_08092023 is
		signal c: std_logic_vector(2 downto 0);
        
begin
		c <= cin & a & b;

		process(c)
		begin
				case c is
						when "000" =>
								cout <= '0';
								q <= '0';

						when "001" =>
								cout <= '0';
								q <= '1';

						when "010" =>
								cout <= '0';
								q <= '1';

						when "100" =>
								cout <= '0';
								q <= '1';

						when "111" =>
								cout <= '1';
								q <= '1';

						when others =>
								cout <= '1';
								q <= '0';
				end case;
		end process;

end sum_comp_case_08092023;
