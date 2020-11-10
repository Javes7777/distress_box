LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

Entity tb_decoder is 
End tb_decoder;

Architecture checking of tb_decoder is 

Component async_output_decoder is
PORT( seq     :  IN  UNSIGNED(5 downto 0);
	   waveOut :  OUT STD_LOGIC   );
End Component;
	
signal sequencer_in : UNSIGNED(5 downto 0);
signal wave_out     : STD_LOGIC;
signal temp         : UNSIGNED(5 downto 0) := "100010";
	
Begin
	DUT : async_output_decoder 
	Port map( seq=>sequencer_in, waveOut=>wave_out);
	
	process
		begin
			for ii in 0 to 34 loop
				temp <= temp-1;
				sequencer_in <= temp;
				wait for 5 ns;
			end loop;
		wait;
	end process;
End checking;