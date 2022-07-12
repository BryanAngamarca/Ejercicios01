----------------------------------------------------------------------------------
-- Create Date:    15:37:26 07/06/2022 
-- Module Name:    Rep_03 - Behavioral 
-- Bryan Angamarca
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Rep_03 is
    Port ( D,CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC);
end Rep_03;

architecture Behavioral of Rep_03 is

begin
	process (CLK )
	begin
		if (CLK' event and CLK='1') then
			Q <=D;
		end if;
	end process;

end Behavioral;