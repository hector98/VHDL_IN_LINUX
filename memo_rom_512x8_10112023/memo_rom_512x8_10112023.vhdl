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
                                                           
-- date create: mié 15 nov 2023 16:23:58 CST
                                         
-- ************************************************************************************************

library ieee;
use ieee.std_logic_1164.all;

entity memo_rom_512x8_10112023 is
        
       port(
			clk: in std_logic;
			cs: in std_logic_vector (2 downto 0);
			enable: in std_logic;
			address: in std_logic_vector (15 downto 0);
			data_out: out std_logic_vector (7 downto 0);
			iddle: out std_logic

       );

end memo_rom_512x8_10112023;

architecture memo_rom_512x8_10112023 of memo_rom_512x8_10112023 is
-- Aqui van las señales
		signal c_s, do0, do1, do2, do3, do4, do5, do6, do7: std_logic_vector (7 downto 0);
		signal id0, id1, id2, id3, id4, id5, id6, id7: std_logic;

-- Y los components
		component decod_3_8_10112023 is 
			        
 
			       port(
 
						ina: in std_logic_vector (2 downto 0);
 
						outa: out std_logic_vector (7 downto 0)
 
			
 
			       );
 
		 end component;

		component memo_rom_10112023 is 
			        
 
			       port(
 
						enable: in std_logic;
 
						clk: in std_logic;
 
						cs: in std_logic;
 
						idle_rom: out std_logic;
 
						address: in std_logic_vector (15 downto 0);
 
						data: out std_logic_vector (7 downto 0)
 
			
 
			       );
 
		 end component;
        
begin
--Apartir de aqui va el codigo de tu programa
		decodificar: decod_3_8_10112023 port map (cs, c_s);
		bloque0: memo_rom_10112023 port map (enable, clk, c_s(0), id0, address, do0);
		bloque1: memo_rom_10112023 port map (enable, clk, c_s(1), id1, address, do1);
		bloque2: memo_rom_10112023 port map (enable, clk, c_s(2), id2, address, do2);
		bloque3: memo_rom_10112023 port map (enable, clk, c_s(3), id3, address, do3);
		bloque4: memo_rom_10112023 port map (enable, clk, c_s(4), id4, address, do4);
		bloque5: memo_rom_10112023 port map (enable, clk, c_s(5), id5, address, do5);
		bloque6: memo_rom_10112023 port map (enable, clk, c_s(6), id6, address, do6);
		bloque7: memo_rom_10112023 port map (enable, clk, c_s(7), id7, address, do7);


end memo_rom_512x8_10112023;
