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
                                                           
-- date create: Tue Sep 19 04:13:39 PM CST 2023
                                         
-- ************************************************************************************************

library ieee;
use ieee.std_logic_1164.all;

entity comp_nand_esq_19092023 is
        
       port(
			a: in std_logic;
			b: in std_logic;
			q: out std_logic

       );

end comp_nand_esq_19092023;

architecture comp_nand_esq_19092023 of comp_nand_esq_19092023 is
        
begin
		q <= a nand b;

end comp_nand_esq_19092023;
