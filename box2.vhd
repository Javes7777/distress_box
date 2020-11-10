LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

Entity box2 is
Port( clock, enable : IN STD_LOGIC;
		code_out      : OUT STD_LOGIC  );
End box2;

Architecture struct of box2 is

Component sequencer2 is
PORT( clk  : IN STD_LOGIC;
	   count : OUT UNSIGNED(5 DOWNTO 0) );
End Component;

Component decoder2 is
PORT( seq     :  IN  UNSIGNED(5 downto 0);
	   waveOut :  OUT STD_LOGIC   );
End Component;

signal ordinary_wire : UNSIGNED(5 downto 0);
signal output_hold   : STD_LOGIC;

begin

	sequence_producer : sequencer2 port map(clk=>clock, count=>ordinary_wire );
	decoder           : decoder2 port map( seq=>ordinary_wire, waveOut=>output_hold);
	
	code_out <= output_hold when Enable = '1' else
	            '0';
End struct;