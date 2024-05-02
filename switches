library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity switches is
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
        audio_out1 : out std_logic;
        audio_out2 : out std_logic;
        audio_out3 : out std_logic;
        audio_out4 : out std_logic;
        audio_out5 : out std_logic;
        audio_out6 : out std_logic;
        audio_out7 : out std_logic
    );
end switches;

architecture Behavioral of switches is
    component NCO is
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
    end component;

    signal out_C, out_D, out_E, out_F, out_G, out_A, out_B: std_logic;
    signal any_switch_active: std_logic;

begin
    NCO_inst : NCO
        port map(
            clk    => clk,
            reset  => reset,
            out_C  => out_C,
            out_D  => out_D,
            out_E  => out_E,
            out_F  => out_F,
            out_G  => out_G,
            out_A  => out_A,
            out_B  => out_B
        );

    any_switch_active <= sw_C or sw_D or sw_E or sw_F or sw_G or sw_A or sw_B;

    audio_out1 <= out_C and sw_C;-- = '1';
    audio_out2 <= out_D and sw_D;-- = '1';
    audio_out3 <= out_E and sw_E;-- = '1';
    audio_out4 <= out_F and sw_F;-- = '1';
    audio_out5 <= out_G and sw_G;-- = '1';
    audio_out6 <= out_A and sw_A;-- = '1';
    audio_out7 <= out_B and sw_B;-- = '1';

end Behavioral;
