-- Tests of the entity sum_8bits_08092023
library ieee;
use ieee.std_logic_1164.all;

entity testbench is
end testbench;

architecture tb_architecture of testbench is
    -- Señales para las entradas y salidas del testbench
    signal a, b: std_logic_vector(7 downto 0);
    signal cin: std_logic;
    signal cout: std_logic;
    signal q: std_logic_vector(7 downto 0);

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
    UUT: sum_8bits_08092023
        port map (
            a => a,
            b => b,
            cin => cin,
            cout => cout,
            q => q
        );

    -- Genera estímulos de entrada (puedes cambiar estos valores según tus necesidades)
    --a <= "00000001";
    --b <= "00000001";
    --cin <= '0';

    -- Proceso de simulación
    process
    begin
        -- Inserta aquí tus estímulos de entrada si es necesario
		a <= "00110011";
		b <= "11001100";
		cin <= '0';
		wait for 10 ns;

	-- Inserta más estímulos o espera aquí según tus necesidades

        -- Finaliza la simulación
        wait;
    end process;

end tb_architecture;

