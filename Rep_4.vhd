----------------------------------------------------------------------------------
-- Create Date:    15:43:26 07/06/2022
-- Module Name:    Rep_04 - Behavioral 
-- Bryan Angamarca
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Rep_04 is
Port ( D,CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end Rep_04;

architecture forma01 of Rep_04 is

begin
	process (CLK )
	begin
		if (CLK' event and CLK='1') then
			Q <=D;
		end if;
	end process;
end  forma01;

architecture forma02 of Replica_04_ffd is

begin
	process (CLK )
	begin
		if (rising_edge(CLK)) then
			Q <=D;
		end if;
	end process;
end forma02;

