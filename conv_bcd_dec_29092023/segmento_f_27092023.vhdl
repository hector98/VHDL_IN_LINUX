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
                                                           
-- date create: Wed Sep 27 05:58:37 PM CST 2023
                                         
-- ************************************************************************************************
library ieee;
use ieee.std_logic_1164.all;

entity segmento_f_27092023 is
        
       port(
			a: in std_logic;
			b: in std_logic;
			c: in std_logic;
			d: in std_logic;
			q: out std_logic

       );

end segmento_f_27092023;

architecture segmento_f_27092023 of segmento_f_27092023 is
-- Aqui van las señales

-- Y los components
        
begin
--Apartir de aqui va el codigo de tu programa
		--q <= (b and not(c) and d) or (b and c and not(d)) or (not(c) and not(d)) or a;
		q <= not(c or d) or a;

end segmento_f_27092023;
