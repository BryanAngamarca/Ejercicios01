----------------------------------------------------------------------------------
-- Create Date:    18:55:04 07/06/2022 
-- Module Name:    Rep_18 - Behavioral 
-- Bryan Angamarca
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Rep_18 is
    Port ( clk,LOAD,ENP,RESET : in  STD_LOGIC;
           P : in  STD_LOGIC_VECTOR (3 downto 0);
           Q : inout  STD_LOGIC_VECTOR (3 downto 0));
end Rep_18;

architecture Behavioral of Rep_18 is

begin
	process(clk,LOAD,ENP,RESET)
	begin
		if(RESET='1') then
			Q <= "0000";
		elsif (clk' event and clk='1') then
			if(LOAD='0' and ENP='-') then
				Q <= P;
			elsif (LOAD='1' and ENP='0') then
				Q <= Q;
			elsif (LOAD='1' and ENP='1') then
				Q <= Q+1;
			end if;
		end if;
	end process;
end Behavioral;