----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/13/2019 03:58:07 PM
-- Design Name: 
-- Module Name: my_add - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity my_add is
   Port ( sw : in STD_LOGIC_VECTOR (15 downto 0);
           led : out STD_LOGIC_VECTOR (15 downto 0);
           dp: out STD_LOGIC );
end my_add;

architecture Behavioral of my_add is
  signal a : std_logic_vector(3 downto 0);
  signal b : std_logic_vector(3 downto 0);
  signal sum : std_logic_vector(4 downto 0);
begin

a(0)<=sw(0) ;
a(1)<=sw(1) ;
a(2)<=sw(2) ;
a(3)<=sw(3) ;

b(0)<=sw(12) ;
b(1)<=sw(13) ;
b(2)<=sw(14) ;
b(3)<=sw(15) ;

sum <= ('0' & b) + ('0' & a);

led(3 downto 0) <= sum(3 downto 0);


dp <= not sum(4); --ajouter un not 

end Behavioral;
