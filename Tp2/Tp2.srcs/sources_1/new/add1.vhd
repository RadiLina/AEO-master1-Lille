----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/20/2019 11:35:47 AM
-- Design Name: 
-- Module Name: add1 - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity add1 is
port(
  a,b,cin : in STD_LOGIC;
  s,cout : out STD_LOGIC
  );
end add1;

architecture Behavioral of add1 is

 signal resultat : unsigned(1 downto 0);
 
begin
resultat <= ('0' & a) + ('0' & b) + ('0' & cin);
s <= resultat(0);
cout <= resultat(1);

end Behavioral;
