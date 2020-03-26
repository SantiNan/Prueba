---------------------------------------------------------
-- comparador		
-- creacion 12/03/2020
---------------------------------------------------------

-----------------------------------------------------------
----- PACKAGE pk_comparador
-----------------------------------------------------------
LIBRARY ieee ;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

PACKAGE pk_comparador IS
   COMPONENT comparador IS
   	PORT(
         ENT_1, ENT_2	: IN  STD_LOGIC_VECTOR(3 downto 0);
		 SAL			: OUT STD_LOGIC
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

ENTITY comparador IS
   	PORT(
         ENT_1, ENT_2	: IN  STD_LOGIC_VECTOR(3 downto 0);
		 SAL			: OUT STD_LOGIC
   		);
END comparador;

ARCHITECTURE comportamental_1 of comparador IS

--constants
--CONSTANT cero  : std_logic_vector(6 DOWNTO 0):= "0000001";

BEGIN

compara:
PROCESS (ENT_1, ENT_2)

	BEGIN
		if (ENT_1=ENT_2) then
			SAL <= '1';
		else
			SAL <= '0';
		end if;
	END PROCESS compara;
END comportamental_1;
   