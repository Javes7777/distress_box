LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY sequencer IS
PORT( clk  : IN STD_LOGIC;
	   count : OUT UNSIGNED(5 DOWNTO 0) );
END sequencer;

Architecture behaviour of sequencer IS 
signal Q : UNSIGNED(5 downto 0) := "100010";
begin
	process(clk)
	begin
		if(rising_edge(clk)) then 
			if(Q = 0) then
				Q <= "100010";
			else 
				Q <= Q-1;
			end if;
		end if;
	end process;
count<=Q;
End Behaviour;
