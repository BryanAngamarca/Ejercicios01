----------------------------------------------------------------------------------
-- Create Date:    17:16:39 07/06/2022 
-- Module Name:    Rep_12 - cuenta
-- Bryan Angamarca
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Rep_12 is
    Port ( clk : in  STD_LOGIC;
           q : inout  STD_LOGIC_VECTOR (3 downto 0));
end Rep_12;

architecture cuenta of Rep_12 is

begin
	process(clk)
	begin
		if(clk' event and clk='1') then 
				q <= q + 1;
		end if;
	end process;
end cuenta;