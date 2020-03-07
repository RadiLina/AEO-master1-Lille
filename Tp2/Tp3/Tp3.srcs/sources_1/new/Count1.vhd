----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/27/2019 10:27:48 AM
-- Design Name: 
-- Module Name: Count1 - Behavioral
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
use ieee.std_logic_arith.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Count1 is
PORT (e : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      cout : out STD_LOGIC_VECTOR (3 downto 0) );
end Count1;
--    nombre_1 := 0;   --initialisation de nombre a zero
    
--    IF e(7) = '1' THEN
--        nombre_1 := nombre_1 +1;
--    END IF;
--    IF e(6) = '1' THEN
--        nombre_1 := nombre_1 +1;
--    END IF; 
--    IF e(5) = '1' THEN
--        nombre_1 := nombre_1 +1;
--    END IF;  
--    IF e(4) = '1' THEN
--        nombre_1 := nombre_1 +1;
--    END IF;
--    IF e(3) = '1' THEN
--        nombre_1 := nombre_1 +1;
--    END IF;                      
--    IF e(2) = '1' THEN
--        nombre_1 := nombre_1 +1;
--    END IF;
--    IF e(1) = '1' THEN
--        nombre_1 := nombre_1 +1;
--    END IF;
--    IF e(0) = '1' THEN
--        nombre_1 := nombre_1 +1;
--    END IF;
--    s <= nombre_1;
--    END PROCESS;
architecture Behavioral of Count1 is
begin

    PROCESS(e)
    VARIABLE count : INTEGER := 0;
    begin
        cout <= "0000"; --initialisation de la variable a zero
    
        for I in 0 to 7 loop     --loop sur les 7 ports du switch
            IF e(I) = '1' THEN 
                count := count + 1;
            END IF;
        end loop; 
        
        cout <= conv_std_logic_vector(count, 4);
    END PROCESS;

end Behavioral;



