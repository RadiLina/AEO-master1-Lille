----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/20/2019 09:12:38 AM
-- Design Name: 
-- Module Name: exo1 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity exo1 is
    Port ( a : in STD_LOGIC_VECTOR (4 downto 0);
           s : out STD_LOGIC_VECTOR (2 downto 0));
end exo1;

architecture Behavioral of exo1 is

begin
with a select 
    s <=  "101" when "01001",
          "011" when "10010",
          "001" when others ;

end Behavioral;
