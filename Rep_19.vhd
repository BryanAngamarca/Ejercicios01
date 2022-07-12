----------------------------------------------------------------------------------
-- Create Date:    21:01:03 07/06/2022
-- Module Name:    Rep_19 - pins
-- Bryan Angamarca
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Rep_19 is
	 generic (contador_valor: integer :=511);
	 Port ( clk,ld,clr,en : in  STD_LOGIC;
           data : in  integer range 0 to contador_valor;
           q : inout integer range 0 to contador_valor);
end Rep_19;

architecture pins of Rep_19 is
	signal contador_signal: integer range 0 to contador_valor;
begin
	process (clk,ld,clr,en)
	begin
		if(clr='0') then
			contador_signal <= 0;
		elsif (clk' event and clk='1') then
			if(en='1') then 
				if(ld='0') then
					contador_signal <= data;
				else
				contador_signal <= contador_signal+1;
				end if;
			end if;
		end if;
	end process;
end pins;