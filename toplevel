library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity toplevel is
    Port (
        clk       : in  std_logic;
        reset     : in  std_logic;
        sw_A      : in  std_logic;
        sw_B      : in  std_logic;
        sw_C      : in  std_logic;
        sw_D      : in  std_logic;
        sw_E      : in  std_logic;
        sw_F      : in  std_logic;
        sw_G      : in  std_logic;
        audio_out : out std_logic
    );
end toplevel;

architecture Behavioral of toplevel is
    component switches is
        Port (
            clk        : in  std_logic;
            reset      : in  std_logic;
            sw_A       : in  std_logic;
            sw_B       : in  std_logic;
            sw_C       : in  std_logic;
            sw_D       : in  std_logic;
            sw_E       : in  std_logic;
            sw_F       : in  std_logic;
            sw_G       : in  std_logic;
            audio_out1 : out std_logic;
            audio_out2 : out std_logic;
            audio_out3 : out std_logic;
            audio_out4 : out std_logic;
            audio_out5 : out std_logic;
            audio_out6 : out std_logic;
            audio_out7 : out std_logic
        );
    end component;

    signal switches_audio_out1, switches_audio_out2, switches_audio_out3, switches_audio_out4, switches_audio_out5, switches_audio_out6, switches_audio_out7: std_logic;

begin
    switches_inst : switches
        port map(
            clk         => clk,
            reset       => reset,
            sw_A        => sw_A,
            sw_B        => sw_B,
            sw_C        => sw_C,
            sw_D        => sw_D,
            sw_E        => sw_E,
            sw_F        => sw_F,
            sw_G        => sw_G,
            audio_out1  => switches_audio_out1,
            audio_out2  => switches_audio_out2,
            audio_out3  => switches_audio_out3,
            audio_out4  => switches_audio_out4,
            audio_out5  => switches_audio_out5,
            audio_out6  => switches_audio_out6,
            audio_out7  => switches_audio_out7
        );
    audio_out <= switches_audio_out1 or switches_audio_out2 or switches_audio_out3 or switches_audio_out4 or switches_audio_out5 or switches_audio_out6 or switches_audio_out7;

end Behavioral;
