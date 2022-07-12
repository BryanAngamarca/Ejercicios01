----------------------------------------------------------------------------------
-- Create Date:    15:23:31 07/06/2022 
-- Module Name:    Rep_01 - Behavioral 
-- Bryan Angamrca
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Rep_01 is
    Port ( x, control : in  STD_LOGIC;
           z : out  STD_LOGIC);
end Rep_01;

architecture Behavioral of Rep_01 is

begin
	z <= x when (control= '1');
end Behavioral;
