# VHDL-Project

**Team members**
- Lukáš Gergel
- Šimon Brzobohatý
- Jan Jakoubek

**Theoretical description and explanation**

Topic 4: PWM-Based Tone Generator

Description: Develop a tone generator using PWM on the audio jack connector of the Nexys A7 FPGA board to produce simple musical tones or melodies. Users will be able to adjust parameters such as frequency and duration using buttons or switches. LEDs will offer visual indication of the currently generated tone.

**Hardware description of demo application**


![440782129_740598841569905_8780274180923476263_n](https://github.com/246816/VHDL-Project/assets/168731152/9fd17e1c-b194-40a5-99d5-e58ca24a343f)

This project is using the FPGA Nexys A7-50T board, which uses Butterworth low pass filter, that can only support mono audio out.

**Software description**

We created a number of switches, each corresponding to each desired tone, when flipped, these switches should work as an input to create a different tone, and output those tones into audio_out. At the core of it all is NCO (Numerically Controlled Oscillator), which generates each tone on a different frequency, and the signal output from that is channeled into an OR switch, which then is transferred to audio_out, finally, creating a sound. Each frequency in the NCO is created using the board's own 100MHz clock, which is then used to divide the desired frequency, as seen in the NCO file.

![image](https://github.com/246816/VHDL-Project/assets/168731152/9b8a07cc-e9cb-4bd0-8a10-85854c4ee029)


**Instructions**

Flipping a switch on the lower part of the board should prompt it to create a different tone, which can be listened to via audio jack 3.5mm, which has a port at the back side of the board.

**References**

For references we used the already created tools that we have written in VHDL throughout the whole VHDL course.
