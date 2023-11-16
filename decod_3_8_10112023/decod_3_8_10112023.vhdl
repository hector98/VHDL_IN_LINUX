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
                                                           
-- date create: mié 15 nov 2023 16:12:18 CST
                                         
-- ************************************************************************************************

library ieee;
use ieee.std_logic_1164.all;

entity decod_3_8_10112023 is
        
       port(
			ina: in std_logic_vector (2 downto 0);
			outa: out std_logic_vector (7 downto 0)

       );

end decod_3_8_10112023;

architecture decod_3_8_10112023 of decod_3_8_10112023 is
-- Aqui van las señales

-- Y los components
        
begin
--Apartir de aqui va el codigo de tu programa
		with ina select
				outa <= "00000001" when "000",
						"00000010" when "001",
						"00000100" when "010",
						"00001000" when "011",
						"00010000" when "100",
						"00100000" when "101",
						"01000000" when "110",
						"10000000" when others;

end decod_3_8_10112023;
