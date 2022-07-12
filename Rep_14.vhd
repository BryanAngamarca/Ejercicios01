----------------------------------------------------------------------------------
-- Create Date:    18:15:29 07/06/2022 
-- Module Name:    Rep_14 - modulo 
-- Bryan Angamarca
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Rep_14 is
    Port ( clk,reset : in  STD_LOGIC;
           q : inout  STD_LOGIC_VECTOR (3 downto 0));
end Rep_14;

architecture modulo of Rep_14 is

begin
	process(clk, reset)
	begin
		if(clk' event and clk='1') then
			if(reset='1' or q="1001") then
				q <= "0000";
			else
				q <= q+1;
			end if;
		end if;
	end process;
end modulo;