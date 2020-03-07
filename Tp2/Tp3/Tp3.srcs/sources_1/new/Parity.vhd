----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/27/2019 10:11:24 AM
-- Design Name: 
-- Module Name: Parity - Behavioral
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

entity Parity is
Port ( cin : in STD_LOGIC_VECTOR (7 downto 0);
       cout : out STD_LOGIC);
end Parity;

architecture Behavioral of Parity is

begin
process(cin)
begin
cout <= cin(0) xor cin(1) xor cin(2) xor cin(3) xor cin(4) xor cin(5) xor cin(6) xor cin(7); 
end process;

end Behavioral;
