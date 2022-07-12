----------------------------------------------------------------------------------
-- Create Date:    16:53:52 07/06/2022 
-- Module Name:    Rep_10 - Behavioral 
-- Bryan Angamarca
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Rep_10 is
    Port ( clk : in  STD_LOGIC;
           D : in  STD_LOGIC_VECTOR (0 to 7);
           Q : out  STD_LOGIC_VECTOR (0 to 7));
end Rep_10;

architecture Behavioral of Rep_10 is

begin
	process (clk)
	begin
		if(clk' event and clk='1') then 
			Q <= D;
		end if;
	end process;
end Behavioral;
