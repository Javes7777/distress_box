LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

Entity tb_distress_box is 
End tb_distress_box;

Architecture checking of tb_distress_box is 

Component distress_box is
PORT( clock, set, enable : IN STD_LOGIC;
		code_out           : OUT STD_LOGIC );
End Component;

	
signal clock      : STD_LOGIC;
signal enable     : STD_LOGIC;
signal code_out   : STD_LOGIC;
signal set 			: STD_LOGIC; 
	
Begin
	DUT : distress_box 
	Port map(clock, set, enable, code_out);

	enable<='1';
	process 
		begin
		set<='0';
		for ii in 0 to 34 loop
			clock<='0';
			wait for 2.5 ns;			
			clock<='1';				
			wait for 2.5 ns;				--   (ii)  number of rising edges
		end loop;
		set<='1';
		for ii in 0 to 63 loop
			clock<='0';
			wait for 2.5 ns;			
			clock<='1';				
			wait for 2.5 ns;				--   (ii)  number of rising edges
		end loop;
		wait;
	end process;
End checking;