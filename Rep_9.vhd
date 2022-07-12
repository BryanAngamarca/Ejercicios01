----------------------------------------------------------------------------------
-- Create Date:    16:40:56 07/06/2022 
-- Module Name:    Rep_9 - Behavioral 
-- Bryan Angamarca
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Rep_9 is
	Port ( d, clk : in  STD_LOGIC;
           q : out  STD_LOGIC);
end Rep_9;

architecture Behavioral of Rep_9 is

begin
	process (clk)
	variable a: STD_LOGIC;
	variable b: STD_LOGIC;
	begin
		if(clk' event and clk='1') then 
			a := d;
			b := a;
			q <= b;
		end if;
	end process;
end Behavioral;