---------------------------------------------------------------------------------------------------
--
-- Title       : No Title
-- Design      : sumator_sc
-- Author      : Barto
-- Company     : Universitatea Tehnica Cluj-Napoca
--
---------------------------------------------------------------------------------------------------
--
-- File        : D:\UTCN\Proiectare Logica Laboaratoare CE LUCREZ\Tema-pe-lab-8-PL-ASDN\Preg_lab_8\sumator_sc\compile\Sumator_Scazator_1bit.vhd
-- Generated   : Wed Nov 17 01:01:10 2021
-- From        : D:\UTCN\Proiectare Logica Laboaratoare CE LUCREZ\Tema-pe-lab-8-PL-ASDN\Preg_lab_8\sumator_sc\src\Sumator_Scazator_1bit.bde
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


-- other libraries declarations
-- synopsys translate_off 
library XC9500;
library IEEE;
use IEEE.vital_timing.all;
-- synopsys translate_on 

entity Sumator_Scazator_1bit is
  port(
       A0 : in STD_LOGIC;
       A1 : in STD_LOGIC;
       A2 : in STD_LOGIC;
       A3 : in STD_LOGIC;
       Adunare0_Scadere1 : in STD_LOGIC;
       B0 : in std_ulogic;
       B1 : in std_ulogic;
       B2 : in std_ulogic;
       B3 : in std_ulogic;
       S0 : out STD_LOGIC;
       S1 : out STD_LOGIC;
       S2 : out STD_LOGIC;
       S3 : out STD_LOGIC;
       Transportul : out STD_LOGIC
  );
end Sumator_Scazator_1bit;

architecture Sumator_Scazator_1bit of Sumator_Scazator_1bit is

---- Component declarations -----

component XOR2
-- synopsys translate_off
  generic(
       InstancePath : STRING := "*";
       MsgOn : BOOLEAN := False;
       TimingChecksOn : BOOLEAN := FALSE;
       Xon : BOOLEAN := TRUE;
       tipd_I0 : VitalDelayType01 := (0.0 ns,0.0 ns);
       tipd_I1 : VitalDelayType01 := (0.0 ns,0.0 ns);
       tpd_I0_O : VitalDelayType01 := (0.0 ns,0.0 ns);
       tpd_I1_O : VitalDelayType01 := (0.0 ns,0.0 ns)
  );
-- synopsys translate_on
  port (
       I0 : in std_ulogic;
       I1 : in std_ulogic;
       O : out std_ulogic
  );
end component;
component ADD4
  port (
       A0 : in STD_LOGIC;
       A1 : in STD_LOGIC;
       A2 : in STD_LOGIC;
       A3 : in STD_LOGIC;
       B0 : in STD_LOGIC;
       B1 : in STD_LOGIC;
       B2 : in STD_LOGIC;
       B3 : in STD_LOGIC;
       CI : in STD_LOGIC;
       CO : out STD_LOGIC;
       OFL : out STD_LOGIC;
       S0 : out STD_LOGIC;
       S1 : out STD_LOGIC;
       S2 : out STD_LOGIC;
       S3 : out STD_LOGIC
  );
end component;

---- Signal declarations used on the diagram ----

signal NET188 : STD_LOGIC;
signal NET196 : STD_LOGIC;
signal NET280 : STD_LOGIC;
signal NET295 : STD_LOGIC;

---- Configuration specifications for declared components 

-- synopsys translate_off
for U1 : ADD4 use entity xc9500.ADD4;
-- synopsys translate_on
-- synopsys translate_off
for U2 : XOR2 use entity xc9500.XOR2;
-- synopsys translate_on
-- synopsys translate_off
for U3 : XOR2 use entity xc9500.XOR2;
-- synopsys translate_on
-- synopsys translate_off
for U4 : XOR2 use entity xc9500.XOR2;
-- synopsys translate_on
-- synopsys translate_off
for U5 : XOR2 use entity xc9500.XOR2;
-- synopsys translate_on

begin

----  Component instantiations  ----

U1 : ADD4
  port map(
       A0 => A0,
       A1 => A1,
       A2 => A2,
       A3 => A3,
       B0 => NET188,
       B1 => NET196,
       B2 => NET280,
       B3 => NET295,
       CI => Adunare0_Scadere1,
       CO => Transportul,
       S0 => S0,
       S1 => S1,
       S2 => S2,
       S3 => S3
  );

U2 : XOR2
  port map(
       I0 => Adunare0_Scadere1,
       I1 => B0,
       O => NET188
  );

U3 : XOR2
  port map(
       I0 => Adunare0_Scadere1,
       I1 => B1,
       O => NET196
  );

U4 : XOR2
  port map(
       I0 => Adunare0_Scadere1,
       I1 => B2,
       O => NET280
  );

U5 : XOR2
  port map(
       I0 => Adunare0_Scadere1,
       I1 => B3,
       O => NET295
  );


end Sumator_Scazator_1bit;
