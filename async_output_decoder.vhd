LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

Entity async_output_decoder is
PORT( seq     :  IN  UNSIGNED(5 downto 0);
		waveOut :  OUT STD_LOGIC   );
End async_output_decoder;

Architecture Behaviour of async_output_decoder is
begin
	waveOut<= '1' when seq = 33 else
				 '1' when seq = 31 else
				 '1' when seq = 29 else
				 --S and space
				 '1' when seq = 25 else
				 '1' when seq = 24 else
				 '1' when seq = 23 else
				 --space
				 '1' when seq = 21 else
				 '1' when seq = 20 else
				 '1' when seq = 19 else
				 --space
				 '1' when seq = 17 else
				 '1' when seq = 16 else
				 '1' when seq = 15 else
				 -- O and space
				 '1' when seq = 11 else
				 --space
				 '1' when seq = 09 else
				 --space
				 '1' when seq = 07 else
				 --S and
				 --i am dead
				 '0'; 
End Behaviour;