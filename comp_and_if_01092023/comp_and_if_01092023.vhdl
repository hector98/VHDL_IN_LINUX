library ieee;
use ieee.std_logic_1164.all;

entity comp_and_if_01092023 is

		port(
		a: in std_logic;
		b: in std_logic;
		q: out std_logic
);
end comp_and_if_01092023;

architecture comp_and_if_01092023 of comp_and_if_01092023 is
		
		signal c: std_logic_vector(1 downto 0);
begin
		c <= a&b;
		process (c)
		begin
				if c = "00" then
						q <= '0';

				elsif c = "01" then
						q <= '0';
						
				elsif c = "10" then 
						q <= '0';
						
				elsif c = "11" then
						q <= '1';

				else
						q <= '0';
				end if;
		end process;

end comp_and_if_01092023;
