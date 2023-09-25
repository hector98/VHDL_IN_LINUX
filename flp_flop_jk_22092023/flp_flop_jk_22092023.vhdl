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
                                                           
-- date create: Fri Sep 22 07:29:53 PM CST 2023
                                         
-- ************************************************************************************************

library ieee;
use ieee.std_logic_1164.all;

entity flp_flop_jk_22092023 is
        
       port(
			hab: in std_logic;
			clk: in std_logic;
			j: in std_logic;
			k: in std_logic;
			q: out std_logic;
			qn: out std_logic

       );

end flp_flop_jk_22092023;

architecture flp_flop_jk_22092023 of flp_flop_jk_22092023 is
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
										when "00" => --sin cambio
												sal <= sal;

										when "01" => --reset
												q <= sal; --'0';
												qn <= sal; --'1';
												sal <= '0';

										when "10" => --set q='1' qn='0'
												q <= '1';
												qn <= '0';
												sal <= '1';

										when "11" => --toggle q, qn cambian al estado opuesto
												sal <= not sal;

										when others =>
												sal <= '0';
								end case;
						else
								sal <= sal;
						end if;
				end if;
		end process;

end flp_flop_jk_22092023;
