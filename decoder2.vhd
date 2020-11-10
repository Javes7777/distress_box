LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

Entity decoder2 is
PORT( seq     :  IN  UNSIGNED(5 downto 0);
		waveOut :  OUT STD_LOGIC   );
End decoder2;

Architecture Behaviour of decoder2 is
begin
	waveOut<= '1' when seq = 62 else
				 --pause
				 '1' when seq = 60 else
				 '1' when seq = 59 else
				 '1' when seq = 58 else
				 --pause
				 '1' when seq = 56 else
				 '1' when seq = 55 else
				 '1' when seq = 54 else
				  --pause
				 '1' when seq = 52 else
				 --first alphabet P is  completed (skipping 3 for a space)
				 '1' when seq = 48 else
				 --pause
				 '1' when seq = 46 else
				 -- second Alphabet I is completed (skipping 3 for a space)
				 '1' when seq = 42 else
				 '1' when seq = 41 else
				 '1' when seq = 40 else
				 --pause
				 '1' when seq = 38 else
				 --pause
				 '1' when seq = 36 else
				 '1' when seq = 35 else
				 '1' when seq = 34 else
				 --pause
				 '1' when seq = 32 else
				 '1' when seq = 31 else
				 '1' when seq = 30 else
				 --- 3rd alphabet Y is completed (skipping 3 for a space)
				 '1' when seq = 26 else
				 --pause
				 '1' when seq = 24 else
				 --pause
				 '1' when seq = 22 else
				 '1' when seq = 21 else
				 '1' when seq = 20 else
				 -- 4th letter U is completed (skipping 3 for a space)
				 '1' when seq = 16 else
				 --pause
				 '1' when seq = 14 else
				 --pause
				 '1' when seq = 12 else
				 -- 5th letter S is completed (skipping 3 for a space)
				 '1' when seq = 8 else
				 --pause
				 '1' when seq = 6 else
				 --pause
				 '1' when seq = 4 else
				 --pause
				 '1' when seq = 2 else
				 --last alphabet of my name is H and its over and 
				 -- and i am dead (again)
				 '0'; 
End Behaviour;