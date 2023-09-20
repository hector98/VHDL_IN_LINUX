-- Tests of the entity sum_8bits_08092023
library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture tb_architecture of testbench is
    -- Señales para las entradas y salidas del testbench
    signal a_tb: std_logic_vector(7 downto 0) := "00000000";
	signal b_tb: std_logic_vector(7 downto 0) := "00000000";
    signal cin_tb: std_logic := '0';
    signal cout_tb: std_logic := '0';
    signal q_tb: std_logic_vector(7 downto 0);

    -- Instancia del diseño bajo prueba
    component sum_8bits_08092023
        port (
            a: in std_logic_vector(7 downto 0);
            b: in std_logic_vector(7 downto 0);
            cin: in std_logic;
            cout: out std_logic;
            q: out std_logic_vector(7 downto 0)
        );
    end component;

begin
    -- Instancia del diseño bajo prueba
    uut: sum_8bits_08092023
        port map (
            a => a_tb,
            b => b_tb,
            cin => cin_tb,
            cout => cout_tb,
            q => q_tb
        );

    -- Genera estímulos de entrada (puedes cambiar estos valores según tus necesidades)
    --a <= "00000001";
    --b <= "00000001";
    --cin <= '0';

    -- Proceso de simulación
    stim_proc: process
    begin
        -- Inserta aquí tus estímulos de entrada si es necesario
		a_tb <= "00110011";
		b_tb <= "11001100";
		cin_tb <= '0';
		wait for 10 ns;

		a_tb <= "00000111";
		b_tb <= "11110001";
		cin_tb <= '0';
		wait for 10 ns;

		a_tb <= "11111111";
		b_tb <= "11111111";
		cin_tb <= '1';
		wait for 10 ns;

	-- Inserta más estímulos o espera aquí según tus necesidades

        -- Finaliza la simulación
        wait;
    end process;

end tb_architecture;

