LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

Entity tb_box2 is 
End tb_box2;

Architecture checking of tb_box2 is 

Component box2 is
Port( clock, enable : IN STD_LOGIC;
		code_out      : OUT STD_LOGIC  );
End Component;
	
signal clock      : STD_LOGIC;
signal enable     : STD_LOGIC;
signal code_out   : STD_LOGIC;
	
Begin
	DUT : box2 
	Port map(clock, enable, code_out);
	enable<='1';
	process 
		begin
			for ii in 0 to 63 loop
				clock<='0';
				wait for 2.5 ns;			
				clock<='1';				
				wait for 2.5 ns;				--   (ii)  number of rising edges
			end loop;
			
		wait;
	end process;
End checking;