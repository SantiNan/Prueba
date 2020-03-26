---------------------------------------------------------
-- sistema completo
-- creacion 12/03/2020
---------------------------------------------------------

LIBRARY ieee ;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.pk_contador_decimal.all;
use work.pk_comparador.all;
use work.pk_hex27seg.all;
use work.pk_freq_div.all;

ENTITY sistema_en_placa IS
   	PORT(
         BUTTONENA, BUTTONCL, CLK_ENT	: IN  STD_LOGIC;
		 UNIDADES, DECENAS			: OUT STD_LOGIC_VECTOR(6 downto 0)
   		);
END sistema_en_placa;

ARCHITECTURE estructural_3 of sistema_en_placa IS

component newsp
	PORT
	(
		probe		: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		source		: OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
	);
end component;

--signals
signal COUNTU, COUNTD: std_logic_vector (3 downto 0); 
signal COMP_OUT, CLK_SAL: std_logic;


--constants
--CONSTANT nueve  : std_logic_vector(3 DOWNTO 0):= "1001";
SIGNAL nueve  : std_logic_vector(3 DOWNTO 0);

BEGIN

	CONT1: contador_decimal port map (
			CLEAR_N => BUTTONCL,
			ENABLE => BUTTONENA,
			CLK => CLK_SAL,
			COUNT => COUNTU);
	CONT2: contador_decimal port map (
			CLEAR_N => BUTTONCL,
			ENABLE => (BUTTONENA and COMP_OUT),
			CLK => CLK_SAL,
			COUNT => COUNTD);
	HEX1: hex27seg port map (
			hex_in => COUNTU,
			seg_out => UNIDADES);
	HEX2: hex27seg port map (
			hex_in => COUNTD,
			seg_out => DECENAS);
			
			--COMP_OUT <= '1' WHEN COUNTU = nueve ELSE '0';
			
	COMP1: comparador port map (
			ENT_1 => COUNTU,
			ENT_2 => nueve,
			SAL => COMP_OUT);

	FREQ_DIV_1: freq_div port map (
			CLK_IN => CLK_ENT,
			CLK_OUT => CLK_SAL);
	MI_SP: newsp PORT MAP (
		probe	 => COUNTU,
		source	 => nueve
	);
	
END estructural_3;