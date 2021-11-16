---------------------------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : sumator_sc
-- Author      : Barto
-- Company     : Universitatea Tehnica Cluj-Napoca
--
---------------------------------------------------------------------------------------------------
--
-- File        : D:\UTCN\Proiectare Logica Laboaratoare CE LUCREZ\Tema-pe-lab-8-PL-ASDN\Preg_lab_8\sumator_sc\compile\test.vhd
-- Generated   : Wed Nov 17 00:35:33 2021
-- From        : D:\UTCN\Proiectare Logica Laboaratoare CE LUCREZ\Tema-pe-lab-8-PL-ASDN\Preg_lab_8\sumator_sc\src\test.bde
-- By          : Bde2Vhdl ver. 2.6
--
---------------------------------------------------------------------------------------------------
--
-- Description : 
--
---------------------------------------------------------------------------------------------------
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;


entity test is
  port(
       Input0 : in STD_LOGIC;
       Input1 : in STD_LOGIC;
       Output0 : out STD_LOGIC
  );
end test;

architecture test of test is

begin

----  Component instantiations  ----

Output0 <= Input1 and Input0;


end test;
