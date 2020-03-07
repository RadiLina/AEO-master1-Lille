----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/27/2019 09:00:38 AM
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

ENTITY compte_1 IS 
PORT (e : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
s : OUT INTEGER RANGE 0 TO 3 );
END compte_1; 

ARCHITECTURE combinatoire OF compte_1 IS
BEGIN 
PROCESS(e)
VARIABLE nombre_1 : INTEGER;
BEGIN

    nombre_1 := 0;
    IF e(2) = '1' THEN
        nombre_1 := nombre_1 +1; --affectation directe a une variable 
    END IF;
    IF e(1) = '1' THEN
        nombre_1 := nombre_1 +1;
    END IF;
    IF e(0) = '1' THEN
        nombre_1 := nombre_1 +1;
    END IF;
    s <= nombre_1; --affectation a la sortie du process 
    END PROCESS;

END combinatoire ;