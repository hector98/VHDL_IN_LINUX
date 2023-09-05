library ieee;
use ieee.std_logic_1164.all;

entity comp_or_case_01092023 is

		port(
		a: in std_logic;
		b: in std_logic;
		q: out std_logic
);
end comp_or_case;

architecture comp_or_case_01092023 of comp_or_case_01092023 is

		signal c: std_logic_vector(1 downto 0);

begin
		c <= a & b;

		process (c)
		begin
				case c is
						when "00" =>
								q <= '0';
						
						when "01" =>
								q <= '1';
								
						when "10" =>
								q <= '1';
								
						when "11" =>
								q <= '1';

						when others =>
								q <= '0';
								
				end case;
		end process;
