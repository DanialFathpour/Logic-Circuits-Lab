--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : Half_Adder_Schematic.vhf
-- /___/   /\     Timestamp : 03/01/2023 13:47:48
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: sch2hdl -intstyle ise -family spartan3 -flat -suppress -vhdl "D:/University/6/Logic Circuits Lab/Logic_circuits_lab_1/Half_Adder_Schematic.vhf" -w "D:/University/6/Logic Circuits Lab/Logic_circuits_lab_1/Half_Adder_Schematic.sch"
--Design Name: Half_Adder_Schematic
--Device: spartan3
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity Half_Adder_Schematic is
   port ( A0   : in    std_logic; 
          B0   : in    std_logic; 
          Cout : out   std_logic; 
          Sum  : out   std_logic);
end Half_Adder_Schematic;

architecture BEHAVIORAL of Half_Adder_Schematic is
   attribute BOX_TYPE   : string ;
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   component XOR2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of XOR2 : component is "BLACK_BOX";
   
begin
   XLXI_1 : AND2
      port map (I0=>B0,
                I1=>A0,
                O=>Cout);
   
   XLXI_2 : XOR2
      port map (I0=>B0,
                I1=>A0,
                O=>Sum);
   
end BEHAVIORAL;


