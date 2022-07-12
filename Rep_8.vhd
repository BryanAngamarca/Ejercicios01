----------------------------------------------------------------------------------
-- Create Date:    16:30:53 07/06/2022  
-- Module Name:    Rep_08 - serie
-- Bryan Angamarca
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Rep_08 is
    Port ( d, clk : in  STD_LOGIC;
           q : out  STD_LOGIC);
end Rep_08;

architecture serie of Rep_08 is
signal a,b: STD_LOGIC;
begin
	process (clk)
	begin
		if(clk' event and clk='1') then 
			a <= d;
			b <= a;
			q <= d;
		end if;
	end process;
end serie;