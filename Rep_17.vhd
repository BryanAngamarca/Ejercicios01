----------------------------------------------------------------------------------
-- Create Date:    18:46:06 07/06/2022 
-- Module Name:    Rep_17 - Behavioral 
-- Bryan Angamarca
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Rep_17 is
    Port ( clk,LD,UP : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (2 downto 0);
           Q : inout  STD_LOGIC_VECTOR (2 downto 0));
end Rep_17;

architecture Behavioral of Rep_17 is

begin
	process(clk,LD,D,UP)
	begin
		if(clk' event and clk='1') then
			if(LD='0') then
				Q <= D;
			elsif UP='1' then
				Q <= Q+1;
			else 
				Q <= Q-1;
			end if;
		end if;
	end process;
end Behavioral;