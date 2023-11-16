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
                                                           
-- date create: Fri Sep 29 02:05:46 AM CST 2023
                                         
-- ************************************************************************************************

library ieee;
use ieee.std_logic_1164.all;

entity conv_bcd_dec_29092023 is
        
       port(
			a: in std_logic;
			b: in std_logic;
			c: in std_logic;
			d: in std_logic;
			q: out std_logic_vector(6 downto 0)

       );

end conv_bcd_dec_29092023;

architecture conv_bcd_dec_29092023 of conv_bcd_dec_29092023 is
-- Aqui van las señales

-- Y los components
		component segmento_a_24092023 is 
			        
 
			       port(
 
						a: in std_logic;
 
						b: in std_logic;
 
						c: in std_logic;
 
						d: in std_logic;
 
						q: out std_logic
 
			
 
			       );
 
		 end component;

		component segmento_b_24092023 is 
			        
 
			       port(
 
						a: in std_logic;
 
						b: in std_logic;
 
						c: in std_logic;
 
						d: in std_logic;
 
						q: out std_logic
 
			
 
			       );
 
		 end component;

		component segmento_c_25092023 is 
			        
 
			       port(
 
						a: in std_logic;
 
						b: in std_logic;
 
						c: in std_logic;
 
						d: in std_logic;
 
						q: out std_logic
 
			
 
			       );
 
		 end component;

		component segmento_d_25092023 is 
			        
 
			       port(
 
						a: in std_logic;
 
						b: in std_logic;
 
						c: in std_logic;
 
						d: in std_logic;
 
						q: out std_logic
 
			
 
			       );
 
		 end component;

		component segmento_e_27092023 is 
			        
 
			       port(
 
						a: in std_logic;
 
						b: in std_logic;
 
						c: in std_logic;
 
						d: in std_logic;
 
						q: out std_logic
 
			
 
			       );
 
		 end component;

		component segmento_f_27092023 is 
			        
 
			       port(
 
						a: in std_logic;
 
						b: in std_logic;
 
						c: in std_logic;
 
						d: in std_logic;
 
						q: out std_logic
 
			
 
			       );
 
		 end component;

		component segmento_g_27092023 is 
			        
 
			       port(
 
						a: in std_logic;
 
						b: in std_logic;
 
						c: in std_logic;
 
						d: in std_logic;
 
						q: out std_logic
 
			
 
			       );
 
		 end component;
        
begin
--Apartir de aqui va el codigo de tu programa
		seg_a: segmento_a_24092023 port map(a, b, c, d, q(6));
		seg_b: segmento_b_24092023 port map(a, b, c, d, q(5));
		seg_c: segmento_c_25092023 port map(a, b, c, d, q(4));
		seg_d: segmento_d_25092023 port map(a, b, c, d, q(3));
		seg_e: segmento_e_27092023 port map(a, b, c, d, q(2));
		seg_f: segmento_f_27092023 port map(a, b, c, d, q(1));
		seg_g: segmento_g_27092023 port map(a, b, c, d, q(0));

end conv_bcd_dec_29092023;
