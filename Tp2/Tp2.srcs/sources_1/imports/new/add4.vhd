----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/13/2019 03:06:24 PM
-- Design Name: 
-- Module Name: add4 - Behavioral
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

entity add4 is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           s : out STD_LOGIC_VECTOR (3 downto 0);
           cin : in STD_LOGIC := '0';
           cout : out STD_LOGIC
           );
end add4;

architecture Behavioral of add4 is

component add1
    port
     (a,b,cin : in STD_LOGIC;
      s,cout : out STD_LOGIC
  );
end component add1;

signal c : unsigned(2 downto 0);

begin
inst_add0: add1 port map(a(0), b(0),cin, s(0) ,c(0));
inst_add1: add1 port map(a(1), b(1), c(0), s(1), c(1));
inst_add2: add1 port map(a(2), b(2),c(1), s(2), c(2));
inst_add3: add1 port map(a(3), b(3), c(2), s(3), cout);
end Behavioral;

