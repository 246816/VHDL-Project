LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY tb_NCO IS
END tb_NCO;

ARCHITECTURE behavior OF tb_NCO IS 
    COMPONENT NCO
        GENERIC(
            clk_freq : INTEGER := 100000000;
            freq_A   : INTEGER := 440;
            freq_B   : INTEGER := 493;
            freq_C   : INTEGER := 261;
            freq_D   : INTEGER := 293;
            freq_E   : INTEGER := 329;
            freq_F   : INTEGER := 349;
            freq_G   : INTEGER := 392
        );
        PORT(
            clk   : IN  std_logic;
            reset : IN  std_logic;
            out_A : OUT std_logic;
            out_B : OUT std_logic;
            out_C : OUT std_logic;
            out_D : OUT std_logic;
            out_E : OUT std_logic;
            out_F : OUT std_logic;
            out_G : OUT std_logic
        );
    END COMPONENT;
    
    SIGNAL clk   : std_logic := '0';
    SIGNAL reset : std_logic := '0';
    SIGNAL out_A : std_logic;
    SIGNAL out_B : std_logic;
    SIGNAL out_C : std_logic;
    SIGNAL out_D : std_logic;
    SIGNAL out_E : std_logic;
    SIGNAL out_F : std_logic;
    SIGNAL out_G : std_logic;
    SIGNAL pulse_count_A : INTEGER := 0;
    SIGNAL pulse_count_B : INTEGER := 0;
    SIGNAL pulse_count_C : INTEGER := 0;
    SIGNAL pulse_count_D : INTEGER := 0;
    SIGNAL pulse_count_E : INTEGER := 0;
    SIGNAL pulse_count_F : INTEGER := 0;
    SIGNAL pulse_count_G : INTEGER := 0;
    CONSTANT clk_period : TIME := 10 ns; -- 100MHz clock

BEGIN
    uut: NCO PORT MAP (
        clk   => clk,
        reset => reset,
        out_A => out_A,
        out_B => out_B,
        out_C => out_C,
        out_D => out_D,
        out_E => out_E,
        out_F => out_F,
        out_G => out_G
    );

    clk_process : PROCESS
    BEGIN
        clk <= '0';
        WAIT FOR clk_period/2;
        clk <= '1';
        WAIT FOR clk_period/2;
    END PROCESS;

    count_pulses : PROCESS
    BEGIN
        WAIT UNTIL rising_edge(clk);
        IF out_A'EVENT AND out_A = '1' THEN
            pulse_count_A <= pulse_count_A + 1;
        END IF;
        IF out_B'EVENT AND out_B = '1' THEN
            pulse_count_B <= pulse_count_B + 1;
        END IF;
        IF out_C'EVENT AND out_C = '1' THEN
            pulse_count_C <= pulse_count_C + 1;
        END IF;
        IF out_D'EVENT AND out_D = '1' THEN
            pulse_count_D <= pulse_count_D + 1;
        END IF;
        IF out_E'EVENT AND out_E = '1' THEN
            pulse_count_E <= pulse_count_E + 1;
        END IF;
        IF out_F'EVENT AND out_F = '1' THEN
            pulse_count_F <= pulse_count_F + 1;
        END IF;
        IF out_G'EVENT AND out_G = '1' THEN
            pulse_count_G <= pulse_count_G + 1;
        END IF;
    END PROCESS count_pulses;

    stim_proc: PROCESS
    BEGIN       
        reset <= '1';
        WAIT FOR 100 ns;  
        reset <= '0'; 
        WAIT FOR 100 ns;

        WAIT FOR 1 sec;

        ASSERT FALSE REPORT "Pulse Count A: " & INTEGER'image(pulse_count_A);
        ASSERT FALSE REPORT "Pulse Count B: " & INTEGER'image(pulse_count_B);
        ASSERT FALSE REPORT "Pulse Count C: " & INTEGER'image(pulse_count_C);
        ASSERT FALSE REPORT "Pulse Count D: " & INTEGER'image(pulse_count_D);
        ASSERT FALSE REPORT "Pulse Count E: " & INTEGER'image(pulse_count_E);
        ASSERT FALSE REPORT "Pulse Count F: " & INTEGER'image(pulse_count_F);
        ASSERT FALSE REPORT "Pulse Count G: " & INTEGER'image(pulse_count_G);

        WAIT; -- will wait forever
    END PROCESS stim_proc;
END behavior;
