----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/20/2019 09:27:03 AM
-- Design Name: 
-- Module Name: exo2 - Behavioral
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

entity exo2 is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : in STD_LOGIC;
           adr : in STD_LOGIC_VECTOR (1 downto 0);
           s : out STD_LOGIC);
end exo2;

architecture Behavioral of exo2 is
-- multiplexeur 
begin
--    s <=    ( a AND NOT adr(1) AND NOT adr(0) )

--    OR ( b AND NOT adr(1) AND adr(0) )

--    OR ( c AND adr(1) AND NOT adr(0) )

--    OR ( d AND adr(1) AND adr(0) );
with adr select 
    s <=  a when "00",
          b when "01",
          c when "10",
          d when others ;

end Behavioral;
