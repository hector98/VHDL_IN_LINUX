-- ************************************************************************************************
-- Development name: Hector Manuel Barrios Barrios                                   
-- Operating System: GNU/Linux
                                
-- Kernel version: 6.1.0-13-amd64
                                  
-- ghdl version: -- GHDL 2.0.0 (Debian 2.0.0+dfsg-6.2) [Dunoon edition]
--  Compiled with GNAT Version: 12.2.0
--  mcode code generator
-- Written by Tristan Gingold.
-- 
-- Copyright (C) 2003 - 2022 Tristan Gingold.
-- GHDL is free software, covered by the GNU General Public License.  There is NO
-- warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
                                                           
-- date create: mié 15 nov 2023 12:17:09 CST
                                         
-- ************************************************************************************************

library ieee;
use ieee.std_logic_1164.all;

entity flip_flop_test is
        
       port(
			hab: in std_logic;
			clk: in std_logic;
			j: in std_logic;
			k: in std_logic;
			q: out std_logic;
			qn: out std_logic

       );

end flip_flop_test;

architecture flip_flop_test of flip_flop_test is
-- Aqui van las señales
		signal c: std_logic_vector(1 downto 0);
		signal sal: std_logic := '0';

-- Y los components
        
begin
--Apartir de aqui va el codigo de tu programa
		c <= j & k;
		q <= sal;
		qn <= not sal;

		process(clk)
		begin
				if clk'event and clk='1' then
						if hab = '1' then
								case c is
										when "00" =>
												sal <= sal;

										when "01" =>
												q <= sal;
												qn <= sal;
												sal <= '0';
										
										when "11" =>
												sal <= not sal;

										when others => sal <= '0';

								end case;
						else
								sal <= sal;
						end if;
				end if;
		end process;

end flip_flop_test;
