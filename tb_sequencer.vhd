LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

Entity tb_sequencer is
End tb_sequencer;

Architecture checking of tb_sequencer is

Component sequencer is
PORT( clk  : IN STD_LOGIC;
	   count : OUT UNSIGNED(5 DOWNTO 0) );
End Component;

signal clock : STD_LOGIC;
signal count : UNSIGNED(5 DOWNTO 0);

Begin

DUT : sequencer
PORT MAP(clk=>clock, count=>count);
	process 
		begin
		for ii in 0 to 40 loop
			clock<='0';
			wait for 2.5 ns;			
			clock<='1';				
			wait for 2.5 ns;				--   (ii)  number of rising edges
		end loop;
			
		wait;
	end process;
End checking;