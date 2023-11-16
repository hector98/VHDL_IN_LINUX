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
                                                           
-- date create: mié 15 nov 2023 13:03:58 CST
                                         
-- ************************************************************************************************

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memo_rom_10112023 is
        
       port(
			enable: in std_logic;
			clk: in std_logic;
			cs: in std_logic;
			idle_rom: out std_logic;
			address: in std_logic_vector (15 downto 0);
			data: out std_logic_vector (7 downto 0)

       );

end memo_rom_10112023;

architecture memo_rom_10112023 of memo_rom_10112023 is
-- Aqui van las señales
		type memoria is array (65535 downto 0) of std_logic_vector (7 downto 0);
		signal memo: memoria := (others => "10101011");
		signal dir_mem: integer;

-- Y los components
        
begin
--Apartir de aqui va el codigo de tu programa
		dir_mem <= to_integer(unsigned (address));

		process(clk)
		begin
				if clk'event and clk='1' then
						if cs = '1' then
								if enable = '1' then
										data <= memo(dir_mem);
										idle_rom <= '1';

								else
										data <= "00000000";
										idle_rom <= '0';
								end if;
						else
								data <= "00000000";
								idle_rom <= '0';
						end if;
				end if;
		end process;
end memo_rom_10112023;
