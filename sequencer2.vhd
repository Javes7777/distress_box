LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY sequencer2 IS
PORT( clk  : IN STD_LOGIC;
	   count : OUT UNSIGNED(5 DOWNTO 0) );
END sequencer2;

Architecture behaviour of sequencer2 IS 
signal Q : UNSIGNED(5 downto 0) := "111111";
begin
	process(clk)
	begin
		if(rising_edge(clk)) then 
			if(Q = 0) then
				Q <= "111111";
			else 
				Q <= Q-1;
			end if;
		end if;
	end process;
count<=Q;
End Behaviour;
