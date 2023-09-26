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
                                                           
-- date create: Mon Sep 25 09:35:11 PM CST 2023
                                         
-- ************************************************************************************************

library ieee;
use ieee.std_logic_1164.all;

entity segmento_d_25092023 is
        
       port(
			a: in std_logic;
			b: in std_logic;
			c: in std_logic;
			d: in std_logic;
			q: out std_logic

       );

end segmento_d_25092023;

architecture segmento_d_25092023 of segmento_d_25092023 is
-- Aqui van las señales

-- Y los components
        
begin
--Apartir de aqui va el codigo de tu programa
		q <= (not(c) and (not(b xor d))) or (c and not(a and b and d)) or a;

end segmento_d_25092023;
