library ieee;
use ieee.std_logic_1164.all;

entity comp_and_ecbool_01092023 is

		port(
		a: in std_logic;
		b: in std_logic;
		q: out std_logic
);
end comp_and_ecbool_01092023;

architecture comp_and_ecbool_01092023 of comp_and_ecbool_01092023 is

begin
		q <= a and b;

end comp_and_ecbool_01092023;
