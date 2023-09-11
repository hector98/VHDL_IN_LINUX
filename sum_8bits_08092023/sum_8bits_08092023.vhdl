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

-- date create: Fri Sep  8 08:02:06 PM CST 2023


library ieee;
use ieee.std_logic_1164.all;

entity sum_8bits_08092023 is
        
       port(
			a: in std_logic_vector(7 downto 0);
			b: in std_logic_vector(7 downto 0);
		    cin: in std_logic;
			cout: out std_logic;
			q: out std_logic_vector(7 downto 0)

       );

end sum_8bits_08092023;

architecture sum_8bits_08092023 of sum_8bits_08092023 is
		signal s0, s1, s2, s3, s4, s5, s6, s7 : std_logic;


		component medio_sum_case_08092023 is

				port(
							a: in std_logic;
							b: in std_logic;
							cout: out std_logic;
							q: out std_logic
					);

		end component;

		component sum_comp_case_08092023 is

				port(
							a: in std_logic;
							b: in std_logic;
							cin: in std_logic;
							cout: out std_logic;
							q: out std_logic

					);

		end component;
		
		
        
begin
		sum0: medio_sum_case_08092023 port map (a(0), b(0), s0, q(0));
		--sum0: sum_comp_case_08092023 port map (cin, a(0), b(0), q(0));
		
		sum1: sum_comp_case_08092023 port map (a(1), b(1), s0, s1, q(1));

		sum2: sum_comp_case_08092023 port map (a(2), b(2), s1, s2, q(2));

		sum3: sum_comp_case_08092023 port map (a(3), b(3), s2, s3, q(3));

		sum4: sum_comp_case_08092023 port map (a(4), b(4), s3, s4, q(4));

		sum5: sum_comp_case_08092023 port map (a(5), b(5), s4, s5, q(5));

		sum6: sum_comp_case_08092023 port map (a(6), b(6), s5, s6, q(6));

		sum7: sum_comp_case_08092023 port map (a(7), b(7), s6, s7, q(7));

end sum_8bits_08092023;
