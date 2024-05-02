library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity switches_tb is
end switches_tb;

architecture Behavioral of switches_tb is
    component switches is
        Port (
            sw_C      : in  std_logic;
            sw_D      : in  std_logic;
            sw_E      : in  std_logic;
            sw_F      : in  std_logic;
            sw_G      : in  std_logic;
            sw_A      : in  std_logic;
            sw_B      : in  std_logic;
            clk       : in  std_logic;
            reset     : in  std_logic;
            audio_out : out std_logic
        );
    end component;

    signal sw_C_tb, sw_D_tb, sw_E_tb, sw_F_tb, sw_G_tb, sw_A_tb, sw_B_tb: std_logic;
    signal clk_tb, reset_tb: std_logic;
    signal audio_out_tb: std_logic;

begin
    DUT: switches
        port map(
            sw_C      => sw_C_tb,
            sw_D      => sw_D_tb,
            sw_E      => sw_E_tb,
            sw_F      => sw_F_tb,
            sw_G      => sw_G_tb,
            sw_A      => sw_A_tb,
            sw_B      => sw_B_tb,
            clk       => clk_tb,
            reset     => reset_tb,
            audio_out => audio_out_tb
        );

    stimulus_proc: process
    begin
        sw_C_tb <= '0';
        sw_D_tb <= '0';
        sw_E_tb <= '0';
        sw_F_tb <= '0';
        sw_G_tb <= '0';
        sw_A_tb <= '0';
        sw_B_tb <= '0';
        clk_tb <= '0';
        reset_tb <= '0';

        reset_tb <= '1';
        wait for 10 ns;
        reset_tb <= '0';

        sw_C_tb <= '1';
        wait for 100 ms;
        sw_C_tb <= '0';
        sw_D_tb <= '1';
        wait for 100 ms;
        sw_D_tb <= '0';
        sw_E_tb <= '1';
        wait for 100 ms;
        sw_E_tb <= '0';

        wait;
    end process stimulus_proc;

    clk_proc: process
    begin
        while true loop
            clk_tb <= '0';
            wait for 100 ns;
            clk_tb <= '1';
            wait for 100 ns;
        end loop;
    end process clk_proc;

end Behavioral;
