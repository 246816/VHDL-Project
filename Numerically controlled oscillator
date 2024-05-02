library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity NCO is
    generic(
        clk_freq : integer := 100000000;
        freq_C   : integer := 261;
        freq_D   : integer := 293;
        freq_E   : integer := 329;
        freq_F   : integer := 349;
        freq_G   : integer := 392;
        freq_A   : integer := 440;
        freq_B   : integer := 493
    );
    port(
        clk    : in  std_logic;
        reset  : in  std_logic;
        out_C  : out std_logic;
        out_D  : out std_logic;
        out_E  : out std_logic;
        out_F  : out std_logic;
        out_G  : out std_logic;
        out_A  : out std_logic;
        out_B  : out std_logic
    );
end NCO;

architecture behavior of NCO is
    
    constant divider_C : integer := clk_freq / (2 * freq_C);
    constant divider_D : integer := clk_freq / (2 * freq_D);
    constant divider_E : integer := clk_freq / (2 * freq_E);
    constant divider_F : integer := clk_freq / (2 * freq_F);
    constant divider_G : integer := clk_freq / (2 * freq_G);
    constant divider_A : integer := clk_freq / (2 * freq_A);
    constant divider_B : integer := clk_freq / (2 * freq_B);

    
    signal counter_C, counter_D, counter_E, counter_F, counter_G, counter_A, counter_B: integer := 0;

    
    signal out_signal_C, out_signal_D, out_signal_E, out_signal_F, out_signal_G, out_signal_A, out_signal_B: std_logic := '0';
begin
    
    process(clk, reset)
    begin
        if reset = '1' then
            counter_C <= 0; counter_D <= 0; counter_E <= 0; counter_F <= 0; counter_G <= 0; counter_A <= 0; counter_B <= 0;
            out_signal_C <= '0'; out_signal_D <= '0'; out_signal_E <= '0'; out_signal_F <= '0'; out_signal_G <= '0'; out_signal_A <= '0'; out_signal_B <= '0';
        elsif rising_edge(clk) then
            -- Note C
            if counter_C >= divider_C - 1 then
                counter_C <= 0;
                out_signal_C <= not out_signal_C;
            else
                counter_C <= counter_C + 1;
            end if;
            
            -- Note D
            if counter_D >= divider_D - 1 then
                counter_D <= 0;
                out_signal_D <= not out_signal_D;
            else
                counter_D <= counter_D + 1;
            end if;

            -- Note E
            if counter_E >= divider_E - 1 then
                counter_E <= 0;
                out_signal_E <= not out_signal_E;
            else
                counter_E <= counter_E + 1;
            end if;

            -- Note F
            if counter_F >= divider_F - 1 then
                counter_F <= 0;
                out_signal_F <= not out_signal_F;
            else
                counter_F <= counter_F + 1;
            end if;

            -- Note G
            if counter_G >= divider_G - 1 then
                counter_G <= 0;
                out_signal_G <= not out_signal_G;
            else
                counter_G <= counter_G + 1;
            end if;

            -- Note A
            if counter_A >= divider_A - 1 then
                counter_A <= 0;
                out_signal_A <= not out_signal_A;
            else
                counter_A <= counter_A + 1;
            end if;

            -- Note B
            if counter_B >= divider_B - 1 then
                counter_B <= 0;
                out_signal_B <= not out_signal_B;
            else
                counter_B <= counter_B + 1;
            end if;
        end if;
    end process;
    
    
    out_C <= out_signal_C;
    out_D <= out_signal_D;
    out_E <= out_signal_E;
    out_F <= out_signal_F;
    out_G <= out_signal_G;
    out_A <= out_signal_A;
    out_B <= out_signal_B;
end behavior;
