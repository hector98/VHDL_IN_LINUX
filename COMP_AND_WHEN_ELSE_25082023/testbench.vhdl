library ieee;
use ieee.std_logic_1164.all;

entity TestBench is
end TestBench;

architecture sim of TestBench is
    signal A_tb, B_tb : std_logic := '0';
    signal Q_tb : std_logic;

    component COMP_AND_WITH_SELECT_25082023
        port(
            A : in  std_logic;
            B : in  std_logic;
            Q : out std_logic
        );
    end component;

begin
    uut : COMP_AND_WITH_SELECT_25082023
        port map(
            A => A_tb,
            B => B_tb,
            Q => Q_tb
        );

    stim_proc : process
    begin
        A_tb <= '0';
        B_tb <= '0';
        wait for 10 ns;

        A_tb <= '0';
        B_tb <= '1';
        wait for 10 ns;

        A_tb <= '1';
        B_tb <= '0';
        wait for 10 ns;

        A_tb <= '1';
        B_tb <= '1';
        wait for 10 ns;

        wait;
    end process;
end sim;

