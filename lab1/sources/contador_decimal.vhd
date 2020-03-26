---------------------------------------------------------
-- contador_decimal
-- creacion 12/03/2020
---------------------------------------------------------

-----------------------------------------------------------
----- PACKAGE pk_contador_decimal
-----------------------------------------------------------
LIBRARY ieee ;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

PACKAGE pk_contador_decimal IS
   COMPONENT contador_decimal IS
   	PORT(
         ENABLE, CLK, CLEAR_N	: IN  STD_LOGIC;
		 COUNT				: OUT STD_LOGIC_VECTOR(3 downto 0)
   		);
   END COMPONENT;
END PACKAGE;
-----------------------------------------------------------
----- ENTITY contador_decimal
-----------------------------------------------------------

LIBRARY ieee ;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

ENTITY contador_decimal IS
   	PORT(
         ENABLE, CLK, CLEAR_N	: IN  STD_LOGIC;
		 COUNT					: OUT STD_LOGIC_VECTOR(3 downto 0)
   		);
END contador_decimal;

ARCHITECTURE comportamental of contador_decimal IS

SIGNAL mem: STD_LOGIC_VECTOR(3 downto 0); 

BEGIN

cuenta:
PROCESS (CLK, CLEAR_N, ENABLE)

--variable mem: STD_LOGIC_VECTOR(3 downto 0);

BEGIN
   --COUNT <= mem;
   if (CLK'event AND CLK='1') then
		if (CLEAR_N='0') then
			mem <= (OTHERS => '0');
		elsif (ENABLE ='1') then
			if (mem = 1001) then
				mem <= (OTHERS => '0');
			else
				mem <= mem +'1';
			end if;
		end if;	
   end if;
END PROCESS cuenta;

COUNT <= mem;

END comportamental;
   