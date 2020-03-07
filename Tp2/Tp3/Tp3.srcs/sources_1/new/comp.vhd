----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/27/2019 09:49:44 AM
-- Design Name: 
-- Module Name: comp - Behavioral
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

entity comp is
  Port (sa : in std_logic_vector(3 downto 0);
  sb : in std_logic_vector(3 downto 0);
  cout : out std_logic
 );

end comp;

architecture Behavioral of comp is

begin
process (sa,sb)
begin
    if sa = sb then 
        cout <= '1';
    else   
       cout <= '0';      
    end if; 
end process;

end Behavioral;
