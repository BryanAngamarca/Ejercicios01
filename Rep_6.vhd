----------------------------------------------------------------------------------
-- Create Date:    16:00:17 07/06/2022 
-- Module Name:    Rep_6 - Behavioral 
-- Bryan Angamarca
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Rep_6 is
    Port ( D,EN,RESET,clk : in  STD_LOGIC;
           Q : inout  STD_LOGIC);
end Rep_6;

architecture Behavioral of Rep_6 is
	signal q_aux:STD_LOGIC;
begin
	process (clk,RESET,EN)
	begin
		if RESET='1' then
			q_aux <= '0';
		elsif(clk' event and clk='1') then
			if(EN='1') then
				q_aux <= D;
			else
				q_aux <= Q;
			end if;
		end if;
	end process;
	Q <= q_aux;
end Behavioral;
