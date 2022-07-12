----------------------------------------------------------------------------------
-- Create Date:    15:54:02 07/06/2022 
-- Module Name:    Rep_05 - Behavioral 
-- Bryan Angamarca
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Rep_05 is
    Port ( D,RESET,clk : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end Rep_05;

architecture Behavioral of Rep_05 is

begin
	process (clk,D,RESET)
	begin
		if RESET='1' then
			Q <= '0';
		elsif(clk' event and clk='1') then
			Q <= D;
		end if;
	end process;
end Behavioral;
