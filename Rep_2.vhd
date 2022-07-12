----------------------------------------------------------------------------------
-- Create Date:    15:30:12 07/06/2022 
-- Module Name:    Rep_2 - Behavioral 
-- Bryan Angamarca
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Rep_2 is
    Port ( dato, control : in  STD_LOGIC;
           salida : out  STD_LOGIC);
end Rep_2;

architecture Behavioral of Rep_2 is

begin
	process (dato,control)
	begin
		if control='1' then
			salida <=dato;
		end if;
	end process;
end Behavioral;

