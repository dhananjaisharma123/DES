
--------> /opt/mentorgraphics/Catapult_10.5c/Mgc_home/pkgs/siflibs/ccs_in_v1.vhd 
--------------------------------------------------------------------------------
-- Catapult Synthesis - Sample I/O Port Library
--
-- Copyright (c) 2003-2017 Mentor Graphics Corp.
--       All Rights Reserved
--
-- This document may be used and distributed without restriction provided that
-- this copyright statement is not removed from the file and that any derivative
-- work contains this copyright notice.
--
-- The design information contained in this file is intended to be an example
-- of the functionality which the end user may study in preparation for creating
-- their own custom interfaces. This design does not necessarily present a 
-- complete implementation of the named protocol or standard.
--
--------------------------------------------------------------------------------

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

PACKAGE ccs_in_pkg_v1 IS

COMPONENT ccs_in_v1
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    idat   : OUT std_logic_vector(width-1 DOWNTO 0);
    dat    : IN  std_logic_vector(width-1 DOWNTO 0)
  );
END COMPONENT;

END ccs_in_pkg_v1;

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all; -- Prevent STARC 2.1.1.2 violation

ENTITY ccs_in_v1 IS
  GENERIC (
    rscid : INTEGER;
    width : INTEGER
  );
  PORT (
    idat  : OUT std_logic_vector(width-1 DOWNTO 0);
    dat   : IN  std_logic_vector(width-1 DOWNTO 0)
  );
END ccs_in_v1;

ARCHITECTURE beh OF ccs_in_v1 IS
BEGIN

  idat <= dat;

END beh;


--------> /opt/mentorgraphics/Catapult_10.5c/Mgc_home/pkgs/siflibs/ccs_out_v1.vhd 
--------------------------------------------------------------------------------
-- Catapult Synthesis - Sample I/O Port Library
--
-- Copyright (c) 2003-2017 Mentor Graphics Corp.
--       All Rights Reserved
--
-- This document may be used and distributed without restriction provided that
-- this copyright statement is not removed from the file and that any derivative
-- work contains this copyright notice.
--
-- The design information contained in this file is intended to be an example
-- of the functionality which the end user may study in preparation for creating
-- their own custom interfaces. This design does not necessarily present a 
-- complete implementation of the named protocol or standard.
--
--------------------------------------------------------------------------------

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

PACKAGE ccs_out_pkg_v1 IS

COMPONENT ccs_out_v1
  GENERIC (
    rscid    : INTEGER;
    width    : INTEGER
  );
  PORT (
    dat    : OUT std_logic_vector(width-1 DOWNTO 0);
    idat   : IN  std_logic_vector(width-1 DOWNTO 0)
  );
END COMPONENT;

END ccs_out_pkg_v1;

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all; -- Prevent STARC 2.1.1.2 violation

ENTITY ccs_out_v1 IS
  GENERIC (
    rscid : INTEGER;
    width : INTEGER
  );
  PORT (
    dat   : OUT std_logic_vector(width-1 DOWNTO 0);
    idat  : IN  std_logic_vector(width-1 DOWNTO 0)
  );
END ccs_out_v1;

ARCHITECTURE beh OF ccs_out_v1 IS
BEGIN

  dat <= idat;

END beh;


--------> /opt/mentorgraphics/Catapult_10.5c/Mgc_home/pkgs/siflibs/mgc_io_sync_v2.vhd 
--------------------------------------------------------------------------------
-- Catapult Synthesis - Sample I/O Port Library
--
-- Copyright (c) 2003-2017 Mentor Graphics Corp.
--       All Rights Reserved
--
-- This document may be used and distributed without restriction provided that
-- this copyright statement is not removed from the file and that any derivative
-- work contains this copyright notice.
--
-- The design information contained in this file is intended to be an example
-- of the functionality which the end user may study in preparation for creating
-- their own custom interfaces. This design does not necessarily present a 
-- complete implementation of the named protocol or standard.
--
--------------------------------------------------------------------------------

LIBRARY ieee;

USE ieee.std_logic_1164.all;
PACKAGE mgc_io_sync_pkg_v2 IS

COMPONENT mgc_io_sync_v2
  GENERIC (
    valid    : INTEGER RANGE 0 TO 1
  );
  PORT (
    ld       : IN    std_logic;
    lz       : OUT   std_logic
  );
END COMPONENT;

END mgc_io_sync_pkg_v2;

LIBRARY ieee;

USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all; -- Prevent STARC 2.1.1.2 violation

ENTITY mgc_io_sync_v2 IS
  GENERIC (
    valid    : INTEGER RANGE 0 TO 1
  );
  PORT (
    ld       : IN    std_logic;
    lz       : OUT   std_logic
  );
END mgc_io_sync_v2;

ARCHITECTURE beh OF mgc_io_sync_v2 IS
BEGIN

  lz <= ld;

END beh;


--------> ../td_ccore_solutions/ROM_1i6_1o4_cfafff97e973ca9580e646fecdc2f814b3_0/rtl.vhdl 
-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    10.5c/896140 Production Release
--  HLS Date:       Sun Sep  6 22:45:38 PDT 2020
-- 
--  Generated by:   ds6365@hansolo.poly.edu
--  Generated date: Mon Mar  1 00:26:13 2021
-- ----------------------------------------------------------------------

-- 
-- ------------------------------------------------------------------
--  Design Unit:    ROM_1i6_1o4_cfafff97e973ca9580e646fecdc2f814b3
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;


ENTITY ROM_1i6_1o4_cfafff97e973ca9580e646fecdc2f814b3 IS
  PORT(
    I_1 : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
    O_1 : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
  );
END ROM_1i6_1o4_cfafff97e973ca9580e646fecdc2f814b3;

ARCHITECTURE v1 OF ROM_1i6_1o4_cfafff97e973ca9580e646fecdc2f814b3 IS
  -- Default Constants

  FUNCTION MUX_v_4_64_2(input_0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_5 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_6 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_7 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_8 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_9 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_10 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_11 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_12 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_13 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_14 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_15 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_16 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_17 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_18 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_19 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_20 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_21 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_22 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_23 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_24 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_25 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_26 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_27 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_28 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_29 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_30 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_31 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_32 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_33 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_34 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_35 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_36 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_37 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_38 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_39 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_40 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_41 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_42 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_43 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_44 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_45 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_46 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_47 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_48 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_49 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_50 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_51 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_52 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_53 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_54 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_55 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_56 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_57 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_58 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_59 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_60 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_61 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_62 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_63 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(5 DOWNTO 0))
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(3 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN "000000" =>
          result := input_0;
        WHEN "000001" =>
          result := input_1;
        WHEN "000010" =>
          result := input_2;
        WHEN "000011" =>
          result := input_3;
        WHEN "000100" =>
          result := input_4;
        WHEN "000101" =>
          result := input_5;
        WHEN "000110" =>
          result := input_6;
        WHEN "000111" =>
          result := input_7;
        WHEN "001000" =>
          result := input_8;
        WHEN "001001" =>
          result := input_9;
        WHEN "001010" =>
          result := input_10;
        WHEN "001011" =>
          result := input_11;
        WHEN "001100" =>
          result := input_12;
        WHEN "001101" =>
          result := input_13;
        WHEN "001110" =>
          result := input_14;
        WHEN "001111" =>
          result := input_15;
        WHEN "010000" =>
          result := input_16;
        WHEN "010001" =>
          result := input_17;
        WHEN "010010" =>
          result := input_18;
        WHEN "010011" =>
          result := input_19;
        WHEN "010100" =>
          result := input_20;
        WHEN "010101" =>
          result := input_21;
        WHEN "010110" =>
          result := input_22;
        WHEN "010111" =>
          result := input_23;
        WHEN "011000" =>
          result := input_24;
        WHEN "011001" =>
          result := input_25;
        WHEN "011010" =>
          result := input_26;
        WHEN "011011" =>
          result := input_27;
        WHEN "011100" =>
          result := input_28;
        WHEN "011101" =>
          result := input_29;
        WHEN "011110" =>
          result := input_30;
        WHEN "011111" =>
          result := input_31;
        WHEN "100000" =>
          result := input_32;
        WHEN "100001" =>
          result := input_33;
        WHEN "100010" =>
          result := input_34;
        WHEN "100011" =>
          result := input_35;
        WHEN "100100" =>
          result := input_36;
        WHEN "100101" =>
          result := input_37;
        WHEN "100110" =>
          result := input_38;
        WHEN "100111" =>
          result := input_39;
        WHEN "101000" =>
          result := input_40;
        WHEN "101001" =>
          result := input_41;
        WHEN "101010" =>
          result := input_42;
        WHEN "101011" =>
          result := input_43;
        WHEN "101100" =>
          result := input_44;
        WHEN "101101" =>
          result := input_45;
        WHEN "101110" =>
          result := input_46;
        WHEN "101111" =>
          result := input_47;
        WHEN "110000" =>
          result := input_48;
        WHEN "110001" =>
          result := input_49;
        WHEN "110010" =>
          result := input_50;
        WHEN "110011" =>
          result := input_51;
        WHEN "110100" =>
          result := input_52;
        WHEN "110101" =>
          result := input_53;
        WHEN "110110" =>
          result := input_54;
        WHEN "110111" =>
          result := input_55;
        WHEN "111000" =>
          result := input_56;
        WHEN "111001" =>
          result := input_57;
        WHEN "111010" =>
          result := input_58;
        WHEN "111011" =>
          result := input_59;
        WHEN "111100" =>
          result := input_60;
        WHEN "111101" =>
          result := input_61;
        WHEN "111110" =>
          result := input_62;
        WHEN others =>
          result := input_63;
      END CASE;
    RETURN result;
  END;

BEGIN
  O_1 <= MUX_v_4_64_2(STD_LOGIC_VECTOR'( "1111"), STD_LOGIC_VECTOR'( "0001"), STD_LOGIC_VECTOR'(
      "1000"), STD_LOGIC_VECTOR'( "1110"), STD_LOGIC_VECTOR'( "0110"), STD_LOGIC_VECTOR'(
      "1011"), STD_LOGIC_VECTOR'( "0011"), STD_LOGIC_VECTOR'( "0100"), STD_LOGIC_VECTOR'(
      "1001"), STD_LOGIC_VECTOR'( "0111"), STD_LOGIC_VECTOR'( "0010"), STD_LOGIC_VECTOR'(
      "1101"), STD_LOGIC_VECTOR'( "1100"), STD_LOGIC_VECTOR'( "0000"), STD_LOGIC_VECTOR'(
      "0101"), STD_LOGIC_VECTOR'( "1010"), STD_LOGIC_VECTOR'( "0011"), STD_LOGIC_VECTOR'(
      "1101"), STD_LOGIC_VECTOR'( "0100"), STD_LOGIC_VECTOR'( "0111"), STD_LOGIC_VECTOR'(
      "1111"), STD_LOGIC_VECTOR'( "0010"), STD_LOGIC_VECTOR'( "1000"), STD_LOGIC_VECTOR'(
      "1110"), STD_LOGIC_VECTOR'( "1100"), STD_LOGIC_VECTOR'( "0000"), STD_LOGIC_VECTOR'(
      "0001"), STD_LOGIC_VECTOR'( "1010"), STD_LOGIC_VECTOR'( "0110"), STD_LOGIC_VECTOR'(
      "1001"), STD_LOGIC_VECTOR'( "1011"), STD_LOGIC_VECTOR'( "0101"), STD_LOGIC_VECTOR'(
      "0000"), STD_LOGIC_VECTOR'( "1110"), STD_LOGIC_VECTOR'( "0111"), STD_LOGIC_VECTOR'(
      "1011"), STD_LOGIC_VECTOR'( "1010"), STD_LOGIC_VECTOR'( "0100"), STD_LOGIC_VECTOR'(
      "1101"), STD_LOGIC_VECTOR'( "0001"), STD_LOGIC_VECTOR'( "0101"), STD_LOGIC_VECTOR'(
      "1000"), STD_LOGIC_VECTOR'( "1100"), STD_LOGIC_VECTOR'( "0110"), STD_LOGIC_VECTOR'(
      "1001"), STD_LOGIC_VECTOR'( "0011"), STD_LOGIC_VECTOR'( "0010"), STD_LOGIC_VECTOR'(
      "1111"), STD_LOGIC_VECTOR'( "1101"), STD_LOGIC_VECTOR'( "1000"), STD_LOGIC_VECTOR'(
      "1010"), STD_LOGIC_VECTOR'( "0001"), STD_LOGIC_VECTOR'( "0011"), STD_LOGIC_VECTOR'(
      "1111"), STD_LOGIC_VECTOR'( "0100"), STD_LOGIC_VECTOR'( "0010"), STD_LOGIC_VECTOR'(
      "1011"), STD_LOGIC_VECTOR'( "0110"), STD_LOGIC_VECTOR'( "0111"), STD_LOGIC_VECTOR'(
      "1100"), STD_LOGIC_VECTOR'( "0000"), STD_LOGIC_VECTOR'( "0101"), STD_LOGIC_VECTOR'(
      "1110"), STD_LOGIC_VECTOR'( "1001"), I_1);
END v1;




--------> ../td_ccore_solutions/ROM_1i6_1o4_d0e242163cbb0b2ce9c4399bc1cb50f5b3_0/rtl.vhdl 
-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    10.5c/896140 Production Release
--  HLS Date:       Sun Sep  6 22:45:38 PDT 2020
-- 
--  Generated by:   ds6365@hansolo.poly.edu
--  Generated date: Mon Mar  1 00:26:47 2021
-- ----------------------------------------------------------------------

-- 
-- ------------------------------------------------------------------
--  Design Unit:    ROM_1i6_1o4_d0e242163cbb0b2ce9c4399bc1cb50f5b3
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;


ENTITY ROM_1i6_1o4_d0e242163cbb0b2ce9c4399bc1cb50f5b3 IS
  PORT(
    I_1 : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
    O_1 : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
  );
END ROM_1i6_1o4_d0e242163cbb0b2ce9c4399bc1cb50f5b3;

ARCHITECTURE v1 OF ROM_1i6_1o4_d0e242163cbb0b2ce9c4399bc1cb50f5b3 IS
  -- Default Constants

  FUNCTION MUX_v_4_64_2(input_0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_5 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_6 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_7 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_8 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_9 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_10 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_11 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_12 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_13 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_14 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_15 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_16 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_17 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_18 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_19 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_20 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_21 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_22 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_23 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_24 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_25 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_26 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_27 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_28 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_29 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_30 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_31 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_32 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_33 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_34 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_35 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_36 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_37 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_38 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_39 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_40 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_41 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_42 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_43 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_44 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_45 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_46 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_47 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_48 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_49 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_50 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_51 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_52 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_53 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_54 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_55 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_56 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_57 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_58 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_59 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_60 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_61 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_62 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_63 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(5 DOWNTO 0))
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(3 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN "000000" =>
          result := input_0;
        WHEN "000001" =>
          result := input_1;
        WHEN "000010" =>
          result := input_2;
        WHEN "000011" =>
          result := input_3;
        WHEN "000100" =>
          result := input_4;
        WHEN "000101" =>
          result := input_5;
        WHEN "000110" =>
          result := input_6;
        WHEN "000111" =>
          result := input_7;
        WHEN "001000" =>
          result := input_8;
        WHEN "001001" =>
          result := input_9;
        WHEN "001010" =>
          result := input_10;
        WHEN "001011" =>
          result := input_11;
        WHEN "001100" =>
          result := input_12;
        WHEN "001101" =>
          result := input_13;
        WHEN "001110" =>
          result := input_14;
        WHEN "001111" =>
          result := input_15;
        WHEN "010000" =>
          result := input_16;
        WHEN "010001" =>
          result := input_17;
        WHEN "010010" =>
          result := input_18;
        WHEN "010011" =>
          result := input_19;
        WHEN "010100" =>
          result := input_20;
        WHEN "010101" =>
          result := input_21;
        WHEN "010110" =>
          result := input_22;
        WHEN "010111" =>
          result := input_23;
        WHEN "011000" =>
          result := input_24;
        WHEN "011001" =>
          result := input_25;
        WHEN "011010" =>
          result := input_26;
        WHEN "011011" =>
          result := input_27;
        WHEN "011100" =>
          result := input_28;
        WHEN "011101" =>
          result := input_29;
        WHEN "011110" =>
          result := input_30;
        WHEN "011111" =>
          result := input_31;
        WHEN "100000" =>
          result := input_32;
        WHEN "100001" =>
          result := input_33;
        WHEN "100010" =>
          result := input_34;
        WHEN "100011" =>
          result := input_35;
        WHEN "100100" =>
          result := input_36;
        WHEN "100101" =>
          result := input_37;
        WHEN "100110" =>
          result := input_38;
        WHEN "100111" =>
          result := input_39;
        WHEN "101000" =>
          result := input_40;
        WHEN "101001" =>
          result := input_41;
        WHEN "101010" =>
          result := input_42;
        WHEN "101011" =>
          result := input_43;
        WHEN "101100" =>
          result := input_44;
        WHEN "101101" =>
          result := input_45;
        WHEN "101110" =>
          result := input_46;
        WHEN "101111" =>
          result := input_47;
        WHEN "110000" =>
          result := input_48;
        WHEN "110001" =>
          result := input_49;
        WHEN "110010" =>
          result := input_50;
        WHEN "110011" =>
          result := input_51;
        WHEN "110100" =>
          result := input_52;
        WHEN "110101" =>
          result := input_53;
        WHEN "110110" =>
          result := input_54;
        WHEN "110111" =>
          result := input_55;
        WHEN "111000" =>
          result := input_56;
        WHEN "111001" =>
          result := input_57;
        WHEN "111010" =>
          result := input_58;
        WHEN "111011" =>
          result := input_59;
        WHEN "111100" =>
          result := input_60;
        WHEN "111101" =>
          result := input_61;
        WHEN "111110" =>
          result := input_62;
        WHEN others =>
          result := input_63;
      END CASE;
    RETURN result;
  END;

BEGIN
  O_1 <= MUX_v_4_64_2(STD_LOGIC_VECTOR'( "0111"), STD_LOGIC_VECTOR'( "1101"), STD_LOGIC_VECTOR'(
      "1110"), STD_LOGIC_VECTOR'( "0011"), STD_LOGIC_VECTOR'( "0000"), STD_LOGIC_VECTOR'(
      "0110"), STD_LOGIC_VECTOR'( "1001"), STD_LOGIC_VECTOR'( "1010"), STD_LOGIC_VECTOR'(
      "0001"), STD_LOGIC_VECTOR'( "0010"), STD_LOGIC_VECTOR'( "1000"), STD_LOGIC_VECTOR'(
      "0101"), STD_LOGIC_VECTOR'( "1011"), STD_LOGIC_VECTOR'( "1100"), STD_LOGIC_VECTOR'(
      "0100"), STD_LOGIC_VECTOR'( "1111"), STD_LOGIC_VECTOR'( "1101"), STD_LOGIC_VECTOR'(
      "1000"), STD_LOGIC_VECTOR'( "1011"), STD_LOGIC_VECTOR'( "0101"), STD_LOGIC_VECTOR'(
      "0110"), STD_LOGIC_VECTOR'( "1111"), STD_LOGIC_VECTOR'( "0000"), STD_LOGIC_VECTOR'(
      "0011"), STD_LOGIC_VECTOR'( "0100"), STD_LOGIC_VECTOR'( "0111"), STD_LOGIC_VECTOR'(
      "0010"), STD_LOGIC_VECTOR'( "1100"), STD_LOGIC_VECTOR'( "0001"), STD_LOGIC_VECTOR'(
      "1010"), STD_LOGIC_VECTOR'( "1110"), STD_LOGIC_VECTOR'( "1001"), STD_LOGIC_VECTOR'(
      "1010"), STD_LOGIC_VECTOR'( "0110"), STD_LOGIC_VECTOR'( "1001"), STD_LOGIC_VECTOR'(
      "0000"), STD_LOGIC_VECTOR'( "1100"), STD_LOGIC_VECTOR'( "1011"), STD_LOGIC_VECTOR'(
      "0111"), STD_LOGIC_VECTOR'( "1101"), STD_LOGIC_VECTOR'( "1111"), STD_LOGIC_VECTOR'(
      "0001"), STD_LOGIC_VECTOR'( "0011"), STD_LOGIC_VECTOR'( "1110"), STD_LOGIC_VECTOR'(
      "0101"), STD_LOGIC_VECTOR'( "0010"), STD_LOGIC_VECTOR'( "1000"), STD_LOGIC_VECTOR'(
      "0100"), STD_LOGIC_VECTOR'( "0011"), STD_LOGIC_VECTOR'( "1111"), STD_LOGIC_VECTOR'(
      "0000"), STD_LOGIC_VECTOR'( "0110"), STD_LOGIC_VECTOR'( "1010"), STD_LOGIC_VECTOR'(
      "0001"), STD_LOGIC_VECTOR'( "1101"), STD_LOGIC_VECTOR'( "1000"), STD_LOGIC_VECTOR'(
      "1001"), STD_LOGIC_VECTOR'( "0100"), STD_LOGIC_VECTOR'( "0101"), STD_LOGIC_VECTOR'(
      "1011"), STD_LOGIC_VECTOR'( "1100"), STD_LOGIC_VECTOR'( "0111"), STD_LOGIC_VECTOR'(
      "0010"), STD_LOGIC_VECTOR'( "1110"), I_1);
END v1;




--------> ../td_ccore_solutions/ROM_1i6_1o4_752c7ca65a598ada4acee0cd63d199c3b3_0/rtl.vhdl 
-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    10.5c/896140 Production Release
--  HLS Date:       Sun Sep  6 22:45:38 PDT 2020
-- 
--  Generated by:   ds6365@hansolo.poly.edu
--  Generated date: Mon Mar  1 00:26:38 2021
-- ----------------------------------------------------------------------

-- 
-- ------------------------------------------------------------------
--  Design Unit:    ROM_1i6_1o4_752c7ca65a598ada4acee0cd63d199c3b3
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;


ENTITY ROM_1i6_1o4_752c7ca65a598ada4acee0cd63d199c3b3 IS
  PORT(
    I_1 : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
    O_1 : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
  );
END ROM_1i6_1o4_752c7ca65a598ada4acee0cd63d199c3b3;

ARCHITECTURE v1 OF ROM_1i6_1o4_752c7ca65a598ada4acee0cd63d199c3b3 IS
  -- Default Constants

  FUNCTION MUX_v_4_64_2(input_0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_5 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_6 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_7 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_8 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_9 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_10 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_11 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_12 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_13 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_14 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_15 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_16 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_17 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_18 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_19 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_20 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_21 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_22 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_23 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_24 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_25 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_26 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_27 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_28 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_29 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_30 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_31 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_32 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_33 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_34 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_35 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_36 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_37 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_38 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_39 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_40 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_41 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_42 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_43 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_44 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_45 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_46 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_47 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_48 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_49 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_50 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_51 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_52 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_53 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_54 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_55 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_56 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_57 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_58 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_59 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_60 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_61 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_62 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_63 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(5 DOWNTO 0))
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(3 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN "000000" =>
          result := input_0;
        WHEN "000001" =>
          result := input_1;
        WHEN "000010" =>
          result := input_2;
        WHEN "000011" =>
          result := input_3;
        WHEN "000100" =>
          result := input_4;
        WHEN "000101" =>
          result := input_5;
        WHEN "000110" =>
          result := input_6;
        WHEN "000111" =>
          result := input_7;
        WHEN "001000" =>
          result := input_8;
        WHEN "001001" =>
          result := input_9;
        WHEN "001010" =>
          result := input_10;
        WHEN "001011" =>
          result := input_11;
        WHEN "001100" =>
          result := input_12;
        WHEN "001101" =>
          result := input_13;
        WHEN "001110" =>
          result := input_14;
        WHEN "001111" =>
          result := input_15;
        WHEN "010000" =>
          result := input_16;
        WHEN "010001" =>
          result := input_17;
        WHEN "010010" =>
          result := input_18;
        WHEN "010011" =>
          result := input_19;
        WHEN "010100" =>
          result := input_20;
        WHEN "010101" =>
          result := input_21;
        WHEN "010110" =>
          result := input_22;
        WHEN "010111" =>
          result := input_23;
        WHEN "011000" =>
          result := input_24;
        WHEN "011001" =>
          result := input_25;
        WHEN "011010" =>
          result := input_26;
        WHEN "011011" =>
          result := input_27;
        WHEN "011100" =>
          result := input_28;
        WHEN "011101" =>
          result := input_29;
        WHEN "011110" =>
          result := input_30;
        WHEN "011111" =>
          result := input_31;
        WHEN "100000" =>
          result := input_32;
        WHEN "100001" =>
          result := input_33;
        WHEN "100010" =>
          result := input_34;
        WHEN "100011" =>
          result := input_35;
        WHEN "100100" =>
          result := input_36;
        WHEN "100101" =>
          result := input_37;
        WHEN "100110" =>
          result := input_38;
        WHEN "100111" =>
          result := input_39;
        WHEN "101000" =>
          result := input_40;
        WHEN "101001" =>
          result := input_41;
        WHEN "101010" =>
          result := input_42;
        WHEN "101011" =>
          result := input_43;
        WHEN "101100" =>
          result := input_44;
        WHEN "101101" =>
          result := input_45;
        WHEN "101110" =>
          result := input_46;
        WHEN "101111" =>
          result := input_47;
        WHEN "110000" =>
          result := input_48;
        WHEN "110001" =>
          result := input_49;
        WHEN "110010" =>
          result := input_50;
        WHEN "110011" =>
          result := input_51;
        WHEN "110100" =>
          result := input_52;
        WHEN "110101" =>
          result := input_53;
        WHEN "110110" =>
          result := input_54;
        WHEN "110111" =>
          result := input_55;
        WHEN "111000" =>
          result := input_56;
        WHEN "111001" =>
          result := input_57;
        WHEN "111010" =>
          result := input_58;
        WHEN "111011" =>
          result := input_59;
        WHEN "111100" =>
          result := input_60;
        WHEN "111101" =>
          result := input_61;
        WHEN "111110" =>
          result := input_62;
        WHEN others =>
          result := input_63;
      END CASE;
    RETURN result;
  END;

BEGIN
  O_1 <= MUX_v_4_64_2(STD_LOGIC_VECTOR'( "0100"), STD_LOGIC_VECTOR'( "1011"), STD_LOGIC_VECTOR'(
      "0010"), STD_LOGIC_VECTOR'( "1110"), STD_LOGIC_VECTOR'( "1111"), STD_LOGIC_VECTOR'(
      "0000"), STD_LOGIC_VECTOR'( "1000"), STD_LOGIC_VECTOR'( "1101"), STD_LOGIC_VECTOR'(
      "0011"), STD_LOGIC_VECTOR'( "1100"), STD_LOGIC_VECTOR'( "1001"), STD_LOGIC_VECTOR'(
      "0111"), STD_LOGIC_VECTOR'( "0101"), STD_LOGIC_VECTOR'( "1010"), STD_LOGIC_VECTOR'(
      "0110"), STD_LOGIC_VECTOR'( "0001"), STD_LOGIC_VECTOR'( "1101"), STD_LOGIC_VECTOR'(
      "0000"), STD_LOGIC_VECTOR'( "1011"), STD_LOGIC_VECTOR'( "0111"), STD_LOGIC_VECTOR'(
      "0100"), STD_LOGIC_VECTOR'( "1001"), STD_LOGIC_VECTOR'( "0001"), STD_LOGIC_VECTOR'(
      "1010"), STD_LOGIC_VECTOR'( "1110"), STD_LOGIC_VECTOR'( "0011"), STD_LOGIC_VECTOR'(
      "0101"), STD_LOGIC_VECTOR'( "1100"), STD_LOGIC_VECTOR'( "0010"), STD_LOGIC_VECTOR'(
      "1111"), STD_LOGIC_VECTOR'( "1000"), STD_LOGIC_VECTOR'( "0110"), STD_LOGIC_VECTOR'(
      "0001"), STD_LOGIC_VECTOR'( "0100"), STD_LOGIC_VECTOR'( "1011"), STD_LOGIC_VECTOR'(
      "1101"), STD_LOGIC_VECTOR'( "1100"), STD_LOGIC_VECTOR'( "0011"), STD_LOGIC_VECTOR'(
      "0111"), STD_LOGIC_VECTOR'( "1110"), STD_LOGIC_VECTOR'( "1010"), STD_LOGIC_VECTOR'(
      "1111"), STD_LOGIC_VECTOR'( "0110"), STD_LOGIC_VECTOR'( "1000"), STD_LOGIC_VECTOR'(
      "0000"), STD_LOGIC_VECTOR'( "0101"), STD_LOGIC_VECTOR'( "1001"), STD_LOGIC_VECTOR'(
      "0010"), STD_LOGIC_VECTOR'( "0110"), STD_LOGIC_VECTOR'( "1011"), STD_LOGIC_VECTOR'(
      "1101"), STD_LOGIC_VECTOR'( "1000"), STD_LOGIC_VECTOR'( "0001"), STD_LOGIC_VECTOR'(
      "0100"), STD_LOGIC_VECTOR'( "1010"), STD_LOGIC_VECTOR'( "0111"), STD_LOGIC_VECTOR'(
      "1001"), STD_LOGIC_VECTOR'( "0101"), STD_LOGIC_VECTOR'( "0000"), STD_LOGIC_VECTOR'(
      "1111"), STD_LOGIC_VECTOR'( "1110"), STD_LOGIC_VECTOR'( "0010"), STD_LOGIC_VECTOR'(
      "0011"), STD_LOGIC_VECTOR'( "1100"), I_1);
END v1;




--------> ../td_ccore_solutions/ROM_1i6_1o4_ef717c7c87dc90ac6f7b34d533fe115fb3_0/rtl.vhdl 
-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    10.5c/896140 Production Release
--  HLS Date:       Sun Sep  6 22:45:38 PDT 2020
-- 
--  Generated by:   ds6365@hansolo.poly.edu
--  Generated date: Mon Mar  1 00:26:05 2021
-- ----------------------------------------------------------------------

-- 
-- ------------------------------------------------------------------
--  Design Unit:    ROM_1i6_1o4_ef717c7c87dc90ac6f7b34d533fe115fb3
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;


ENTITY ROM_1i6_1o4_ef717c7c87dc90ac6f7b34d533fe115fb3 IS
  PORT(
    I_1 : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
    O_1 : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
  );
END ROM_1i6_1o4_ef717c7c87dc90ac6f7b34d533fe115fb3;

ARCHITECTURE v1 OF ROM_1i6_1o4_ef717c7c87dc90ac6f7b34d533fe115fb3 IS
  -- Default Constants

  FUNCTION MUX_v_4_64_2(input_0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_5 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_6 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_7 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_8 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_9 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_10 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_11 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_12 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_13 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_14 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_15 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_16 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_17 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_18 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_19 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_20 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_21 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_22 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_23 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_24 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_25 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_26 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_27 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_28 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_29 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_30 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_31 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_32 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_33 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_34 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_35 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_36 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_37 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_38 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_39 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_40 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_41 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_42 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_43 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_44 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_45 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_46 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_47 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_48 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_49 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_50 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_51 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_52 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_53 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_54 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_55 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_56 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_57 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_58 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_59 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_60 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_61 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_62 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_63 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(5 DOWNTO 0))
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(3 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN "000000" =>
          result := input_0;
        WHEN "000001" =>
          result := input_1;
        WHEN "000010" =>
          result := input_2;
        WHEN "000011" =>
          result := input_3;
        WHEN "000100" =>
          result := input_4;
        WHEN "000101" =>
          result := input_5;
        WHEN "000110" =>
          result := input_6;
        WHEN "000111" =>
          result := input_7;
        WHEN "001000" =>
          result := input_8;
        WHEN "001001" =>
          result := input_9;
        WHEN "001010" =>
          result := input_10;
        WHEN "001011" =>
          result := input_11;
        WHEN "001100" =>
          result := input_12;
        WHEN "001101" =>
          result := input_13;
        WHEN "001110" =>
          result := input_14;
        WHEN "001111" =>
          result := input_15;
        WHEN "010000" =>
          result := input_16;
        WHEN "010001" =>
          result := input_17;
        WHEN "010010" =>
          result := input_18;
        WHEN "010011" =>
          result := input_19;
        WHEN "010100" =>
          result := input_20;
        WHEN "010101" =>
          result := input_21;
        WHEN "010110" =>
          result := input_22;
        WHEN "010111" =>
          result := input_23;
        WHEN "011000" =>
          result := input_24;
        WHEN "011001" =>
          result := input_25;
        WHEN "011010" =>
          result := input_26;
        WHEN "011011" =>
          result := input_27;
        WHEN "011100" =>
          result := input_28;
        WHEN "011101" =>
          result := input_29;
        WHEN "011110" =>
          result := input_30;
        WHEN "011111" =>
          result := input_31;
        WHEN "100000" =>
          result := input_32;
        WHEN "100001" =>
          result := input_33;
        WHEN "100010" =>
          result := input_34;
        WHEN "100011" =>
          result := input_35;
        WHEN "100100" =>
          result := input_36;
        WHEN "100101" =>
          result := input_37;
        WHEN "100110" =>
          result := input_38;
        WHEN "100111" =>
          result := input_39;
        WHEN "101000" =>
          result := input_40;
        WHEN "101001" =>
          result := input_41;
        WHEN "101010" =>
          result := input_42;
        WHEN "101011" =>
          result := input_43;
        WHEN "101100" =>
          result := input_44;
        WHEN "101101" =>
          result := input_45;
        WHEN "101110" =>
          result := input_46;
        WHEN "101111" =>
          result := input_47;
        WHEN "110000" =>
          result := input_48;
        WHEN "110001" =>
          result := input_49;
        WHEN "110010" =>
          result := input_50;
        WHEN "110011" =>
          result := input_51;
        WHEN "110100" =>
          result := input_52;
        WHEN "110101" =>
          result := input_53;
        WHEN "110110" =>
          result := input_54;
        WHEN "110111" =>
          result := input_55;
        WHEN "111000" =>
          result := input_56;
        WHEN "111001" =>
          result := input_57;
        WHEN "111010" =>
          result := input_58;
        WHEN "111011" =>
          result := input_59;
        WHEN "111100" =>
          result := input_60;
        WHEN "111101" =>
          result := input_61;
        WHEN "111110" =>
          result := input_62;
        WHEN others =>
          result := input_63;
      END CASE;
    RETURN result;
  END;

BEGIN
  O_1 <= MUX_v_4_64_2(STD_LOGIC_VECTOR'( "0010"), STD_LOGIC_VECTOR'( "1100"), STD_LOGIC_VECTOR'(
      "0100"), STD_LOGIC_VECTOR'( "0001"), STD_LOGIC_VECTOR'( "0111"), STD_LOGIC_VECTOR'(
      "1010"), STD_LOGIC_VECTOR'( "1011"), STD_LOGIC_VECTOR'( "0110"), STD_LOGIC_VECTOR'(
      "1000"), STD_LOGIC_VECTOR'( "0101"), STD_LOGIC_VECTOR'( "0011"), STD_LOGIC_VECTOR'(
      "1111"), STD_LOGIC_VECTOR'( "1101"), STD_LOGIC_VECTOR'( "0000"), STD_LOGIC_VECTOR'(
      "1110"), STD_LOGIC_VECTOR'( "1001"), STD_LOGIC_VECTOR'( "1110"), STD_LOGIC_VECTOR'(
      "1011"), STD_LOGIC_VECTOR'( "0010"), STD_LOGIC_VECTOR'( "1100"), STD_LOGIC_VECTOR'(
      "0100"), STD_LOGIC_VECTOR'( "0111"), STD_LOGIC_VECTOR'( "1101"), STD_LOGIC_VECTOR'(
      "0001"), STD_LOGIC_VECTOR'( "0101"), STD_LOGIC_VECTOR'( "0000"), STD_LOGIC_VECTOR'(
      "1111"), STD_LOGIC_VECTOR'( "1010"), STD_LOGIC_VECTOR'( "0011"), STD_LOGIC_VECTOR'(
      "1001"), STD_LOGIC_VECTOR'( "1000"), STD_LOGIC_VECTOR'( "0110"), STD_LOGIC_VECTOR'(
      "0100"), STD_LOGIC_VECTOR'( "0010"), STD_LOGIC_VECTOR'( "0001"), STD_LOGIC_VECTOR'(
      "1011"), STD_LOGIC_VECTOR'( "1010"), STD_LOGIC_VECTOR'( "1101"), STD_LOGIC_VECTOR'(
      "0111"), STD_LOGIC_VECTOR'( "1000"), STD_LOGIC_VECTOR'( "1111"), STD_LOGIC_VECTOR'(
      "1001"), STD_LOGIC_VECTOR'( "1100"), STD_LOGIC_VECTOR'( "0101"), STD_LOGIC_VECTOR'(
      "0110"), STD_LOGIC_VECTOR'( "0011"), STD_LOGIC_VECTOR'( "0000"), STD_LOGIC_VECTOR'(
      "1110"), STD_LOGIC_VECTOR'( "1011"), STD_LOGIC_VECTOR'( "1000"), STD_LOGIC_VECTOR'(
      "1100"), STD_LOGIC_VECTOR'( "0111"), STD_LOGIC_VECTOR'( "0001"), STD_LOGIC_VECTOR'(
      "1110"), STD_LOGIC_VECTOR'( "0010"), STD_LOGIC_VECTOR'( "1101"), STD_LOGIC_VECTOR'(
      "0110"), STD_LOGIC_VECTOR'( "1111"), STD_LOGIC_VECTOR'( "0000"), STD_LOGIC_VECTOR'(
      "1001"), STD_LOGIC_VECTOR'( "1010"), STD_LOGIC_VECTOR'( "0100"), STD_LOGIC_VECTOR'(
      "0101"), STD_LOGIC_VECTOR'( "0011"), I_1);
END v1;




--------> ../td_ccore_solutions/ROM_1i6_1o4_3c5c29b75c561d2b741f22e5a3a569dbb3_0/rtl.vhdl 
-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    10.5c/896140 Production Release
--  HLS Date:       Sun Sep  6 22:45:38 PDT 2020
-- 
--  Generated by:   ds6365@hansolo.poly.edu
--  Generated date: Mon Mar  1 00:26:30 2021
-- ----------------------------------------------------------------------

-- 
-- ------------------------------------------------------------------
--  Design Unit:    ROM_1i6_1o4_3c5c29b75c561d2b741f22e5a3a569dbb3
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;


ENTITY ROM_1i6_1o4_3c5c29b75c561d2b741f22e5a3a569dbb3 IS
  PORT(
    I_1 : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
    O_1 : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
  );
END ROM_1i6_1o4_3c5c29b75c561d2b741f22e5a3a569dbb3;

ARCHITECTURE v1 OF ROM_1i6_1o4_3c5c29b75c561d2b741f22e5a3a569dbb3 IS
  -- Default Constants

  FUNCTION MUX_v_4_64_2(input_0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_5 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_6 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_7 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_8 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_9 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_10 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_11 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_12 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_13 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_14 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_15 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_16 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_17 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_18 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_19 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_20 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_21 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_22 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_23 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_24 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_25 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_26 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_27 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_28 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_29 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_30 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_31 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_32 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_33 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_34 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_35 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_36 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_37 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_38 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_39 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_40 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_41 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_42 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_43 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_44 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_45 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_46 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_47 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_48 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_49 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_50 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_51 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_52 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_53 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_54 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_55 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_56 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_57 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_58 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_59 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_60 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_61 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_62 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_63 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(5 DOWNTO 0))
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(3 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN "000000" =>
          result := input_0;
        WHEN "000001" =>
          result := input_1;
        WHEN "000010" =>
          result := input_2;
        WHEN "000011" =>
          result := input_3;
        WHEN "000100" =>
          result := input_4;
        WHEN "000101" =>
          result := input_5;
        WHEN "000110" =>
          result := input_6;
        WHEN "000111" =>
          result := input_7;
        WHEN "001000" =>
          result := input_8;
        WHEN "001001" =>
          result := input_9;
        WHEN "001010" =>
          result := input_10;
        WHEN "001011" =>
          result := input_11;
        WHEN "001100" =>
          result := input_12;
        WHEN "001101" =>
          result := input_13;
        WHEN "001110" =>
          result := input_14;
        WHEN "001111" =>
          result := input_15;
        WHEN "010000" =>
          result := input_16;
        WHEN "010001" =>
          result := input_17;
        WHEN "010010" =>
          result := input_18;
        WHEN "010011" =>
          result := input_19;
        WHEN "010100" =>
          result := input_20;
        WHEN "010101" =>
          result := input_21;
        WHEN "010110" =>
          result := input_22;
        WHEN "010111" =>
          result := input_23;
        WHEN "011000" =>
          result := input_24;
        WHEN "011001" =>
          result := input_25;
        WHEN "011010" =>
          result := input_26;
        WHEN "011011" =>
          result := input_27;
        WHEN "011100" =>
          result := input_28;
        WHEN "011101" =>
          result := input_29;
        WHEN "011110" =>
          result := input_30;
        WHEN "011111" =>
          result := input_31;
        WHEN "100000" =>
          result := input_32;
        WHEN "100001" =>
          result := input_33;
        WHEN "100010" =>
          result := input_34;
        WHEN "100011" =>
          result := input_35;
        WHEN "100100" =>
          result := input_36;
        WHEN "100101" =>
          result := input_37;
        WHEN "100110" =>
          result := input_38;
        WHEN "100111" =>
          result := input_39;
        WHEN "101000" =>
          result := input_40;
        WHEN "101001" =>
          result := input_41;
        WHEN "101010" =>
          result := input_42;
        WHEN "101011" =>
          result := input_43;
        WHEN "101100" =>
          result := input_44;
        WHEN "101101" =>
          result := input_45;
        WHEN "101110" =>
          result := input_46;
        WHEN "101111" =>
          result := input_47;
        WHEN "110000" =>
          result := input_48;
        WHEN "110001" =>
          result := input_49;
        WHEN "110010" =>
          result := input_50;
        WHEN "110011" =>
          result := input_51;
        WHEN "110100" =>
          result := input_52;
        WHEN "110101" =>
          result := input_53;
        WHEN "110110" =>
          result := input_54;
        WHEN "110111" =>
          result := input_55;
        WHEN "111000" =>
          result := input_56;
        WHEN "111001" =>
          result := input_57;
        WHEN "111010" =>
          result := input_58;
        WHEN "111011" =>
          result := input_59;
        WHEN "111100" =>
          result := input_60;
        WHEN "111101" =>
          result := input_61;
        WHEN "111110" =>
          result := input_62;
        WHEN others =>
          result := input_63;
      END CASE;
    RETURN result;
  END;

BEGIN
  O_1 <= MUX_v_4_64_2(STD_LOGIC_VECTOR'( "1010"), STD_LOGIC_VECTOR'( "0000"), STD_LOGIC_VECTOR'(
      "1001"), STD_LOGIC_VECTOR'( "1110"), STD_LOGIC_VECTOR'( "0110"), STD_LOGIC_VECTOR'(
      "0011"), STD_LOGIC_VECTOR'( "1111"), STD_LOGIC_VECTOR'( "0101"), STD_LOGIC_VECTOR'(
      "0001"), STD_LOGIC_VECTOR'( "1101"), STD_LOGIC_VECTOR'( "1100"), STD_LOGIC_VECTOR'(
      "0111"), STD_LOGIC_VECTOR'( "1011"), STD_LOGIC_VECTOR'( "0100"), STD_LOGIC_VECTOR'(
      "0010"), STD_LOGIC_VECTOR'( "1000"), STD_LOGIC_VECTOR'( "1101"), STD_LOGIC_VECTOR'(
      "0111"), STD_LOGIC_VECTOR'( "0000"), STD_LOGIC_VECTOR'( "1001"), STD_LOGIC_VECTOR'(
      "0011"), STD_LOGIC_VECTOR'( "0100"), STD_LOGIC_VECTOR'( "0110"), STD_LOGIC_VECTOR'(
      "1010"), STD_LOGIC_VECTOR'( "0010"), STD_LOGIC_VECTOR'( "1000"), STD_LOGIC_VECTOR'(
      "0101"), STD_LOGIC_VECTOR'( "1110"), STD_LOGIC_VECTOR'( "1100"), STD_LOGIC_VECTOR'(
      "1011"), STD_LOGIC_VECTOR'( "1111"), STD_LOGIC_VECTOR'( "0001"), STD_LOGIC_VECTOR'(
      "1101"), STD_LOGIC_VECTOR'( "0110"), STD_LOGIC_VECTOR'( "0100"), STD_LOGIC_VECTOR'(
      "1001"), STD_LOGIC_VECTOR'( "1000"), STD_LOGIC_VECTOR'( "1111"), STD_LOGIC_VECTOR'(
      "0011"), STD_LOGIC_VECTOR'( "0000"), STD_LOGIC_VECTOR'( "1011"), STD_LOGIC_VECTOR'(
      "0001"), STD_LOGIC_VECTOR'( "0010"), STD_LOGIC_VECTOR'( "1100"), STD_LOGIC_VECTOR'(
      "0101"), STD_LOGIC_VECTOR'( "1010"), STD_LOGIC_VECTOR'( "1110"), STD_LOGIC_VECTOR'(
      "0111"), STD_LOGIC_VECTOR'( "0001"), STD_LOGIC_VECTOR'( "1010"), STD_LOGIC_VECTOR'(
      "1101"), STD_LOGIC_VECTOR'( "0000"), STD_LOGIC_VECTOR'( "0110"), STD_LOGIC_VECTOR'(
      "1001"), STD_LOGIC_VECTOR'( "1000"), STD_LOGIC_VECTOR'( "0111"), STD_LOGIC_VECTOR'(
      "0100"), STD_LOGIC_VECTOR'( "1111"), STD_LOGIC_VECTOR'( "1110"), STD_LOGIC_VECTOR'(
      "0011"), STD_LOGIC_VECTOR'( "1011"), STD_LOGIC_VECTOR'( "0101"), STD_LOGIC_VECTOR'(
      "0010"), STD_LOGIC_VECTOR'( "1100"), I_1);
END v1;




--------> ../td_ccore_solutions/ROM_1i6_1o4_ef4da7ff735c86ba85f23e51741d972cb3_0/rtl.vhdl 
-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    10.5c/896140 Production Release
--  HLS Date:       Sun Sep  6 22:45:38 PDT 2020
-- 
--  Generated by:   ds6365@hansolo.poly.edu
--  Generated date: Mon Mar  1 00:26:55 2021
-- ----------------------------------------------------------------------

-- 
-- ------------------------------------------------------------------
--  Design Unit:    ROM_1i6_1o4_ef4da7ff735c86ba85f23e51741d972cb3
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;


ENTITY ROM_1i6_1o4_ef4da7ff735c86ba85f23e51741d972cb3 IS
  PORT(
    I_1 : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
    O_1 : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
  );
END ROM_1i6_1o4_ef4da7ff735c86ba85f23e51741d972cb3;

ARCHITECTURE v1 OF ROM_1i6_1o4_ef4da7ff735c86ba85f23e51741d972cb3 IS
  -- Default Constants

  FUNCTION MUX_v_4_64_2(input_0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_5 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_6 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_7 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_8 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_9 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_10 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_11 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_12 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_13 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_14 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_15 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_16 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_17 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_18 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_19 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_20 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_21 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_22 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_23 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_24 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_25 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_26 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_27 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_28 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_29 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_30 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_31 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_32 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_33 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_34 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_35 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_36 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_37 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_38 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_39 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_40 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_41 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_42 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_43 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_44 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_45 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_46 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_47 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_48 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_49 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_50 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_51 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_52 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_53 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_54 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_55 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_56 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_57 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_58 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_59 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_60 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_61 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_62 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_63 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(5 DOWNTO 0))
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(3 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN "000000" =>
          result := input_0;
        WHEN "000001" =>
          result := input_1;
        WHEN "000010" =>
          result := input_2;
        WHEN "000011" =>
          result := input_3;
        WHEN "000100" =>
          result := input_4;
        WHEN "000101" =>
          result := input_5;
        WHEN "000110" =>
          result := input_6;
        WHEN "000111" =>
          result := input_7;
        WHEN "001000" =>
          result := input_8;
        WHEN "001001" =>
          result := input_9;
        WHEN "001010" =>
          result := input_10;
        WHEN "001011" =>
          result := input_11;
        WHEN "001100" =>
          result := input_12;
        WHEN "001101" =>
          result := input_13;
        WHEN "001110" =>
          result := input_14;
        WHEN "001111" =>
          result := input_15;
        WHEN "010000" =>
          result := input_16;
        WHEN "010001" =>
          result := input_17;
        WHEN "010010" =>
          result := input_18;
        WHEN "010011" =>
          result := input_19;
        WHEN "010100" =>
          result := input_20;
        WHEN "010101" =>
          result := input_21;
        WHEN "010110" =>
          result := input_22;
        WHEN "010111" =>
          result := input_23;
        WHEN "011000" =>
          result := input_24;
        WHEN "011001" =>
          result := input_25;
        WHEN "011010" =>
          result := input_26;
        WHEN "011011" =>
          result := input_27;
        WHEN "011100" =>
          result := input_28;
        WHEN "011101" =>
          result := input_29;
        WHEN "011110" =>
          result := input_30;
        WHEN "011111" =>
          result := input_31;
        WHEN "100000" =>
          result := input_32;
        WHEN "100001" =>
          result := input_33;
        WHEN "100010" =>
          result := input_34;
        WHEN "100011" =>
          result := input_35;
        WHEN "100100" =>
          result := input_36;
        WHEN "100101" =>
          result := input_37;
        WHEN "100110" =>
          result := input_38;
        WHEN "100111" =>
          result := input_39;
        WHEN "101000" =>
          result := input_40;
        WHEN "101001" =>
          result := input_41;
        WHEN "101010" =>
          result := input_42;
        WHEN "101011" =>
          result := input_43;
        WHEN "101100" =>
          result := input_44;
        WHEN "101101" =>
          result := input_45;
        WHEN "101110" =>
          result := input_46;
        WHEN "101111" =>
          result := input_47;
        WHEN "110000" =>
          result := input_48;
        WHEN "110001" =>
          result := input_49;
        WHEN "110010" =>
          result := input_50;
        WHEN "110011" =>
          result := input_51;
        WHEN "110100" =>
          result := input_52;
        WHEN "110101" =>
          result := input_53;
        WHEN "110110" =>
          result := input_54;
        WHEN "110111" =>
          result := input_55;
        WHEN "111000" =>
          result := input_56;
        WHEN "111001" =>
          result := input_57;
        WHEN "111010" =>
          result := input_58;
        WHEN "111011" =>
          result := input_59;
        WHEN "111100" =>
          result := input_60;
        WHEN "111101" =>
          result := input_61;
        WHEN "111110" =>
          result := input_62;
        WHEN others =>
          result := input_63;
      END CASE;
    RETURN result;
  END;

BEGIN
  O_1 <= MUX_v_4_64_2(STD_LOGIC_VECTOR'( "1101"), STD_LOGIC_VECTOR'( "0010"), STD_LOGIC_VECTOR'(
      "1000"), STD_LOGIC_VECTOR'( "0100"), STD_LOGIC_VECTOR'( "0110"), STD_LOGIC_VECTOR'(
      "1111"), STD_LOGIC_VECTOR'( "1011"), STD_LOGIC_VECTOR'( "0001"), STD_LOGIC_VECTOR'(
      "1010"), STD_LOGIC_VECTOR'( "1001"), STD_LOGIC_VECTOR'( "0011"), STD_LOGIC_VECTOR'(
      "1110"), STD_LOGIC_VECTOR'( "0101"), STD_LOGIC_VECTOR'( "0000"), STD_LOGIC_VECTOR'(
      "1100"), STD_LOGIC_VECTOR'( "0111"), STD_LOGIC_VECTOR'( "0001"), STD_LOGIC_VECTOR'(
      "1111"), STD_LOGIC_VECTOR'( "1101"), STD_LOGIC_VECTOR'( "1000"), STD_LOGIC_VECTOR'(
      "1010"), STD_LOGIC_VECTOR'( "0011"), STD_LOGIC_VECTOR'( "0111"), STD_LOGIC_VECTOR'(
      "0100"), STD_LOGIC_VECTOR'( "1100"), STD_LOGIC_VECTOR'( "0101"), STD_LOGIC_VECTOR'(
      "0110"), STD_LOGIC_VECTOR'( "1011"), STD_LOGIC_VECTOR'( "0000"), STD_LOGIC_VECTOR'(
      "1110"), STD_LOGIC_VECTOR'( "1001"), STD_LOGIC_VECTOR'( "0010"), STD_LOGIC_VECTOR'(
      "0111"), STD_LOGIC_VECTOR'( "1011"), STD_LOGIC_VECTOR'( "0100"), STD_LOGIC_VECTOR'(
      "0001"), STD_LOGIC_VECTOR'( "1001"), STD_LOGIC_VECTOR'( "1100"), STD_LOGIC_VECTOR'(
      "1110"), STD_LOGIC_VECTOR'( "0010"), STD_LOGIC_VECTOR'( "0000"), STD_LOGIC_VECTOR'(
      "0110"), STD_LOGIC_VECTOR'( "1010"), STD_LOGIC_VECTOR'( "1101"), STD_LOGIC_VECTOR'(
      "1111"), STD_LOGIC_VECTOR'( "0011"), STD_LOGIC_VECTOR'( "0101"), STD_LOGIC_VECTOR'(
      "1000"), STD_LOGIC_VECTOR'( "0010"), STD_LOGIC_VECTOR'( "0001"), STD_LOGIC_VECTOR'(
      "1110"), STD_LOGIC_VECTOR'( "0111"), STD_LOGIC_VECTOR'( "0100"), STD_LOGIC_VECTOR'(
      "1010"), STD_LOGIC_VECTOR'( "1000"), STD_LOGIC_VECTOR'( "1101"), STD_LOGIC_VECTOR'(
      "1111"), STD_LOGIC_VECTOR'( "1100"), STD_LOGIC_VECTOR'( "1001"), STD_LOGIC_VECTOR'(
      "0000"), STD_LOGIC_VECTOR'( "0011"), STD_LOGIC_VECTOR'( "0101"), STD_LOGIC_VECTOR'(
      "0110"), STD_LOGIC_VECTOR'( "1011"), I_1);
END v1;




--------> ../td_ccore_solutions/ROM_1i6_1o4_51ba7157b272cd3b87451219caf38e7cb3_0/rtl.vhdl 
-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    10.5c/896140 Production Release
--  HLS Date:       Sun Sep  6 22:45:38 PDT 2020
-- 
--  Generated by:   ds6365@hansolo.poly.edu
--  Generated date: Mon Mar  1 00:26:22 2021
-- ----------------------------------------------------------------------

-- 
-- ------------------------------------------------------------------
--  Design Unit:    ROM_1i6_1o4_51ba7157b272cd3b87451219caf38e7cb3
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;


ENTITY ROM_1i6_1o4_51ba7157b272cd3b87451219caf38e7cb3 IS
  PORT(
    I_1 : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
    O_1 : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
  );
END ROM_1i6_1o4_51ba7157b272cd3b87451219caf38e7cb3;

ARCHITECTURE v1 OF ROM_1i6_1o4_51ba7157b272cd3b87451219caf38e7cb3 IS
  -- Default Constants

  FUNCTION MUX_v_4_64_2(input_0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_5 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_6 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_7 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_8 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_9 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_10 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_11 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_12 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_13 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_14 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_15 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_16 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_17 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_18 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_19 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_20 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_21 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_22 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_23 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_24 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_25 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_26 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_27 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_28 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_29 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_30 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_31 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_32 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_33 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_34 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_35 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_36 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_37 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_38 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_39 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_40 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_41 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_42 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_43 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_44 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_45 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_46 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_47 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_48 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_49 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_50 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_51 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_52 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_53 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_54 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_55 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_56 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_57 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_58 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_59 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_60 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_61 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_62 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_63 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(5 DOWNTO 0))
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(3 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN "000000" =>
          result := input_0;
        WHEN "000001" =>
          result := input_1;
        WHEN "000010" =>
          result := input_2;
        WHEN "000011" =>
          result := input_3;
        WHEN "000100" =>
          result := input_4;
        WHEN "000101" =>
          result := input_5;
        WHEN "000110" =>
          result := input_6;
        WHEN "000111" =>
          result := input_7;
        WHEN "001000" =>
          result := input_8;
        WHEN "001001" =>
          result := input_9;
        WHEN "001010" =>
          result := input_10;
        WHEN "001011" =>
          result := input_11;
        WHEN "001100" =>
          result := input_12;
        WHEN "001101" =>
          result := input_13;
        WHEN "001110" =>
          result := input_14;
        WHEN "001111" =>
          result := input_15;
        WHEN "010000" =>
          result := input_16;
        WHEN "010001" =>
          result := input_17;
        WHEN "010010" =>
          result := input_18;
        WHEN "010011" =>
          result := input_19;
        WHEN "010100" =>
          result := input_20;
        WHEN "010101" =>
          result := input_21;
        WHEN "010110" =>
          result := input_22;
        WHEN "010111" =>
          result := input_23;
        WHEN "011000" =>
          result := input_24;
        WHEN "011001" =>
          result := input_25;
        WHEN "011010" =>
          result := input_26;
        WHEN "011011" =>
          result := input_27;
        WHEN "011100" =>
          result := input_28;
        WHEN "011101" =>
          result := input_29;
        WHEN "011110" =>
          result := input_30;
        WHEN "011111" =>
          result := input_31;
        WHEN "100000" =>
          result := input_32;
        WHEN "100001" =>
          result := input_33;
        WHEN "100010" =>
          result := input_34;
        WHEN "100011" =>
          result := input_35;
        WHEN "100100" =>
          result := input_36;
        WHEN "100101" =>
          result := input_37;
        WHEN "100110" =>
          result := input_38;
        WHEN "100111" =>
          result := input_39;
        WHEN "101000" =>
          result := input_40;
        WHEN "101001" =>
          result := input_41;
        WHEN "101010" =>
          result := input_42;
        WHEN "101011" =>
          result := input_43;
        WHEN "101100" =>
          result := input_44;
        WHEN "101101" =>
          result := input_45;
        WHEN "101110" =>
          result := input_46;
        WHEN "101111" =>
          result := input_47;
        WHEN "110000" =>
          result := input_48;
        WHEN "110001" =>
          result := input_49;
        WHEN "110010" =>
          result := input_50;
        WHEN "110011" =>
          result := input_51;
        WHEN "110100" =>
          result := input_52;
        WHEN "110101" =>
          result := input_53;
        WHEN "110110" =>
          result := input_54;
        WHEN "110111" =>
          result := input_55;
        WHEN "111000" =>
          result := input_56;
        WHEN "111001" =>
          result := input_57;
        WHEN "111010" =>
          result := input_58;
        WHEN "111011" =>
          result := input_59;
        WHEN "111100" =>
          result := input_60;
        WHEN "111101" =>
          result := input_61;
        WHEN "111110" =>
          result := input_62;
        WHEN others =>
          result := input_63;
      END CASE;
    RETURN result;
  END;

BEGIN
  O_1 <= MUX_v_4_64_2(STD_LOGIC_VECTOR'( "1100"), STD_LOGIC_VECTOR'( "0001"), STD_LOGIC_VECTOR'(
      "1010"), STD_LOGIC_VECTOR'( "1111"), STD_LOGIC_VECTOR'( "1001"), STD_LOGIC_VECTOR'(
      "0010"), STD_LOGIC_VECTOR'( "0110"), STD_LOGIC_VECTOR'( "1000"), STD_LOGIC_VECTOR'(
      "0000"), STD_LOGIC_VECTOR'( "1101"), STD_LOGIC_VECTOR'( "0011"), STD_LOGIC_VECTOR'(
      "0100"), STD_LOGIC_VECTOR'( "1110"), STD_LOGIC_VECTOR'( "0111"), STD_LOGIC_VECTOR'(
      "0101"), STD_LOGIC_VECTOR'( "1011"), STD_LOGIC_VECTOR'( "1010"), STD_LOGIC_VECTOR'(
      "1111"), STD_LOGIC_VECTOR'( "0100"), STD_LOGIC_VECTOR'( "0010"), STD_LOGIC_VECTOR'(
      "0111"), STD_LOGIC_VECTOR'( "1100"), STD_LOGIC_VECTOR'( "1001"), STD_LOGIC_VECTOR'(
      "0101"), STD_LOGIC_VECTOR'( "0110"), STD_LOGIC_VECTOR'( "0001"), STD_LOGIC_VECTOR'(
      "1101"), STD_LOGIC_VECTOR'( "1110"), STD_LOGIC_VECTOR'( "0000"), STD_LOGIC_VECTOR'(
      "1011"), STD_LOGIC_VECTOR'( "0011"), STD_LOGIC_VECTOR'( "1000"), STD_LOGIC_VECTOR'(
      "1001"), STD_LOGIC_VECTOR'( "1110"), STD_LOGIC_VECTOR'( "1111"), STD_LOGIC_VECTOR'(
      "0101"), STD_LOGIC_VECTOR'( "0010"), STD_LOGIC_VECTOR'( "1000"), STD_LOGIC_VECTOR'(
      "1100"), STD_LOGIC_VECTOR'( "0011"), STD_LOGIC_VECTOR'( "0111"), STD_LOGIC_VECTOR'(
      "0000"), STD_LOGIC_VECTOR'( "0100"), STD_LOGIC_VECTOR'( "1010"), STD_LOGIC_VECTOR'(
      "0001"), STD_LOGIC_VECTOR'( "1101"), STD_LOGIC_VECTOR'( "1011"), STD_LOGIC_VECTOR'(
      "0110"), STD_LOGIC_VECTOR'( "0100"), STD_LOGIC_VECTOR'( "0011"), STD_LOGIC_VECTOR'(
      "0010"), STD_LOGIC_VECTOR'( "1100"), STD_LOGIC_VECTOR'( "1001"), STD_LOGIC_VECTOR'(
      "0101"), STD_LOGIC_VECTOR'( "1111"), STD_LOGIC_VECTOR'( "1010"), STD_LOGIC_VECTOR'(
      "1011"), STD_LOGIC_VECTOR'( "1110"), STD_LOGIC_VECTOR'( "0001"), STD_LOGIC_VECTOR'(
      "0111"), STD_LOGIC_VECTOR'( "0110"), STD_LOGIC_VECTOR'( "0000"), STD_LOGIC_VECTOR'(
      "1000"), STD_LOGIC_VECTOR'( "1101"), I_1);
END v1;




--------> ../td_ccore_solutions/ROM_1i6_1o4_8f60b2fc4a3ee4cef30040071bc0219cb3_0/rtl.vhdl 
-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    10.5c/896140 Production Release
--  HLS Date:       Sun Sep  6 22:45:38 PDT 2020
-- 
--  Generated by:   ds6365@hansolo.poly.edu
--  Generated date: Mon Mar  1 00:25:55 2021
-- ----------------------------------------------------------------------

-- 
-- ------------------------------------------------------------------
--  Design Unit:    ROM_1i6_1o4_8f60b2fc4a3ee4cef30040071bc0219cb3
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;


ENTITY ROM_1i6_1o4_8f60b2fc4a3ee4cef30040071bc0219cb3 IS
  PORT(
    I_1 : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
    O_1 : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
  );
END ROM_1i6_1o4_8f60b2fc4a3ee4cef30040071bc0219cb3;

ARCHITECTURE v1 OF ROM_1i6_1o4_8f60b2fc4a3ee4cef30040071bc0219cb3 IS
  -- Default Constants

  FUNCTION MUX_v_4_64_2(input_0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_4 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_5 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_6 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_7 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_8 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_9 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_10 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_11 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_12 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_13 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_14 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_15 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_16 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_17 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_18 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_19 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_20 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_21 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_22 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_23 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_24 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_25 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_26 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_27 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_28 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_29 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_30 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_31 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_32 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_33 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_34 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_35 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_36 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_37 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_38 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_39 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_40 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_41 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_42 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_43 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_44 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_45 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_46 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_47 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_48 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_49 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_50 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_51 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_52 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_53 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_54 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_55 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_56 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_57 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_58 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_59 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_60 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_61 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_62 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_63 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  sel : STD_LOGIC_VECTOR(5 DOWNTO 0))
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(3 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN "000000" =>
          result := input_0;
        WHEN "000001" =>
          result := input_1;
        WHEN "000010" =>
          result := input_2;
        WHEN "000011" =>
          result := input_3;
        WHEN "000100" =>
          result := input_4;
        WHEN "000101" =>
          result := input_5;
        WHEN "000110" =>
          result := input_6;
        WHEN "000111" =>
          result := input_7;
        WHEN "001000" =>
          result := input_8;
        WHEN "001001" =>
          result := input_9;
        WHEN "001010" =>
          result := input_10;
        WHEN "001011" =>
          result := input_11;
        WHEN "001100" =>
          result := input_12;
        WHEN "001101" =>
          result := input_13;
        WHEN "001110" =>
          result := input_14;
        WHEN "001111" =>
          result := input_15;
        WHEN "010000" =>
          result := input_16;
        WHEN "010001" =>
          result := input_17;
        WHEN "010010" =>
          result := input_18;
        WHEN "010011" =>
          result := input_19;
        WHEN "010100" =>
          result := input_20;
        WHEN "010101" =>
          result := input_21;
        WHEN "010110" =>
          result := input_22;
        WHEN "010111" =>
          result := input_23;
        WHEN "011000" =>
          result := input_24;
        WHEN "011001" =>
          result := input_25;
        WHEN "011010" =>
          result := input_26;
        WHEN "011011" =>
          result := input_27;
        WHEN "011100" =>
          result := input_28;
        WHEN "011101" =>
          result := input_29;
        WHEN "011110" =>
          result := input_30;
        WHEN "011111" =>
          result := input_31;
        WHEN "100000" =>
          result := input_32;
        WHEN "100001" =>
          result := input_33;
        WHEN "100010" =>
          result := input_34;
        WHEN "100011" =>
          result := input_35;
        WHEN "100100" =>
          result := input_36;
        WHEN "100101" =>
          result := input_37;
        WHEN "100110" =>
          result := input_38;
        WHEN "100111" =>
          result := input_39;
        WHEN "101000" =>
          result := input_40;
        WHEN "101001" =>
          result := input_41;
        WHEN "101010" =>
          result := input_42;
        WHEN "101011" =>
          result := input_43;
        WHEN "101100" =>
          result := input_44;
        WHEN "101101" =>
          result := input_45;
        WHEN "101110" =>
          result := input_46;
        WHEN "101111" =>
          result := input_47;
        WHEN "110000" =>
          result := input_48;
        WHEN "110001" =>
          result := input_49;
        WHEN "110010" =>
          result := input_50;
        WHEN "110011" =>
          result := input_51;
        WHEN "110100" =>
          result := input_52;
        WHEN "110101" =>
          result := input_53;
        WHEN "110110" =>
          result := input_54;
        WHEN "110111" =>
          result := input_55;
        WHEN "111000" =>
          result := input_56;
        WHEN "111001" =>
          result := input_57;
        WHEN "111010" =>
          result := input_58;
        WHEN "111011" =>
          result := input_59;
        WHEN "111100" =>
          result := input_60;
        WHEN "111101" =>
          result := input_61;
        WHEN "111110" =>
          result := input_62;
        WHEN others =>
          result := input_63;
      END CASE;
    RETURN result;
  END;

BEGIN
  O_1 <= MUX_v_4_64_2(STD_LOGIC_VECTOR'( "1110"), STD_LOGIC_VECTOR'( "0100"), STD_LOGIC_VECTOR'(
      "1101"), STD_LOGIC_VECTOR'( "0001"), STD_LOGIC_VECTOR'( "0010"), STD_LOGIC_VECTOR'(
      "1111"), STD_LOGIC_VECTOR'( "1011"), STD_LOGIC_VECTOR'( "1000"), STD_LOGIC_VECTOR'(
      "0011"), STD_LOGIC_VECTOR'( "1010"), STD_LOGIC_VECTOR'( "0110"), STD_LOGIC_VECTOR'(
      "1100"), STD_LOGIC_VECTOR'( "0101"), STD_LOGIC_VECTOR'( "1001"), STD_LOGIC_VECTOR'(
      "0000"), STD_LOGIC_VECTOR'( "0111"), STD_LOGIC_VECTOR'( "0000"), STD_LOGIC_VECTOR'(
      "1111"), STD_LOGIC_VECTOR'( "0111"), STD_LOGIC_VECTOR'( "0100"), STD_LOGIC_VECTOR'(
      "1110"), STD_LOGIC_VECTOR'( "0010"), STD_LOGIC_VECTOR'( "1101"), STD_LOGIC_VECTOR'(
      "0001"), STD_LOGIC_VECTOR'( "1010"), STD_LOGIC_VECTOR'( "0110"), STD_LOGIC_VECTOR'(
      "1100"), STD_LOGIC_VECTOR'( "1011"), STD_LOGIC_VECTOR'( "1001"), STD_LOGIC_VECTOR'(
      "0101"), STD_LOGIC_VECTOR'( "0011"), STD_LOGIC_VECTOR'( "1000"), STD_LOGIC_VECTOR'(
      "0100"), STD_LOGIC_VECTOR'( "0001"), STD_LOGIC_VECTOR'( "1110"), STD_LOGIC_VECTOR'(
      "1000"), STD_LOGIC_VECTOR'( "1101"), STD_LOGIC_VECTOR'( "0110"), STD_LOGIC_VECTOR'(
      "0010"), STD_LOGIC_VECTOR'( "1011"), STD_LOGIC_VECTOR'( "1111"), STD_LOGIC_VECTOR'(
      "1100"), STD_LOGIC_VECTOR'( "1001"), STD_LOGIC_VECTOR'( "0111"), STD_LOGIC_VECTOR'(
      "0011"), STD_LOGIC_VECTOR'( "1010"), STD_LOGIC_VECTOR'( "0101"), STD_LOGIC_VECTOR'(
      "0000"), STD_LOGIC_VECTOR'( "1111"), STD_LOGIC_VECTOR'( "1100"), STD_LOGIC_VECTOR'(
      "1000"), STD_LOGIC_VECTOR'( "0010"), STD_LOGIC_VECTOR'( "0100"), STD_LOGIC_VECTOR'(
      "1001"), STD_LOGIC_VECTOR'( "0001"), STD_LOGIC_VECTOR'( "0111"), STD_LOGIC_VECTOR'(
      "0101"), STD_LOGIC_VECTOR'( "1011"), STD_LOGIC_VECTOR'( "0011"), STD_LOGIC_VECTOR'(
      "1110"), STD_LOGIC_VECTOR'( "1010"), STD_LOGIC_VECTOR'( "0000"), STD_LOGIC_VECTOR'(
      "0110"), STD_LOGIC_VECTOR'( "1101"), I_1);
END v1;




--------> ./rtl.vhdl 
-- ----------------------------------------------------------------------
--  HLS HDL:        VHDL Netlister
--  HLS Version:    10.5c/896140 Production Release
--  HLS Date:       Sun Sep  6 22:45:38 PDT 2020
-- 
--  Generated by:   ds6365@hansolo.poly.edu
--  Generated date: Sun Mar 21 13:06:30 2021
-- ----------------------------------------------------------------------

-- 
-- ------------------------------------------------------------------
--  Design Unit:    des_check_core_core_fsm
--  FSM Module
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;


ENTITY des_check_core_core_fsm IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    fsm_output : OUT STD_LOGIC_VECTOR (16 DOWNTO 0)
  );
END des_check_core_core_fsm;

ARCHITECTURE v3 OF des_check_core_core_fsm IS
  -- Default Constants

  -- FSM State Type Declaration for des_check_core_core_fsm_1
  TYPE des_check_core_core_fsm_1_ST IS (main_C_0, main_C_1, main_C_2, main_C_3, main_C_4,
      main_C_5, main_C_6, main_C_7, main_C_8, main_C_9, main_C_10, main_C_11, main_C_12,
      main_C_13, main_C_14, main_C_15, main_C_16);

  SIGNAL state_var : des_check_core_core_fsm_1_ST;
  SIGNAL state_var_NS : des_check_core_core_fsm_1_ST;

BEGIN
  des_check_core_core_fsm_1 : PROCESS (state_var)
  BEGIN
    CASE state_var IS
      WHEN main_C_1 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000010");
        state_var_NS <= main_C_2;
      WHEN main_C_2 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000100");
        state_var_NS <= main_C_3;
      WHEN main_C_3 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000001000");
        state_var_NS <= main_C_4;
      WHEN main_C_4 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000010000");
        state_var_NS <= main_C_5;
      WHEN main_C_5 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000100000");
        state_var_NS <= main_C_6;
      WHEN main_C_6 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000001000000");
        state_var_NS <= main_C_7;
      WHEN main_C_7 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000010000000");
        state_var_NS <= main_C_8;
      WHEN main_C_8 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000100000000");
        state_var_NS <= main_C_9;
      WHEN main_C_9 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000001000000000");
        state_var_NS <= main_C_10;
      WHEN main_C_10 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000010000000000");
        state_var_NS <= main_C_11;
      WHEN main_C_11 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000100000000000");
        state_var_NS <= main_C_12;
      WHEN main_C_12 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00001000000000000");
        state_var_NS <= main_C_13;
      WHEN main_C_13 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00010000000000000");
        state_var_NS <= main_C_14;
      WHEN main_C_14 =>
        fsm_output <= STD_LOGIC_VECTOR'( "00100000000000000");
        state_var_NS <= main_C_15;
      WHEN main_C_15 =>
        fsm_output <= STD_LOGIC_VECTOR'( "01000000000000000");
        state_var_NS <= main_C_16;
      WHEN main_C_16 =>
        fsm_output <= STD_LOGIC_VECTOR'( "10000000000000000");
        state_var_NS <= main_C_0;
      -- main_C_0
      WHEN OTHERS =>
        fsm_output <= STD_LOGIC_VECTOR'( "00000000000000001");
        state_var_NS <= main_C_1;
    END CASE;
  END PROCESS des_check_core_core_fsm_1;

  des_check_core_core_fsm_1_REG : PROCESS (clk)
  BEGIN
    IF clk'event AND ( clk = '1' ) THEN
      IF ( rst = '1' ) THEN
        state_var <= main_C_0;
      ELSE
        state_var <= state_var_NS;
      END IF;
    END IF;
  END PROCESS des_check_core_core_fsm_1_REG;

END v3;

-- ------------------------------------------------------------------
--  Design Unit:    des_check_core
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;


ENTITY des_check_core IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    input_rsc_dat : IN STD_LOGIC_VECTOR (63 DOWNTO 0);
    input_rsc_triosy_lz : OUT STD_LOGIC;
    key_rsc_dat : IN STD_LOGIC_VECTOR (63 DOWNTO 0);
    key_rsc_triosy_lz : OUT STD_LOGIC;
    return_rsc_dat : OUT STD_LOGIC_VECTOR (63 DOWNTO 0);
    return_rsc_triosy_lz : OUT STD_LOGIC
  );
END des_check_core;

ARCHITECTURE v3 OF des_check_core IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL input_rsci_idat : STD_LOGIC_VECTOR (63 DOWNTO 0);
  SIGNAL key_rsci_idat : STD_LOGIC_VECTOR (63 DOWNTO 0);
  SIGNAL return_rsc_triosy_obj_ld : STD_LOGIC;
  SIGNAL return_rsci_idat_63 : STD_LOGIC;
  SIGNAL return_rsci_idat_62 : STD_LOGIC;
  SIGNAL return_rsci_idat_61 : STD_LOGIC;
  SIGNAL return_rsci_idat_60 : STD_LOGIC;
  SIGNAL return_rsci_idat_59 : STD_LOGIC;
  SIGNAL return_rsci_idat_58 : STD_LOGIC;
  SIGNAL return_rsci_idat_57 : STD_LOGIC;
  SIGNAL return_rsci_idat_56 : STD_LOGIC;
  SIGNAL return_rsci_idat_55 : STD_LOGIC;
  SIGNAL return_rsci_idat_54 : STD_LOGIC;
  SIGNAL return_rsci_idat_53 : STD_LOGIC;
  SIGNAL return_rsci_idat_52 : STD_LOGIC;
  SIGNAL return_rsci_idat_51 : STD_LOGIC;
  SIGNAL return_rsci_idat_50 : STD_LOGIC;
  SIGNAL return_rsci_idat_49 : STD_LOGIC;
  SIGNAL return_rsci_idat_48 : STD_LOGIC;
  SIGNAL return_rsci_idat_47 : STD_LOGIC;
  SIGNAL return_rsci_idat_46 : STD_LOGIC;
  SIGNAL return_rsci_idat_45 : STD_LOGIC;
  SIGNAL return_rsci_idat_44 : STD_LOGIC;
  SIGNAL return_rsci_idat_43 : STD_LOGIC;
  SIGNAL return_rsci_idat_42 : STD_LOGIC;
  SIGNAL return_rsci_idat_41 : STD_LOGIC;
  SIGNAL return_rsci_idat_40 : STD_LOGIC;
  SIGNAL return_rsci_idat_39 : STD_LOGIC;
  SIGNAL return_rsci_idat_38 : STD_LOGIC;
  SIGNAL return_rsci_idat_37 : STD_LOGIC;
  SIGNAL return_rsci_idat_36 : STD_LOGIC;
  SIGNAL return_rsci_idat_35 : STD_LOGIC;
  SIGNAL return_rsci_idat_34 : STD_LOGIC;
  SIGNAL return_rsci_idat_33 : STD_LOGIC;
  SIGNAL return_rsci_idat_32 : STD_LOGIC;
  SIGNAL return_rsci_idat_31 : STD_LOGIC;
  SIGNAL return_rsci_idat_30 : STD_LOGIC;
  SIGNAL return_rsci_idat_29 : STD_LOGIC;
  SIGNAL return_rsci_idat_28 : STD_LOGIC;
  SIGNAL return_rsci_idat_27 : STD_LOGIC;
  SIGNAL return_rsci_idat_26 : STD_LOGIC;
  SIGNAL return_rsci_idat_25 : STD_LOGIC;
  SIGNAL return_rsci_idat_24 : STD_LOGIC;
  SIGNAL return_rsci_idat_23 : STD_LOGIC;
  SIGNAL return_rsci_idat_22 : STD_LOGIC;
  SIGNAL return_rsci_idat_21 : STD_LOGIC;
  SIGNAL return_rsci_idat_20 : STD_LOGIC;
  SIGNAL return_rsci_idat_19 : STD_LOGIC;
  SIGNAL return_rsci_idat_18 : STD_LOGIC;
  SIGNAL return_rsci_idat_17 : STD_LOGIC;
  SIGNAL return_rsci_idat_16 : STD_LOGIC;
  SIGNAL return_rsci_idat_15 : STD_LOGIC;
  SIGNAL return_rsci_idat_14 : STD_LOGIC;
  SIGNAL return_rsci_idat_13 : STD_LOGIC;
  SIGNAL return_rsci_idat_12 : STD_LOGIC;
  SIGNAL return_rsci_idat_11 : STD_LOGIC;
  SIGNAL return_rsci_idat_10 : STD_LOGIC;
  SIGNAL return_rsci_idat_9 : STD_LOGIC;
  SIGNAL return_rsci_idat_8 : STD_LOGIC;
  SIGNAL return_rsci_idat_7 : STD_LOGIC;
  SIGNAL return_rsci_idat_6 : STD_LOGIC;
  SIGNAL return_rsci_idat_5 : STD_LOGIC;
  SIGNAL return_rsci_idat_4 : STD_LOGIC;
  SIGNAL return_rsci_idat_3 : STD_LOGIC;
  SIGNAL return_rsci_idat_2 : STD_LOGIC;
  SIGNAL return_rsci_idat_1 : STD_LOGIC;
  SIGNAL return_rsci_idat_0 : STD_LOGIC;
  SIGNAL fsm_output : STD_LOGIC_VECTOR (16 DOWNTO 0);
  SIGNAL reg_input_ftd : STD_LOGIC_VECTOR (62 DOWNTO 0);
  SIGNAL R_or_1_cse : STD_LOGIC;
  SIGNAL reg_key_rsc_triosy_obj_ld_cse : STD_LOGIC;
  SIGNAL R_or_2_cse : STD_LOGIC;
  SIGNAL R_or_8_cse : STD_LOGIC;
  SIGNAL R_or_4_cse : STD_LOGIC;
  SIGNAL R_or_26_cse : STD_LOGIC;
  SIGNAL R_or_32_cse : STD_LOGIC;
  SIGNAL R_or_38_cse : STD_LOGIC;
  SIGNAL R_or_39_cse : STD_LOGIC;
  SIGNAL R_or_66_cse : STD_LOGIC;
  SIGNAL O_1_out : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL O_1_out_1 : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL O_1_out_2 : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL O_1_out_3 : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL O_1_out_4 : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL O_1_out_5 : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL O_1_out_6 : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL O_1_out_7 : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL O_1_out_8 : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL key_io_read_key_rsc_cse_63_1_sva : STD_LOGIC_VECTOR (62 DOWNTO 0);
  SIGNAL R_15_1_sva : STD_LOGIC;
  SIGNAL R_11_1_sva : STD_LOGIC;
  SIGNAL R_20_1_sva : STD_LOGIC;
  SIGNAL R_10_1_sva : STD_LOGIC;
  SIGNAL R_7_1_sva : STD_LOGIC;
  SIGNAL R_3_1_sva : STD_LOGIC;
  SIGNAL R_0_1_sva : STD_LOGIC;
  SIGNAL s_output_1_19_16_20_sva : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL s_output_1_3_0_24_sva : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL s_output_1_19_16_35_sva : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL s_output_1_3_0_39_sva : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL s_output_1_19_16_50_sva : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL s_output_1_3_0_54_sva : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL s_output_1_19_16_5_sva : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL s_output_1_3_0_9_sva : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL R_16_3_sva : STD_LOGIC;
  SIGNAL R_14_3_sva : STD_LOGIC;
  SIGNAL R_18_3_sva : STD_LOGIC;
  SIGNAL R_11_3_sva : STD_LOGIC;
  SIGNAL R_21_3_sva : STD_LOGIC;
  SIGNAL R_7_3_sva : STD_LOGIC;
  SIGNAL R_24_3_sva : STD_LOGIC;
  SIGNAL R_3_3_sva : STD_LOGIC;
  SIGNAL R_2_3_sva : STD_LOGIC;
  SIGNAL R_31_3_sva : STD_LOGIC;
  SIGNAL R_15_4_sva : STD_LOGIC;
  SIGNAL R_16_4_sva : STD_LOGIC;
  SIGNAL R_12_4_sva : STD_LOGIC;
  SIGNAL R_19_4_sva : STD_LOGIC;
  SIGNAL R_11_4_sva : STD_LOGIC;
  SIGNAL R_20_4_sva : STD_LOGIC;
  SIGNAL R_9_4_sva : STD_LOGIC;
  SIGNAL R_8_4_sva : STD_LOGIC;
  SIGNAL R_23_4_sva : STD_LOGIC;
  SIGNAL R_7_4_sva : STD_LOGIC;
  SIGNAL R_24_4_sva : STD_LOGIC;
  SIGNAL R_26_4_sva : STD_LOGIC;
  SIGNAL R_4_4_sva : STD_LOGIC;
  SIGNAL R_27_4_sva : STD_LOGIC;
  SIGNAL R_3_4_sva : STD_LOGIC;
  SIGNAL R_28_4_sva : STD_LOGIC;
  SIGNAL R_29_4_sva : STD_LOGIC;
  SIGNAL R_1_4_sva : STD_LOGIC;
  SIGNAL R_30_4_sva : STD_LOGIC;
  SIGNAL R_0_4_sva : STD_LOGIC;
  SIGNAL R_31_4_sva : STD_LOGIC;
  SIGNAL R_6_5_sva : STD_LOGIC;
  SIGNAL R_26_5_sva : STD_LOGIC;
  SIGNAL R_29_5_sva : STD_LOGIC;
  SIGNAL R_25_6_sva : STD_LOGIC;
  SIGNAL R_1_6_sva : STD_LOGIC;
  SIGNAL R_21_7_sva : STD_LOGIC;
  SIGNAL R_22_7_sva : STD_LOGIC;
  SIGNAL R_1_7_sva : STD_LOGIC;
  SIGNAL R_1_8_sva : STD_LOGIC;
  SIGNAL R_15_9_sva : STD_LOGIC;
  SIGNAL R_1_9_sva : STD_LOGIC;
  SIGNAL R_0_9_sva : STD_LOGIC;
  SIGNAL R_15_10_sva : STD_LOGIC;
  SIGNAL R_10_10_sva : STD_LOGIC;
  SIGNAL R_27_10_sva : STD_LOGIC;
  SIGNAL R_0_10_sva : STD_LOGIC;
  SIGNAL R_31_10_sva : STD_LOGIC;
  SIGNAL R_15_11_sva : STD_LOGIC;
  SIGNAL R_12_11_sva : STD_LOGIC;
  SIGNAL R_19_11_sva : STD_LOGIC;
  SIGNAL R_11_11_sva : STD_LOGIC;
  SIGNAL R_20_11_sva : STD_LOGIC;
  SIGNAL R_23_11_sva : STD_LOGIC;
  SIGNAL R_7_11_sva : STD_LOGIC;
  SIGNAL R_24_11_sva : STD_LOGIC;
  SIGNAL R_4_11_sva : STD_LOGIC;
  SIGNAL R_27_11_sva : STD_LOGIC;
  SIGNAL R_3_11_sva : STD_LOGIC;
  SIGNAL R_28_11_sva : STD_LOGIC;
  SIGNAL R_0_11_sva : STD_LOGIC;
  SIGNAL R_31_11_sva : STD_LOGIC;
  SIGNAL R_1_14_sva : STD_LOGIC;
  SIGNAL loop_DES_rounds_9_xor_81 : STD_LOGIC;
  SIGNAL loop_DES_rounds_5_xor_81 : STD_LOGIC;
  SIGNAL loop_DES_rounds_7_xor_81 : STD_LOGIC;
  SIGNAL loop_DES_rounds_8_xor_81 : STD_LOGIC;
  SIGNAL loop_DES_rounds_6_xor_81 : STD_LOGIC;
  SIGNAL loop_DES_rounds_9_xor_83 : STD_LOGIC;
  SIGNAL loop_DES_rounds_8_xor_83 : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_81 : STD_LOGIC;
  SIGNAL loop_DES_rounds_8_xor_85 : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_83 : STD_LOGIC;
  SIGNAL loop_DES_rounds_4_xor_81 : STD_LOGIC;
  SIGNAL loop_DES_rounds_7_xor_83 : STD_LOGIC;
  SIGNAL loop_DES_rounds_4_xor_83 : STD_LOGIC;
  SIGNAL loop_DES_rounds_9_xor_85 : STD_LOGIC;
  SIGNAL loop_DES_rounds_4_xor_85 : STD_LOGIC;
  SIGNAL loop_DES_rounds_8_xor_87 : STD_LOGIC;
  SIGNAL loop_DES_rounds_4_xor_87 : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_85 : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_81 : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_87 : STD_LOGIC;
  SIGNAL loop_DES_rounds_6_xor_83 : STD_LOGIC;
  SIGNAL loop_DES_rounds_4_xor_89 : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_83 : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_85 : STD_LOGIC;
  SIGNAL loop_DES_rounds_9_xor_87 : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_87 : STD_LOGIC;
  SIGNAL loop_DES_rounds_8_xor_89 : STD_LOGIC;
  SIGNAL loop_DES_rounds_5_xor_83 : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_89 : STD_LOGIC;
  SIGNAL loop_DES_rounds_6_xor_85 : STD_LOGIC;
  SIGNAL loop_DES_rounds_7_xor_85 : STD_LOGIC;
  SIGNAL loop_DES_rounds_9_xor_89 : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_89 : STD_LOGIC;
  SIGNAL loop_DES_rounds_6_xor_87 : STD_LOGIC;
  SIGNAL loop_DES_rounds_4_xor_91 : STD_LOGIC;
  SIGNAL loop_DES_rounds_7_xor_87 : STD_LOGIC;
  SIGNAL loop_DES_rounds_4_xor_93 : STD_LOGIC;
  SIGNAL loop_DES_rounds_5_xor_85 : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_91 : STD_LOGIC;
  SIGNAL loop_DES_rounds_5_xor_87 : STD_LOGIC;
  SIGNAL loop_DES_rounds_9_xor_91 : STD_LOGIC;
  SIGNAL loop_DES_rounds_6_xor_89 : STD_LOGIC;
  SIGNAL loop_DES_rounds_5_xor_89 : STD_LOGIC;
  SIGNAL loop_DES_rounds_14_xor_81 : STD_LOGIC;
  SIGNAL loop_DES_rounds_4_xor_95 : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_93 : STD_LOGIC;
  SIGNAL loop_DES_rounds_6_xor_91 : STD_LOGIC;
  SIGNAL loop_DES_rounds_4_xor_97 : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_95 : STD_LOGIC;
  SIGNAL loop_DES_rounds_6_xor_93 : STD_LOGIC;
  SIGNAL loop_DES_rounds_9_xor_93 : STD_LOGIC;
  SIGNAL ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_16 : STD_LOGIC_VECTOR (3
      DOWNTO 0);
  SIGNAL ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_17 : STD_LOGIC_VECTOR (3
      DOWNTO 0);
  SIGNAL ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_16 : STD_LOGIC_VECTOR (3
      DOWNTO 0);
  SIGNAL ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_16 : STD_LOGIC_VECTOR (3
      DOWNTO 0);
  SIGNAL ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_16 : STD_LOGIC_VECTOR (3
      DOWNTO 0);
  SIGNAL ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_16 : STD_LOGIC_VECTOR (3
      DOWNTO 0);
  SIGNAL ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_17 : STD_LOGIC_VECTOR (3
      DOWNTO 0);
  SIGNAL ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_17 : STD_LOGIC_VECTOR (3
      DOWNTO 0);
  SIGNAL ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_17 : STD_LOGIC_VECTOR (3
      DOWNTO 0);
  SIGNAL ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_17 : STD_LOGIC_VECTOR (3
      DOWNTO 0);
  SIGNAL ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_17 : STD_LOGIC_VECTOR (3
      DOWNTO 0);
  SIGNAL ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_17 : STD_LOGIC_VECTOR (3
      DOWNTO 0);
  SIGNAL loop_DES_rounds_16_xor_21_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_16_xor_25_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_16_xor_17_cse : STD_LOGIC;
  SIGNAL R_or_133_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_16_xor_5_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_16_xor_10_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_16_xor_9_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_14_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_16_xor_31_cse : STD_LOGIC;
  SIGNAL R_or_127_cse : STD_LOGIC;
  SIGNAL R_or_120_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_16_xor_4_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_8_xor_4_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_5_xor_1_cse : STD_LOGIC;
  SIGNAL R_or_118_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_16_xor_18_cse : STD_LOGIC;
  SIGNAL R_or_cse : STD_LOGIC;
  SIGNAL R_or_122_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_16_xor_24_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_16_xor_26_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_16_xor_32_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_16_xor_23_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_11_xor_17_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_5_xor_15_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_15_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_6_xor_16_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_4_xor_16_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_11_xor_9_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_11_xor_2_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_5_xor_6_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_11_xor_32_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_16_xor_8_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_5_xor_12_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_11_xor_13_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_13_xor_4_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_31_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_31_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_4_xor_29_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_15_xor_29_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_11_xor_11_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_9_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_16_xor_7_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_9_xor_5_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_5_xor_7_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_7_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_11_xor_4_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_1_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_1_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_16_xor_2_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_2_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_8_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_16_xor_27_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_10_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_16_xor_12_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_11_xor_20_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_5_xor_18_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_18_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_16_xor_20_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_6_xor_24_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_26_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_16_xor_28_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_5_xor_25_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_25_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_16_xor_30_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_6_xor_32_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_5_xor_23_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_23_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_6_xor_21_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_17_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_16_xor_15_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_15_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_5_xor_11_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_5_xor_29_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_6_xor_6_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_4_xor_3_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_5_xor_27_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_16_xor_14_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_11_xor_12_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_20_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_16_xor_22_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_5_xor_30_cse : STD_LOGIC;
  SIGNAL R_or_105_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_13_xor_13_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_13_xor_19_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_11_xor_19_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_30_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_6_xor_19_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_16_xor_19_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_28_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_5_xor_21_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_15_xor_21_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_22_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_7_xor_28_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_15_xor_28_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_13_xor_30_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_12_xor_13_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_13_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_11_xor_14_cse : STD_LOGIC;
  SIGNAL loop_DES_rounds_7_xor_22_cse : STD_LOGIC;

  SIGNAL loop_DES_rounds_1_xor_31_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_31_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_15_xor_3_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_25_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_25_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_8_xor_5_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_17_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_17_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_5_xor_3_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_7_xor_6_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_11_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_19_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_8_xor_11_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_12_xor_6_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_14_xor_3_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_10_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_10_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_6_xor_27_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_9_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_9_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_4_xor_14_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_7_xor_27_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_1_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_1_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_6_xor_14_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_13_xor_20_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_29_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_5_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_7_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_13_xor_9_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_2_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_16_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_13_xor_2_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_27_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_8_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_5_xor_8_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_12_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_5_xor_10_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_18_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_16_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_5_xor_16_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_4_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_18_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_20_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_18_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_11_xor_5_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_13_xor_6_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_26_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_24_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_5_xor_24_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_6_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_26_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_28_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_26_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_5_xor_26_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_21_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_23_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_13_xor_32_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_24_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_23_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_13_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_13_xor_17_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_15_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_22_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_16_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_8_xor_29_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_3_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_29_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_7_xor_11_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_11_xor_31_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_13_xor_31_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_7_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_15_xor_5_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_8_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_2_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_30_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_13_xor_5_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_23_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_32_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_11_xor_3_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_14_xor_6_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_19_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_6_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_6_xor_3_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_9_xor_11_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_15_xor_6_nl : STD_LOGIC;
  SIGNAL R_or_125_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_14_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_8_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_4_xor_11_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_6_xor_29_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_8_xor_3_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_1_xor_32_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_11_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_7_xor_3_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_13_xor_27_nl : STD_LOGIC;
  SIGNAL R_or_102_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_27_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_9_xor_27_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_13_xor_12_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_12_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_6_xor_12_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_13_xor_14_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_6_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_9_xor_6_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_15_xor_27_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_3_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_5_xor_13_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_29_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_29_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_11_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_11_xor_29_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_7_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_5_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_9_xor_3_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_13_xor_7_nl : STD_LOGIC;
  SIGNAL R_or_99_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_5_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_5_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_4_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_11_xor_1_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_13_xor_1_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_2_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_4_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_4_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_27_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_27_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_12_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_20_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_13_xor_18_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_20_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_24_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_4_xor_6_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_6_xor_5_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_8_xor_6_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_28_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_30_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_13_xor_25_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_30_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_32_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_8_xor_27_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_21_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_13_xor_23_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_21_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_15_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_13_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_3_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_4_xor_19_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_10_xor_3_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_14_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_14_xor_11_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_2_xor_22_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_6_xor_11_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_9_xor_29_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_13_xor_3_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_14_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_7_xor_12_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_12_xor_14_nl : STD_LOGIC;
  SIGNAL R_or_152_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_22_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_6_xor_20_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_28_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_19_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_5_xor_28_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_3_xor_13_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_4_xor_22_nl : STD_LOGIC;
  SIGNAL loop_DES_rounds_13_xor_22_nl : STD_LOGIC;
  SIGNAL input_rsci_dat : STD_LOGIC_VECTOR (63 DOWNTO 0);
  SIGNAL input_rsci_idat_1 : STD_LOGIC_VECTOR (63 DOWNTO 0);

  SIGNAL key_rsci_dat : STD_LOGIC_VECTOR (63 DOWNTO 0);
  SIGNAL key_rsci_idat_1 : STD_LOGIC_VECTOR (63 DOWNTO 0);

  SIGNAL return_rsci_idat : STD_LOGIC_VECTOR (63 DOWNTO 0);
  SIGNAL return_rsci_dat : STD_LOGIC_VECTOR (63 DOWNTO 0);

  COMPONENT ROM_1i6_1o4_cfafff97e973ca9580e646fecdc2f814b3
    PORT (
      I_1 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      O_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_1_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_1_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  COMPONENT ROM_1i6_1o4_d0e242163cbb0b2ce9c4399bc1cb50f5b3
    PORT (
      I_1 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      O_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL U_ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_1_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_1_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  COMPONENT ROM_1i6_1o4_752c7ca65a598ada4acee0cd63d199c3b3
    PORT (
      I_1 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      O_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_1_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_1_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  COMPONENT ROM_1i6_1o4_ef717c7c87dc90ac6f7b34d533fe115fb3
    PORT (
      I_1 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      O_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_1_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_1_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  COMPONENT ROM_1i6_1o4_3c5c29b75c561d2b741f22e5a3a569dbb3
    PORT (
      I_1 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      O_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL U_ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_1_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_1_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  COMPONENT ROM_1i6_1o4_ef4da7ff735c86ba85f23e51741d972cb3
    PORT (
      I_1 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      O_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_1_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_1_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  SIGNAL U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  SIGNAL U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  SIGNAL U_ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  COMPONENT ROM_1i6_1o4_51ba7157b272cd3b87451219caf38e7cb3
    PORT (
      I_1 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      O_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL U_ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  SIGNAL U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  SIGNAL U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  SIGNAL U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_10_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_10_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  SIGNAL U_ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  COMPONENT ROM_1i6_1o4_8f60b2fc4a3ee4cef30040071bc0219cb3
    PORT (
      I_1 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      O_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL U_ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_1_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_1_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  SIGNAL U_ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  SIGNAL U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_10_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_10_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  SIGNAL U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_10_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_10_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  SIGNAL U_ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_10_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_10_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  SIGNAL U_ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_1_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_1_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  SIGNAL U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_10_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_10_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  COMPONENT des_check_core_core_fsm
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      fsm_output : OUT STD_LOGIC_VECTOR (16 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL des_check_core_core_fsm_inst_fsm_output : STD_LOGIC_VECTOR (16 DOWNTO 0);

  FUNCTION MUX1HOT_s_1_14_2(input_13 : STD_LOGIC;
  input_12 : STD_LOGIC;
  input_11 : STD_LOGIC;
  input_10 : STD_LOGIC;
  input_9 : STD_LOGIC;
  input_8 : STD_LOGIC;
  input_7 : STD_LOGIC;
  input_6 : STD_LOGIC;
  input_5 : STD_LOGIC;
  input_4 : STD_LOGIC;
  input_3 : STD_LOGIC;
  input_2 : STD_LOGIC;
  input_1 : STD_LOGIC;
  input_0 : STD_LOGIC;
  sel : STD_LOGIC_VECTOR(13 DOWNTO 0))
  RETURN STD_LOGIC IS
    VARIABLE result : STD_LOGIC;
    VARIABLE tmp : STD_LOGIC;

    BEGIN
      tmp := sel(0);
      result := input_0 and tmp;
      tmp := sel(1);
      result := result or ( input_1 and tmp);
      tmp := sel(2);
      result := result or ( input_2 and tmp);
      tmp := sel(3);
      result := result or ( input_3 and tmp);
      tmp := sel(4);
      result := result or ( input_4 and tmp);
      tmp := sel(5);
      result := result or ( input_5 and tmp);
      tmp := sel(6);
      result := result or ( input_6 and tmp);
      tmp := sel(7);
      result := result or ( input_7 and tmp);
      tmp := sel(8);
      result := result or ( input_8 and tmp);
      tmp := sel(9);
      result := result or ( input_9 and tmp);
      tmp := sel(10);
      result := result or ( input_10 and tmp);
      tmp := sel(11);
      result := result or ( input_11 and tmp);
      tmp := sel(12);
      result := result or ( input_12 and tmp);
      tmp := sel(13);
      result := result or ( input_13 and tmp);
    RETURN result;
  END;

  FUNCTION MUX1HOT_s_1_15_2(input_14 : STD_LOGIC;
  input_13 : STD_LOGIC;
  input_12 : STD_LOGIC;
  input_11 : STD_LOGIC;
  input_10 : STD_LOGIC;
  input_9 : STD_LOGIC;
  input_8 : STD_LOGIC;
  input_7 : STD_LOGIC;
  input_6 : STD_LOGIC;
  input_5 : STD_LOGIC;
  input_4 : STD_LOGIC;
  input_3 : STD_LOGIC;
  input_2 : STD_LOGIC;
  input_1 : STD_LOGIC;
  input_0 : STD_LOGIC;
  sel : STD_LOGIC_VECTOR(14 DOWNTO 0))
  RETURN STD_LOGIC IS
    VARIABLE result : STD_LOGIC;
    VARIABLE tmp : STD_LOGIC;

    BEGIN
      tmp := sel(0);
      result := input_0 and tmp;
      tmp := sel(1);
      result := result or ( input_1 and tmp);
      tmp := sel(2);
      result := result or ( input_2 and tmp);
      tmp := sel(3);
      result := result or ( input_3 and tmp);
      tmp := sel(4);
      result := result or ( input_4 and tmp);
      tmp := sel(5);
      result := result or ( input_5 and tmp);
      tmp := sel(6);
      result := result or ( input_6 and tmp);
      tmp := sel(7);
      result := result or ( input_7 and tmp);
      tmp := sel(8);
      result := result or ( input_8 and tmp);
      tmp := sel(9);
      result := result or ( input_9 and tmp);
      tmp := sel(10);
      result := result or ( input_10 and tmp);
      tmp := sel(11);
      result := result or ( input_11 and tmp);
      tmp := sel(12);
      result := result or ( input_12 and tmp);
      tmp := sel(13);
      result := result or ( input_13 and tmp);
      tmp := sel(14);
      result := result or ( input_14 and tmp);
    RETURN result;
  END;

  FUNCTION MUX1HOT_s_1_3_2(input_2 : STD_LOGIC;
  input_1 : STD_LOGIC;
  input_0 : STD_LOGIC;
  sel : STD_LOGIC_VECTOR(2 DOWNTO 0))
  RETURN STD_LOGIC IS
    VARIABLE result : STD_LOGIC;
    VARIABLE tmp : STD_LOGIC;

    BEGIN
      tmp := sel(0);
      result := input_0 and tmp;
      tmp := sel(1);
      result := result or ( input_1 and tmp);
      tmp := sel(2);
      result := result or ( input_2 and tmp);
    RETURN result;
  END;

  FUNCTION MUX1HOT_s_1_4_2(input_3 : STD_LOGIC;
  input_2 : STD_LOGIC;
  input_1 : STD_LOGIC;
  input_0 : STD_LOGIC;
  sel : STD_LOGIC_VECTOR(3 DOWNTO 0))
  RETURN STD_LOGIC IS
    VARIABLE result : STD_LOGIC;
    VARIABLE tmp : STD_LOGIC;

    BEGIN
      tmp := sel(0);
      result := input_0 and tmp;
      tmp := sel(1);
      result := result or ( input_1 and tmp);
      tmp := sel(2);
      result := result or ( input_2 and tmp);
      tmp := sel(3);
      result := result or ( input_3 and tmp);
    RETURN result;
  END;

  FUNCTION MUX1HOT_s_1_5_2(input_4 : STD_LOGIC;
  input_3 : STD_LOGIC;
  input_2 : STD_LOGIC;
  input_1 : STD_LOGIC;
  input_0 : STD_LOGIC;
  sel : STD_LOGIC_VECTOR(4 DOWNTO 0))
  RETURN STD_LOGIC IS
    VARIABLE result : STD_LOGIC;
    VARIABLE tmp : STD_LOGIC;

    BEGIN
      tmp := sel(0);
      result := input_0 and tmp;
      tmp := sel(1);
      result := result or ( input_1 and tmp);
      tmp := sel(2);
      result := result or ( input_2 and tmp);
      tmp := sel(3);
      result := result or ( input_3 and tmp);
      tmp := sel(4);
      result := result or ( input_4 and tmp);
    RETURN result;
  END;

  FUNCTION MUX1HOT_s_1_6_2(input_5 : STD_LOGIC;
  input_4 : STD_LOGIC;
  input_3 : STD_LOGIC;
  input_2 : STD_LOGIC;
  input_1 : STD_LOGIC;
  input_0 : STD_LOGIC;
  sel : STD_LOGIC_VECTOR(5 DOWNTO 0))
  RETURN STD_LOGIC IS
    VARIABLE result : STD_LOGIC;
    VARIABLE tmp : STD_LOGIC;

    BEGIN
      tmp := sel(0);
      result := input_0 and tmp;
      tmp := sel(1);
      result := result or ( input_1 and tmp);
      tmp := sel(2);
      result := result or ( input_2 and tmp);
      tmp := sel(3);
      result := result or ( input_3 and tmp);
      tmp := sel(4);
      result := result or ( input_4 and tmp);
      tmp := sel(5);
      result := result or ( input_5 and tmp);
    RETURN result;
  END;

  FUNCTION MUX1HOT_s_1_7_2(input_6 : STD_LOGIC;
  input_5 : STD_LOGIC;
  input_4 : STD_LOGIC;
  input_3 : STD_LOGIC;
  input_2 : STD_LOGIC;
  input_1 : STD_LOGIC;
  input_0 : STD_LOGIC;
  sel : STD_LOGIC_VECTOR(6 DOWNTO 0))
  RETURN STD_LOGIC IS
    VARIABLE result : STD_LOGIC;
    VARIABLE tmp : STD_LOGIC;

    BEGIN
      tmp := sel(0);
      result := input_0 and tmp;
      tmp := sel(1);
      result := result or ( input_1 and tmp);
      tmp := sel(2);
      result := result or ( input_2 and tmp);
      tmp := sel(3);
      result := result or ( input_3 and tmp);
      tmp := sel(4);
      result := result or ( input_4 and tmp);
      tmp := sel(5);
      result := result or ( input_5 and tmp);
      tmp := sel(6);
      result := result or ( input_6 and tmp);
    RETURN result;
  END;

  FUNCTION MUX_s_1_2_2(input_0 : STD_LOGIC;
  input_1 : STD_LOGIC;
  sel : STD_LOGIC)
  RETURN STD_LOGIC IS
    VARIABLE result : STD_LOGIC;

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

  FUNCTION MUX_v_4_2_2(input_0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  input_1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
  sel : STD_LOGIC)
  RETURN STD_LOGIC_VECTOR IS
    VARIABLE result : STD_LOGIC_VECTOR(3 DOWNTO 0);

    BEGIN
      CASE sel IS
        WHEN '0' =>
          result := input_0;
        WHEN others =>
          result := input_1;
      END CASE;
    RETURN result;
  END;

BEGIN
  input_rsci : work.ccs_in_pkg_v1.ccs_in_v1
    GENERIC MAP(
      rscid => 1,
      width => 64
      )
    PORT MAP(
      dat => input_rsci_dat,
      idat => input_rsci_idat_1
    );
  input_rsci_dat <= input_rsc_dat;
  input_rsci_idat <= input_rsci_idat_1;

  key_rsci : work.ccs_in_pkg_v1.ccs_in_v1
    GENERIC MAP(
      rscid => 2,
      width => 64
      )
    PORT MAP(
      dat => key_rsci_dat,
      idat => key_rsci_idat_1
    );
  key_rsci_dat <= key_rsc_dat;
  key_rsci_idat <= key_rsci_idat_1;

  return_rsci : work.ccs_out_pkg_v1.ccs_out_v1
    GENERIC MAP(
      rscid => 3,
      width => 64
      )
    PORT MAP(
      idat => return_rsci_idat,
      dat => return_rsci_dat
    );
  return_rsci_idat <= STD_LOGIC_VECTOR'( return_rsci_idat_63 & return_rsci_idat_62
      & return_rsci_idat_61 & return_rsci_idat_60 & return_rsci_idat_59 & return_rsci_idat_58
      & return_rsci_idat_57 & return_rsci_idat_56 & return_rsci_idat_55 & return_rsci_idat_54
      & return_rsci_idat_53 & return_rsci_idat_52 & return_rsci_idat_51 & return_rsci_idat_50
      & return_rsci_idat_49 & return_rsci_idat_48 & return_rsci_idat_47 & return_rsci_idat_46
      & return_rsci_idat_45 & return_rsci_idat_44 & return_rsci_idat_43 & return_rsci_idat_42
      & return_rsci_idat_41 & return_rsci_idat_40 & return_rsci_idat_39 & return_rsci_idat_38
      & return_rsci_idat_37 & return_rsci_idat_36 & return_rsci_idat_35 & return_rsci_idat_34
      & return_rsci_idat_33 & return_rsci_idat_32 & return_rsci_idat_31 & return_rsci_idat_30
      & return_rsci_idat_29 & return_rsci_idat_28 & return_rsci_idat_27 & return_rsci_idat_26
      & return_rsci_idat_25 & return_rsci_idat_24 & return_rsci_idat_23 & return_rsci_idat_22
      & return_rsci_idat_21 & return_rsci_idat_20 & return_rsci_idat_19 & return_rsci_idat_18
      & return_rsci_idat_17 & return_rsci_idat_16 & return_rsci_idat_15 & return_rsci_idat_14
      & return_rsci_idat_13 & return_rsci_idat_12 & return_rsci_idat_11 & return_rsci_idat_10
      & return_rsci_idat_9 & return_rsci_idat_8 & return_rsci_idat_7 & return_rsci_idat_6
      & return_rsci_idat_5 & return_rsci_idat_4 & return_rsci_idat_3 & return_rsci_idat_2
      & return_rsci_idat_1 & return_rsci_idat_0);
  return_rsc_dat <= return_rsci_dat;

  input_rsc_triosy_obj : work.mgc_io_sync_pkg_v2.mgc_io_sync_v2
    GENERIC MAP(
      valid => 0
      )
    PORT MAP(
      ld => reg_key_rsc_triosy_obj_ld_cse,
      lz => input_rsc_triosy_lz
    );
  key_rsc_triosy_obj : work.mgc_io_sync_pkg_v2.mgc_io_sync_v2
    GENERIC MAP(
      valid => 0
      )
    PORT MAP(
      ld => reg_key_rsc_triosy_obj_ld_cse,
      lz => key_rsc_triosy_lz
    );
  return_rsc_triosy_obj : work.mgc_io_sync_pkg_v2.mgc_io_sync_v2
    GENERIC MAP(
      valid => 0
      )
    PORT MAP(
      ld => return_rsc_triosy_obj_ld,
      lz => return_rsc_triosy_lz
    );
  U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_1_rg : ROM_1i6_1o4_cfafff97e973ca9580e646fecdc2f814b3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_1_rg_I_1,
      O_1 => U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_1_rg_O_1
    );
  U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_1_rg_I_1 <= STD_LOGIC_VECTOR'(
      ((input_rsci_idat(30)) XOR (ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_17(3))
      XOR (key_rsci_idat(39))) & ((input_rsci_idat(4)) XOR (O_1_out_3(3)) XOR (key_rsci_idat(30)))
      & ((input_rsci_idat(38)) XOR (ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_17(3))
      XOR (key_rsci_idat(15))) & ((input_rsci_idat(46)) XOR (ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_17(0))
      XOR (key_rsci_idat(5))) & ((input_rsci_idat(54)) XOR (ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_17(0))
      XOR (key_rsci_idat(63))) & ((input_rsci_idat(62)) XOR (ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_17(3))
      XOR (key_rsci_idat(53))));
  ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_16 <= U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_1_rg_O_1;

  U_ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_1_rg : ROM_1i6_1o4_d0e242163cbb0b2ce9c4399bc1cb50f5b3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_1_rg_I_1,
      O_1 => U_ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_1_rg_O_1
    );
  U_ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_1_rg_I_1 <= STD_LOGIC_VECTOR'(
      (R_20_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(12))) & (R_15_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(30)))
      & ((reg_input_ftd(35)) XOR (ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_17(3))
      XOR (key_io_read_key_rsc_cse_63_1_sva(5))) & (R_27_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(6)))
      & loop_DES_rounds_2_xor_81 & (R_15_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(53))));
  ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_17 <= U_ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_1_rg_O_1;

  U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_1_rg : ROM_1i6_1o4_752c7ca65a598ada4acee0cd63d199c3b3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_1_rg_I_1,
      O_1 => U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_1_rg_O_1
    );
  U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_1_rg_I_1 <= STD_LOGIC_VECTOR'(
      (R_7_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(10))) & (R_3_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(51)))
      & (R_7_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(50))) & ((reg_input_ftd(7))
      XOR (s_output_1_19_16_20_sva(3)) XOR (key_io_read_key_rsc_cse_63_1_sva(33)))
      & (R_31_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(8))) & ((reg_input_ftd(23))
      XOR (ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_17(2)) XOR (key_io_read_key_rsc_cse_63_1_sva(56))));
  ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_16 <= U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_1_rg_O_1;

  U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_1_rg : ROM_1i6_1o4_ef717c7c87dc90ac6f7b34d533fe115fb3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_1_rg_I_1,
      O_1 => U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_1_rg_O_1
    );
  U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_1_rg_I_1 <= STD_LOGIC_VECTOR'(
      loop_DES_rounds_2_xor_87 & (R_11_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(0)))
      & (R_15_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(43))) & ((reg_input_ftd(9))
      XOR (ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_17(0)) XOR (key_io_read_key_rsc_cse_63_1_sva(32)))
      & (R_11_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(17))) & ((reg_input_ftd(25))
      XOR (s_output_1_19_16_20_sva(2)) XOR (key_io_read_key_rsc_cse_63_1_sva(34))));
  ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_16 <= U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_1_rg_O_1;

  U_ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_1_rg : ROM_1i6_1o4_3c5c29b75c561d2b741f22e5a3a569dbb3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_1_rg_I_1,
      O_1 => U_ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_1_rg_O_1
    );
  U_ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_1_rg_I_1 <= STD_LOGIC_VECTOR'(
      loop_DES_rounds_2_xor_83 & ((reg_input_ftd(35)) XOR (ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_17(3))
      XOR (key_io_read_key_rsc_cse_63_1_sva(13))) & (R_15_9_sva XOR (key_io_read_key_rsc_cse_63_1_sva(36)))
      & ((reg_input_ftd(11)) XOR (s_output_1_19_16_20_sva(1)) XOR (key_io_read_key_rsc_cse_63_1_sva(45)))
      & (R_20_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(46))) & (R_20_1_sva XOR
      (key_io_read_key_rsc_cse_63_1_sva(27))));
  ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_16 <= U_ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_1_rg_O_1;

  U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_1_rg : ROM_1i6_1o4_ef4da7ff735c86ba85f23e51741d972cb3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_1_rg_I_1,
      O_1 => U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_1_rg_O_1
    );
  U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_1_rg_I_1 <= STD_LOGIC_VECTOR'(
      ((reg_input_ftd(23)) XOR (ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_17(2))
      XOR (key_io_read_key_rsc_cse_63_1_sva(26))) & ((reg_input_ftd(5)) XOR (s_output_1_19_16_20_sva(0))
      XOR (key_io_read_key_rsc_cse_63_1_sva(40))) & loop_DES_rounds_2_xor_91 & (R_19_11_sva
      XOR (key_io_read_key_rsc_cse_63_1_sva(58))) & (R_0_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(9)))
      & loop_DES_rounds_2_xor_93);
  ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_16 <= U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_1_rg_O_1;

  U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_rg : ROM_1i6_1o4_ef4da7ff735c86ba85f23e51741d972cb3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_rg_I_1,
      O_1 => U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_rg_O_1
    );
  U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_rg_I_1 <= STD_LOGIC_VECTOR'( ((input_rsci_idat(25))
      XOR (key_rsci_idat(19))) & ((input_rsci_idat(7)) XOR (key_rsci_idat(33))) &
      ((input_rsci_idat(33)) XOR (key_rsci_idat(50))) & ((input_rsci_idat(41)) XOR
      (key_rsci_idat(51))) & ((input_rsci_idat(49)) XOR (key_rsci_idat(2))) & ((input_rsci_idat(57))
      XOR (key_rsci_idat(9))));
  ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_17 <= U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_rg_O_1;

  U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_rg : ROM_1i6_1o4_752c7ca65a598ada4acee0cd63d199c3b3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_rg_I_1,
      O_1 => U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_rg_O_1
    );
  U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_rg_I_1 <= STD_LOGIC_VECTOR'( ((input_rsci_idat(59))
      XOR (key_rsci_idat(3))) & ((input_rsci_idat(33)) XOR (key_rsci_idat(44))) &
      ((input_rsci_idat(1)) XOR (key_rsci_idat(43))) & ((input_rsci_idat(9)) XOR
      (key_rsci_idat(26))) & ((input_rsci_idat(17)) XOR (key_rsci_idat(1))) & ((input_rsci_idat(25))
      XOR (key_rsci_idat(49))));
  ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_17 <= U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_rg_O_1;

  U_ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_rg : ROM_1i6_1o4_3c5c29b75c561d2b741f22e5a3a569dbb3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_rg_I_1,
      O_1 => U_ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_rg_O_1
    );
  U_ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_rg_I_1 <= STD_LOGIC_VECTOR'( ((input_rsci_idat(63))
      XOR (key_rsci_idat(61))) & ((input_rsci_idat(37)) XOR (key_rsci_idat(6))) &
      ((input_rsci_idat(5)) XOR (key_rsci_idat(29))) & ((input_rsci_idat(13)) XOR
      (key_rsci_idat(38))) & ((input_rsci_idat(21)) XOR (key_rsci_idat(39))) & ((input_rsci_idat(29))
      XOR (key_rsci_idat(20))));
  ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_17 <= U_ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_rg_O_1;

  U_ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_rg : ROM_1i6_1o4_51ba7157b272cd3b87451219caf38e7cb3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_rg_I_1,
      O_1 => U_ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_rg_O_1
    );
  U_ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_rg_I_1 <= STD_LOGIC_VECTOR'( ((input_rsci_idat(27))
      XOR (key_rsci_idat(17))) & ((input_rsci_idat(1)) XOR (key_rsci_idat(35))) &
      ((input_rsci_idat(35)) XOR (key_rsci_idat(34))) & ((input_rsci_idat(43)) XOR
      (key_rsci_idat(59))) & ((input_rsci_idat(51)) XOR (key_rsci_idat(11))) & ((input_rsci_idat(59))
      XOR (key_rsci_idat(41))));
  ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_17 <= U_ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_rg_O_1;

  U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_rg : ROM_1i6_1o4_ef717c7c87dc90ac6f7b34d533fe115fb3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_rg_I_1,
      O_1 => U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_rg_O_1
    );
  U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_rg_I_1 <= STD_LOGIC_VECTOR'( ((input_rsci_idat(61))
      XOR (key_rsci_idat(42))) & ((input_rsci_idat(35)) XOR (key_rsci_idat(60)))
      & ((input_rsci_idat(3)) XOR (key_rsci_idat(36))) & ((input_rsci_idat(11)) XOR
      (key_rsci_idat(25))) & ((input_rsci_idat(19)) XOR (key_rsci_idat(10))) & ((input_rsci_idat(27))
      XOR (key_rsci_idat(27))));
  ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_17 <= U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_rg_O_1;

  U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_rg : ROM_1i6_1o4_cfafff97e973ca9580e646fecdc2f814b3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_rg_I_1,
      O_1 => U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_rg_O_1
    );
  U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_rg_I_1 <= STD_LOGIC_VECTOR'( ((reg_input_ftd(30))
      XOR (key_io_read_key_rsc_cse_63_1_sva(30))) & ((reg_input_ftd(4)) XOR (key_io_read_key_rsc_cse_63_1_sva(21)))
      & ((reg_input_ftd(38)) XOR (key_io_read_key_rsc_cse_63_1_sva(6))) & ((reg_input_ftd(46))
      XOR (key_io_read_key_rsc_cse_63_1_sva(61))) & ((reg_input_ftd(54)) XOR (key_io_read_key_rsc_cse_63_1_sva(54)))
      & ((reg_input_ftd(62)) XOR (key_io_read_key_rsc_cse_63_1_sva(44))));
  ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_17 <= U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_rg_O_1;

  U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_10_rg : ROM_1i6_1o4_cfafff97e973ca9580e646fecdc2f814b3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_10_rg_I_1,
      O_1 => U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_10_rg_O_1
    );
  U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_10_rg_I_1 <= STD_LOGIC_VECTOR'(
      (MUX1HOT_s_1_14_2(((key_io_read_key_rsc_cse_63_1_sva(54)) XOR (reg_input_ftd(30))
      XOR (s_output_1_3_0_39_sva(3))), (R_28_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(5))),
      (R_28_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(21))), (R_28_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(37))),
      loop_DES_rounds_7_xor_85, (R_28_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(4))),
      (R_28_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(12))), (R_28_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(28))),
      (R_27_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(44))), (R_28_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(60))),
      (R_27_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(11))), (R_28_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(27))),
      (R_27_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(14))), (R_28_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(22))),
      STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))) & (MUX1HOT_s_1_14_2(((reg_input_ftd(4)) XOR (s_output_1_19_16_20_sva(3))
      XOR (key_io_read_key_rsc_cse_63_1_sva(45))), loop_DES_rounds_4_xor_97, loop_DES_rounds_5_xor_85,
      (R_23_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(28))), loop_DES_rounds_2_xor_81,
      (R_23_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(60))), (R_23_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(3))),
      (R_23_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(19))), (R_1_8_sva XOR (key_io_read_key_rsc_cse_63_1_sva(6))),
      (R_23_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(22))), (R_1_8_sva XOR (key_io_read_key_rsc_cse_63_1_sva(38))),
      (R_23_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(54))), (R_1_8_sva XOR (key_io_read_key_rsc_cse_63_1_sva(5))),
      (R_23_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(13))), STD_LOGIC_VECTOR'(
      (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5)) & (fsm_output(6))
      & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10)) &
      (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14)) &
      (fsm_output(15))))) & (MUX1HOT_s_1_14_2(((key_io_read_key_rsc_cse_63_1_sva(30))
      XOR (reg_input_ftd(38)) XOR (s_output_1_3_0_9_sva(3))), (R_27_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(46))),
      (R_27_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(62))), (R_27_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(13))),
      (R_27_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(29))), (R_27_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(45))),
      (R_27_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(53))), (R_27_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(4))),
      (R_27_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(20))), (R_27_11_sva XOR
      (key_io_read_key_rsc_cse_63_1_sva(36))), (R_27_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(52))),
      (R_27_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(3))), (R_27_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(19))),
      (R_27_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(27))), STD_LOGIC_VECTOR'(
      (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5)) & (fsm_output(6))
      & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10)) &
      (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14)) &
      (fsm_output(15))))) & (MUX1HOT_s_1_14_2(((reg_input_ftd(46)) XOR (s_output_1_19_16_50_sva(0))
      XOR (key_io_read_key_rsc_cse_63_1_sva(20))), loop_DES_rounds_4_xor_81, (R_26_4_sva
      XOR (key_io_read_key_rsc_cse_63_1_sva(52))), (R_26_5_sva XOR (key_io_read_key_rsc_cse_63_1_sva(3))),
      (R_26_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(19))), (R_26_5_sva XOR (key_io_read_key_rsc_cse_63_1_sva(6))),
      (R_26_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(14))), loop_DES_rounds_10_xor_81,
      (R_25_6_sva XOR (key_io_read_key_rsc_cse_63_1_sva(46))), (R_22_7_sva XOR (key_io_read_key_rsc_cse_63_1_sva(62))),
      (R_25_6_sva XOR (key_io_read_key_rsc_cse_63_1_sva(13))), (R_22_7_sva XOR (key_io_read_key_rsc_cse_63_1_sva(29))),
      (R_25_6_sva XOR (key_io_read_key_rsc_cse_63_1_sva(45))), (R_22_7_sva XOR (key_io_read_key_rsc_cse_63_1_sva(53))),
      STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))) & (MUX1HOT_s_1_14_2(((reg_input_ftd(54)) XOR (s_output_1_3_0_54_sva(0))
      XOR (key_io_read_key_rsc_cse_63_1_sva(13))), (R_24_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(29))),
      (R_22_7_sva XOR (key_io_read_key_rsc_cse_63_1_sva(45))), loop_DES_rounds_6_xor_91,
      (R_25_6_sva XOR (key_io_read_key_rsc_cse_63_1_sva(12))), loop_DES_rounds_8_xor_83,
      loop_DES_rounds_4_xor_81, loop_DES_rounds_10_xor_89, (R_24_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(3))),
      loop_DES_rounds_9_xor_93, loop_DES_rounds_5_xor_83, (R_15_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(22))),
      loop_DES_rounds_7_xor_83, (R_15_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(46))),
      STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))) & (MUX1HOT_s_1_14_2(((key_io_read_key_rsc_cse_63_1_sva(3))
      XOR (reg_input_ftd(62)) XOR (s_output_1_3_0_24_sva(3))), (R_24_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(19))),
      loop_DES_rounds_5_xor_83, (R_24_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(22))),
      loop_DES_rounds_7_xor_83, (R_24_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(54))),
      (R_24_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(62))), (R_24_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(13))),
      (R_23_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(29))), (R_24_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(45))),
      (R_23_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(61))), (R_24_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(12))),
      (R_23_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(28))), (R_24_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(36))),
      STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))));
  O_1_out <= U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_10_rg_O_1;

  U_ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_rg : ROM_1i6_1o4_d0e242163cbb0b2ce9c4399bc1cb50f5b3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_rg_I_1,
      O_1 => U_ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_rg_O_1
    );
  U_ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_rg_I_1 <= STD_LOGIC_VECTOR'( (MUX1HOT_s_1_15_2(((input_rsci_idat(29))
      XOR (key_rsci_idat(5))), ((key_io_read_key_rsc_cse_63_1_sva(28)) XOR (reg_input_ftd(28))
      XOR (s_output_1_3_0_54_sva(2))), (R_20_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(44))),
      (R_20_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(60))), loop_DES_rounds_6_xor_87,
      (R_20_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(27))), (R_20_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(14))),
      loop_DES_rounds_9_xor_81, (R_20_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(38))),
      loop_DES_rounds_9_xor_89, (R_20_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(5))),
      (R_20_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(21))), (R_20_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(37))),
      (R_20_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(53))), (R_20_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(61))),
      STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4))
      & (fsm_output(5)) & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9))
      & (fsm_output(10)) & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13))
      & (fsm_output(14)) & (fsm_output(15))))) & (MUX1HOT_s_1_15_2(((input_rsci_idat(3))
      XOR (key_rsci_idat(23))), ((key_io_read_key_rsc_cse_63_1_sva(46)) XOR (reg_input_ftd(2))
      XOR (s_output_1_19_16_20_sva(2))), (R_15_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(62))),
      (R_15_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(13))), (R_15_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(29))),
      (R_15_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(45))), (R_15_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(61))),
      (R_15_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(4))), (R_15_9_sva XOR (key_io_read_key_rsc_cse_63_1_sva(20))),
      (R_15_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(36))), (R_15_11_sva XOR
      (key_io_read_key_rsc_cse_63_1_sva(52))), (R_15_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(3))),
      (R_15_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(19))), (R_15_10_sva XOR
      (key_io_read_key_rsc_cse_63_1_sva(6))), loop_DES_rounds_6_xor_89, STD_LOGIC_VECTOR'(
      (fsm_output(0)) & (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))) & (MUX1HOT_s_1_15_2(((input_rsci_idat(37)) XOR (key_rsci_idat(63))),
      ((key_io_read_key_rsc_cse_63_1_sva(21)) XOR (reg_input_ftd(36)) XOR (s_output_1_19_16_35_sva(3))),
      (R_19_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(37))), (R_19_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(53))),
      (R_19_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(4))), (R_19_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(20))),
      (R_19_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(36))), (R_19_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(44))),
      (R_19_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(60))), (R_1_6_sva XOR (key_io_read_key_rsc_cse_63_1_sva(11))),
      (R_19_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(27))), (R_1_6_sva XOR (key_io_read_key_rsc_cse_63_1_sva(14))),
      (R_19_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(30))), (R_1_6_sva XOR (key_io_read_key_rsc_cse_63_1_sva(46))),
      (R_19_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(54))), STD_LOGIC_VECTOR'(
      (fsm_output(0)) & (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))) & (MUX1HOT_s_1_15_2(((input_rsci_idat(45)) XOR (key_rsci_idat(28))),
      ((reg_input_ftd(44)) XOR (s_output_1_3_0_24_sva(2)) XOR (key_io_read_key_rsc_cse_63_1_sva(22))),
      (R_18_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(38))), (R_27_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(54))),
      (R_3_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(5))), (R_31_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(21))),
      (R_7_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(37))), (R_27_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(45))),
      (R_18_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(61))), (R_1_7_sva XOR (key_io_read_key_rsc_cse_63_1_sva(12))),
      (R_3_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(28))), (R_10_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(44))),
      loop_DES_rounds_14_xor_81, (R_31_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(11))),
      (R_1_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(19))), STD_LOGIC_VECTOR'(
      (fsm_output(0)) & (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))) & (MUX1HOT_s_1_15_2(((input_rsci_idat(53)) XOR (key_rsci_idat(37))),
      ((reg_input_ftd(52)) XOR (s_output_1_3_0_9_sva(1)) XOR (key_io_read_key_rsc_cse_63_1_sva(60))),
      (R_15_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(11))), (R_15_9_sva XOR (key_io_read_key_rsc_cse_63_1_sva(27))),
      loop_DES_rounds_6_xor_89, (R_15_9_sva XOR (key_io_read_key_rsc_cse_63_1_sva(30))),
      (R_15_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(46))), loop_DES_rounds_9_xor_89,
      (R_15_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(5))), (R_16_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(21))),
      (R_16_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(37))), (R_16_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(53))),
      (R_16_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(4))), (R_16_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(20))),
      (R_14_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(28))), STD_LOGIC_VECTOR'(
      (fsm_output(0)) & (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))) & (MUX1HOT_s_1_15_2(((input_rsci_idat(61)) XOR (key_rsci_idat(46))),
      ((key_io_read_key_rsc_cse_63_1_sva(4)) XOR (reg_input_ftd(60)) XOR (s_output_1_19_16_50_sva(2))),
      (R_16_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(20))), (R_16_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(36))),
      (R_16_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(52))), (R_16_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(3))),
      (R_16_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(19))), (R_16_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(27))),
      (R_16_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(14))), (R_15_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(30))),
      (R_15_9_sva XOR (key_io_read_key_rsc_cse_63_1_sva(46))), (R_15_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(62))),
      (R_15_9_sva XOR (key_io_read_key_rsc_cse_63_1_sva(13))), (R_15_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(29))),
      (R_15_9_sva XOR (key_io_read_key_rsc_cse_63_1_sva(37))), STD_LOGIC_VECTOR'(
      (fsm_output(0)) & (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))));
  O_1_out_1 <= U_ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_rg_O_1;

  U_ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_1_rg : ROM_1i6_1o4_8f60b2fc4a3ee4cef30040071bc0219cb3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_1_rg_I_1,
      O_1 => U_ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_1_rg_O_1
    );
  U_ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_1_rg_I_1 <= STD_LOGIC_VECTOR'(
      (MUX_s_1_2_2((R_0_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(61))), (R_0_11_sva
      XOR (key_io_read_key_rsc_cse_63_1_sva(45))), fsm_output(15))) & (MUX_s_1_2_2((R_31_4_sva
      XOR (key_io_read_key_rsc_cse_63_1_sva(54))), (R_27_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(38))),
      fsm_output(15))) & (MUX_s_1_2_2(((reg_input_ftd(5)) XOR (s_output_1_19_16_20_sva(0))
      XOR (key_io_read_key_rsc_cse_63_1_sva(20))), (R_31_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(4))),
      fsm_output(15))) & (MUX_s_1_2_2(((reg_input_ftd(13)) XOR (ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_17(1))
      XOR (key_io_read_key_rsc_cse_63_1_sva(37))), (R_26_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(21))),
      fsm_output(15))) & (MUX_s_1_2_2(loop_DES_rounds_2_xor_89, loop_DES_rounds_14_xor_81,
      fsm_output(15))) & (MUX_s_1_2_2((R_27_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(22))),
      (R_28_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(6))), fsm_output(15))));
  O_1_out_2 <= U_ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_1_rg_O_1;

  U_ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_rg : ROM_1i6_1o4_8f60b2fc4a3ee4cef30040071bc0219cb3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_rg_I_1,
      O_1 => U_ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_rg_O_1
    );
  U_ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_rg_I_1 <= STD_LOGIC_VECTOR'( (MUX1HOT_s_1_14_2(((input_rsci_idat(57))
      XOR (key_rsci_idat(54))), ((key_io_read_key_rsc_cse_63_1_sva(12)) XOR (reg_input_ftd(56))
      XOR (s_output_1_3_0_54_sva(3))), (R_0_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(28))),
      (R_0_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(44))), (R_0_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(60))),
      (R_0_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(11))), (R_0_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(27))),
      (R_0_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(6))), (R_0_9_sva XOR (key_io_read_key_rsc_cse_63_1_sva(22))),
      (R_0_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(38))), (R_0_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(54))),
      (R_0_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(5))), (R_0_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(21))),
      (R_0_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(37))), STD_LOGIC_VECTOR'(
      (fsm_output(0)) & (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14)))))
      & (MUX1HOT_s_1_14_2(((input_rsci_idat(39)) XOR (key_rsci_idat(47))), ((reg_input_ftd(38))
      XOR (s_output_1_3_0_9_sva(3)) XOR (key_io_read_key_rsc_cse_63_1_sva(5))), (R_27_11_sva
      XOR (key_io_read_key_rsc_cse_63_1_sva(21))), (R_27_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(37))),
      (R_27_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(53))), (R_27_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(4))),
      (R_27_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(20))), loop_DES_rounds_9_xor_83,
      (R_27_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(44))), (R_27_10_sva XOR
      (key_io_read_key_rsc_cse_63_1_sva(60))), (R_27_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(11))),
      (R_27_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(27))), (R_27_11_sva XOR
      (key_io_read_key_rsc_cse_63_1_sva(14))), (R_27_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(30))),
      STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4))
      & (fsm_output(5)) & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9))
      & (fsm_output(10)) & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13))
      & (fsm_output(14))))) & (MUX1HOT_s_1_14_2(((input_rsci_idat(7)) XOR (key_rsci_idat(13))),
      ((key_io_read_key_rsc_cse_63_1_sva(36)) XOR (reg_input_ftd(6)) XOR (s_output_1_19_16_5_sva(0))),
      (R_31_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(52))), (R_31_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(3))),
      (R_31_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(19))), (R_31_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(6))),
      (R_31_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(22))), (R_31_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(30))),
      (R_31_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(46))), (R_31_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(62))),
      (R_31_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(13))), (R_31_10_sva XOR
      (key_io_read_key_rsc_cse_63_1_sva(29))), (R_31_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(45))),
      (R_31_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(61))), STD_LOGIC_VECTOR'(
      (fsm_output(0)) & (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14)))))
      & (MUX1HOT_s_1_14_2(((input_rsci_idat(15)) XOR (key_rsci_idat(30))), ((reg_input_ftd(14))
      XOR (s_output_1_19_16_35_sva(1)) XOR (key_io_read_key_rsc_cse_63_1_sva(53))),
      (R_3_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(4))), (R_30_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(20))),
      (R_3_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(36))), (R_30_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(52))),
      (R_3_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(3))), (R_30_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(11))),
      (R_3_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(27))), (R_3_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(14))),
      loop_DES_rounds_10_xor_81, (R_3_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(46))),
      (R_26_5_sva XOR (key_io_read_key_rsc_cse_63_1_sva(62))), (R_3_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(13))),
      STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4))
      & (fsm_output(5)) & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9))
      & (fsm_output(10)) & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13))
      & (fsm_output(14))))) & (MUX1HOT_s_1_14_2(((input_rsci_idat(23)) XOR (key_rsci_idat(4))),
      ((reg_input_ftd(22)) XOR (s_output_1_3_0_24_sva(0)) XOR (key_io_read_key_rsc_cse_63_1_sva(27))),
      (R_26_5_sva XOR (key_io_read_key_rsc_cse_63_1_sva(14))), (R_29_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(30))),
      (R_29_5_sva XOR (key_io_read_key_rsc_cse_63_1_sva(46))), (R_29_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(62))),
      (R_29_5_sva XOR (key_io_read_key_rsc_cse_63_1_sva(13))), (R_29_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(21))),
      (R_29_5_sva XOR (key_io_read_key_rsc_cse_63_1_sva(37))), loop_DES_rounds_7_xor_85,
      (R_26_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(4))), (R_28_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(20))),
      (R_26_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(36))), (R_28_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(52))),
      STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4))
      & (fsm_output(5)) & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9))
      & (fsm_output(10)) & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13))
      & (fsm_output(14))))) & (MUX1HOT_s_1_14_2(((input_rsci_idat(31)) XOR (key_rsci_idat(15))),
      ((key_io_read_key_rsc_cse_63_1_sva(38)) XOR (reg_input_ftd(30)) XOR (s_output_1_3_0_39_sva(3))),
      (R_28_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(54))), (R_28_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(5))),
      (R_28_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(21))), (R_28_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(37))),
      (R_28_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(53))), (R_28_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(61))),
      (R_28_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(12))), loop_DES_rounds_9_xor_83,
      (R_28_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(44))), (R_27_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(60))),
      loop_DES_rounds_2_xor_89, (R_27_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(27))),
      STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4))
      & (fsm_output(5)) & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9))
      & (fsm_output(10)) & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13))
      & (fsm_output(14))))));
  O_1_out_3 <= U_ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_rg_O_1;

  U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_10_rg : ROM_1i6_1o4_752c7ca65a598ada4acee0cd63d199c3b3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_10_rg_I_1,
      O_1 => U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_10_rg_O_1
    );
  U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_10_rg_I_1 <= STD_LOGIC_VECTOR'(
      (MUX1HOT_s_1_14_2(((reg_input_ftd(58)) XOR (s_output_1_19_16_50_sva(3)) XOR
      (key_io_read_key_rsc_cse_63_1_sva(26))), loop_DES_rounds_4_xor_85, (R_8_4_sva
      XOR (key_io_read_key_rsc_cse_63_1_sva(58))), (R_7_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(43))),
      (R_8_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(59))), (R_7_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(8))),
      (R_8_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(16))), (R_7_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(32))),
      loop_DES_rounds_9_xor_87, loop_DES_rounds_10_xor_87, (R_7_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(17))),
      (R_7_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(33))), (R_7_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(49))),
      (R_7_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(57))), STD_LOGIC_VECTOR'(
      (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5)) & (fsm_output(6))
      & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10)) &
      (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14)) &
      (fsm_output(15))))) & (MUX1HOT_s_1_14_2(((key_io_read_key_rsc_cse_63_1_sva(0))
      XOR (reg_input_ftd(32)) XOR (s_output_1_3_0_39_sva(2))), loop_DES_rounds_4_xor_95,
      (R_3_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(32))), (R_3_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(48))),
      (R_3_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(1))), (R_3_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(17))),
      (R_3_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(25))), (R_3_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(41))),
      loop_DES_rounds_2_xor_91, (R_3_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(10))),
      (R_3_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(26))), (R_3_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(42))),
      loop_DES_rounds_9_xor_91, (R_3_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(35))),
      STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))) & (MUX1HOT_s_1_14_2(((key_io_read_key_rsc_cse_63_1_sva(35))
      XOR (reg_input_ftd(0)) XOR (s_output_1_3_0_24_sva(1))), (R_7_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(51))),
      (R_7_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(0))), (R_7_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(16))),
      (R_7_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(32))), loop_DES_rounds_2_xor_85,
      (R_7_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(56))), (R_7_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(9))),
      (R_7_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(25))), (R_7_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(41))),
      (R_7_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(57))), (R_7_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(10))),
      (R_7_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(26))), (R_7_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(34))),
      STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))) & (MUX1HOT_s_1_14_2(((reg_input_ftd(8)) XOR (s_output_1_19_16_5_sva(3))
      XOR (key_io_read_key_rsc_cse_63_1_sva(49))), loop_DES_rounds_4_xor_89, (R_1_14_sva
      XOR (key_io_read_key_rsc_cse_63_1_sva(18))), (R_6_5_sva XOR (key_io_read_key_rsc_cse_63_1_sva(34))),
      (R_1_14_sva XOR (key_io_read_key_rsc_cse_63_1_sva(50))), (R_6_5_sva XOR (key_io_read_key_rsc_cse_63_1_sva(35))),
      (R_1_14_sva XOR (key_io_read_key_rsc_cse_63_1_sva(43))), (R_6_5_sva XOR (key_io_read_key_rsc_cse_63_1_sva(59))),
      (R_30_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(8))), (R_29_5_sva XOR (key_io_read_key_rsc_cse_63_1_sva(24))),
      (R_30_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(40))), (R_29_5_sva XOR (key_io_read_key_rsc_cse_63_1_sva(56))),
      (R_30_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(9))), (R_29_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(17))),
      STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))) & (MUX1HOT_s_1_14_2(((reg_input_ftd(16)) XOR (s_output_1_3_0_9_sva(2))
      XOR (key_io_read_key_rsc_cse_63_1_sva(24))), loop_DES_rounds_4_xor_83, (R_0_1_sva
      XOR (key_io_read_key_rsc_cse_63_1_sva(56))), (R_4_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(9))),
      (R_0_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(25))), (R_4_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(41))),
      (R_0_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(49))), (R_4_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(2))),
      (R_4_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(18))), (R_29_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(34))),
      (R_4_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(50))), (R_29_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(35))),
      (R_4_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(51))), (R_26_5_sva XOR (key_io_read_key_rsc_cse_63_1_sva(59))),
      STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))) & (MUX1HOT_s_1_14_2(((key_io_read_key_rsc_cse_63_1_sva(9))
      XOR (reg_input_ftd(24)) XOR (s_output_1_19_16_35_sva(2))), (R_31_11_sva XOR
      (key_io_read_key_rsc_cse_63_1_sva(25))), (R_4_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(41))),
      (R_31_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(57))), (R_4_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(10))),
      (R_31_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(26))), (R_4_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(34))),
      (R_31_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(50))), (R_31_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(35))),
      (R_4_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(51))), (R_31_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(0))),
      (R_4_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(16))), (R_31_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(32))),
      loop_DES_rounds_4_xor_83, STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3))
      & (fsm_output(4)) & (fsm_output(5)) & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8))
      & (fsm_output(9)) & (fsm_output(10)) & (fsm_output(11)) & (fsm_output(12))
      & (fsm_output(13)) & (fsm_output(14)) & (fsm_output(15))))));
  O_1_out_4 <= U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_10_rg_O_1;

  U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_10_rg : ROM_1i6_1o4_ef717c7c87dc90ac6f7b34d533fe115fb3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_10_rg_I_1,
      O_1 => U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_10_rg_O_1
    );
  U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_10_rg_I_1 <= STD_LOGIC_VECTOR'(
      (MUX1HOT_s_1_14_2(((key_io_read_key_rsc_cse_63_1_sva(2)) XOR (reg_input_ftd(60))
      XOR (s_output_1_19_16_50_sva(2))), (R_16_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(18))),
      (R_16_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(34))), (R_16_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(50))),
      (R_16_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(35))), (R_16_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(51))),
      (R_16_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(59))), (R_16_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(8))),
      loop_DES_rounds_5_xor_81, (R_15_9_sva XOR (key_io_read_key_rsc_cse_63_1_sva(40))),
      loop_DES_rounds_7_xor_87, (R_15_9_sva XOR (key_io_read_key_rsc_cse_63_1_sva(9))),
      (R_15_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(25))), loop_DES_rounds_10_xor_83,
      STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))) & (MUX1HOT_s_1_14_2(((key_io_read_key_rsc_cse_63_1_sva(16))
      XOR (reg_input_ftd(34)) XOR (s_output_1_3_0_9_sva(0))), (R_11_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(32))),
      (R_11_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(48))), loop_DES_rounds_6_xor_83,
      (R_11_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(17))), (R_11_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(33))),
      loop_DES_rounds_9_xor_85, (R_11_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(57))),
      (R_11_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(10))), (R_11_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(26))),
      (R_11_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(42))), (R_11_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(58))),
      (R_11_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(43))), (R_11_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(51))),
      STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))) & (MUX1HOT_s_1_14_2(((key_io_read_key_rsc_cse_63_1_sva(59))
      XOR (reg_input_ftd(2)) XOR (s_output_1_19_16_20_sva(2))), (R_15_10_sva XOR
      (key_io_read_key_rsc_cse_63_1_sva(8))), loop_DES_rounds_5_xor_81, (R_15_10_sva
      XOR (key_io_read_key_rsc_cse_63_1_sva(40))), loop_DES_rounds_7_xor_87, (R_15_10_sva
      XOR (key_io_read_key_rsc_cse_63_1_sva(9))), (R_15_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(17))),
      loop_DES_rounds_10_xor_83, loop_DES_rounds_2_xor_87, (R_15_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(2))),
      (R_15_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(18))), (R_15_11_sva XOR
      (key_io_read_key_rsc_cse_63_1_sva(34))), (R_15_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(50))),
      (R_15_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(58))), STD_LOGIC_VECTOR'(
      (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5)) & (fsm_output(6))
      & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10)) &
      (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14)) &
      (fsm_output(15))))) & (MUX1HOT_s_1_14_2(((reg_input_ftd(10)) XOR (s_output_1_19_16_35_sva(0))
      XOR (key_io_read_key_rsc_cse_63_1_sva(48))), (R_14_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(1))),
      (R_31_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(17))), (R_7_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(33))),
      (R_1_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(49))), (R_10_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(2))),
      (R_1_6_sva XOR (key_io_read_key_rsc_cse_63_1_sva(10))), (R_12_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(26))),
      (R_1_14_sva XOR (key_io_read_key_rsc_cse_63_1_sva(42))), (R_31_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(58))),
      (R_1_7_sva XOR (key_io_read_key_rsc_cse_63_1_sva(43))), (R_1_9_sva XOR (key_io_read_key_rsc_cse_63_1_sva(59))),
      (R_10_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(8))), loop_DES_rounds_2_xor_93,
      STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))) & (MUX1HOT_s_1_14_2(((reg_input_ftd(18)) XOR (s_output_1_3_0_39_sva(0))
      XOR (key_io_read_key_rsc_cse_63_1_sva(33))), (R_12_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(49))),
      (R_20_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(2))), loop_DES_rounds_6_xor_93,
      (R_27_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(34))), loop_DES_rounds_8_xor_89,
      loop_DES_rounds_9_xor_91, loop_DES_rounds_10_xor_85, (R_12_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(59))),
      (R_24_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(8))), (R_12_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(24))),
      (R_3_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(40))), (R_12_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(56))),
      loop_DES_rounds_6_xor_83, STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3))
      & (fsm_output(4)) & (fsm_output(5)) & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8))
      & (fsm_output(9)) & (fsm_output(10)) & (fsm_output(11)) & (fsm_output(12))
      & (fsm_output(13)) & (fsm_output(14)) & (fsm_output(15))))) & (MUX1HOT_s_1_14_2(((key_io_read_key_rsc_cse_63_1_sva(50))
      XOR (reg_input_ftd(26)) XOR (s_output_1_19_16_5_sva(2))), (R_11_11_sva XOR
      (key_io_read_key_rsc_cse_63_1_sva(35))), (R_12_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(51))),
      (R_11_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(0))), (R_12_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(16))),
      loop_DES_rounds_8_xor_85, (R_12_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(40))),
      loop_DES_rounds_4_xor_91, (R_11_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(9))),
      (R_12_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(25))), loop_DES_rounds_9_xor_85,
      (R_12_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(57))), (R_11_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(10))),
      loop_DES_rounds_6_xor_93, STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3))
      & (fsm_output(4)) & (fsm_output(5)) & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8))
      & (fsm_output(9)) & (fsm_output(10)) & (fsm_output(11)) & (fsm_output(12))
      & (fsm_output(13)) & (fsm_output(14)) & (fsm_output(15))))));
  O_1_out_5 <= U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_10_rg_O_1;

  U_ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_10_rg : ROM_1i6_1o4_3c5c29b75c561d2b741f22e5a3a569dbb3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_10_rg_I_1,
      O_1 => U_ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_10_rg_O_1
    );
  U_ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_10_rg_I_1 <= STD_LOGIC_VECTOR'(
      (MUX1HOT_s_1_14_2(((key_io_read_key_rsc_cse_63_1_sva(19)) XOR (reg_input_ftd(62))
      XOR (s_output_1_3_0_24_sva(3))), (R_24_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(6))),
      (R_24_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(22))), (R_24_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(38))),
      (R_24_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(54))), (R_24_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(5))),
      (R_24_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(13))), (R_24_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(29))),
      (R_23_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(45))), loop_DES_rounds_6_xor_91,
      loop_DES_rounds_5_xor_85, loop_DES_rounds_8_xor_83, loop_DES_rounds_2_xor_81,
      loop_DES_rounds_10_xor_89, STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3))
      & (fsm_output(4)) & (fsm_output(5)) & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8))
      & (fsm_output(9)) & (fsm_output(10)) & (fsm_output(11)) & (fsm_output(12))
      & (fsm_output(13)) & (fsm_output(14)) & (fsm_output(15))))) & (MUX1HOT_s_1_14_2(((key_io_read_key_rsc_cse_63_1_sva(29))
      XOR (reg_input_ftd(36)) XOR (s_output_1_19_16_35_sva(3))), (R_19_11_sva XOR
      (key_io_read_key_rsc_cse_63_1_sva(45))), (R_19_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(61))),
      (R_19_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(12))), (R_19_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(28))),
      (R_19_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(44))), (R_19_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(52))),
      (R_19_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(3))), (R_1_6_sva XOR (key_io_read_key_rsc_cse_63_1_sva(19))),
      (R_19_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(6))), (R_1_6_sva XOR (key_io_read_key_rsc_cse_63_1_sva(22))),
      (R_19_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(38))), (R_1_6_sva XOR (key_io_read_key_rsc_cse_63_1_sva(54))),
      (R_19_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(62))), STD_LOGIC_VECTOR'(
      (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5)) & (fsm_output(6))
      & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10)) &
      (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14)) &
      (fsm_output(15))))) & (MUX1HOT_s_1_14_2(((key_io_read_key_rsc_cse_63_1_sva(52))
      XOR (reg_input_ftd(4)) XOR (s_output_1_19_16_20_sva(3))), loop_DES_rounds_2_xor_83,
      (R_23_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(19))), (R_23_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(6))),
      (R_23_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(22))), (R_23_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(38))),
      (R_23_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(46))), (R_23_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(62))),
      (R_1_8_sva XOR (key_io_read_key_rsc_cse_63_1_sva(13))), (R_23_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(29))),
      (R_1_8_sva XOR (key_io_read_key_rsc_cse_63_1_sva(45))), loop_DES_rounds_4_xor_97,
      (R_1_8_sva XOR (key_io_read_key_rsc_cse_63_1_sva(12))), (R_23_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(20))),
      STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))) & (MUX1HOT_s_1_14_2(((reg_input_ftd(12)) XOR (s_output_1_19_16_5_sva(1))
      XOR (key_io_read_key_rsc_cse_63_1_sva(61))), loop_DES_rounds_4_xor_93, (R_11_1_sva
      XOR (key_io_read_key_rsc_cse_63_1_sva(28))), (R_21_7_sva XOR (key_io_read_key_rsc_cse_63_1_sva(44))),
      (R_15_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(60))), (R_22_7_sva XOR (key_io_read_key_rsc_cse_63_1_sva(11))),
      loop_DES_rounds_9_xor_93, (R_22_7_sva XOR (key_io_read_key_rsc_cse_63_1_sva(6))),
      (R_10_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(22))), (R_21_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(38))),
      (R_21_7_sva XOR (key_io_read_key_rsc_cse_63_1_sva(54))), (R_21_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(5))),
      (R_21_7_sva XOR (key_io_read_key_rsc_cse_63_1_sva(21))), (R_21_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(29))),
      STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))) & (MUX1HOT_s_1_14_2(((reg_input_ftd(20)) XOR (s_output_1_3_0_39_sva(1))
      XOR (key_io_read_key_rsc_cse_63_1_sva(62))), (R_21_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(13))),
      (R_1_9_sva XOR (key_io_read_key_rsc_cse_63_1_sva(29))), (R_10_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(45))),
      (R_21_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(61))), loop_DES_rounds_4_xor_93,
      (R_21_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(20))), (R_21_7_sva XOR (key_io_read_key_rsc_cse_63_1_sva(36))),
      (R_20_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(52))), (R_2_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(3))),
      (R_20_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(19))), (R_2_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(6))),
      loop_DES_rounds_9_xor_81, (R_2_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(30))),
      STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))) & (MUX1HOT_s_1_14_2(((key_io_read_key_rsc_cse_63_1_sva(14))
      XOR (reg_input_ftd(28)) XOR (s_output_1_3_0_54_sva(2))), (R_20_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(30))),
      (R_20_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(46))), (R_20_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(62))),
      (R_20_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(13))), (R_20_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(29))),
      (R_20_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(37))), (R_20_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(53))),
      (R_20_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(4))), (R_20_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(20))),
      (R_20_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(36))), (R_20_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(52))),
      (R_20_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(3))), loop_DES_rounds_6_xor_87,
      STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))));
  O_1_out_6 <= U_ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_10_rg_O_1;

  U_ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_1_rg : ROM_1i6_1o4_51ba7157b272cd3b87451219caf38e7cb3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_1_rg_I_1,
      O_1 => U_ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_1_rg_O_1
    );
  U_ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_1_rg_I_1 <= STD_LOGIC_VECTOR'(
      (MUX1HOT_s_1_15_2(((reg_input_ftd(25)) XOR (s_output_1_19_16_20_sva(2)) XOR
      (key_io_read_key_rsc_cse_63_1_sva(24))), ((reg_input_ftd(26)) XOR (s_output_1_19_16_5_sva(2))
      XOR (key_io_read_key_rsc_cse_63_1_sva(40))), loop_DES_rounds_4_xor_91, (R_12_4_sva
      XOR (key_io_read_key_rsc_cse_63_1_sva(9))), loop_DES_rounds_6_xor_81, (R_12_4_sva
      XOR (key_io_read_key_rsc_cse_63_1_sva(41))), (R_11_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(57))),
      (R_12_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(2))), (R_11_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(18))),
      (R_11_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(34))), loop_DES_rounds_8_xor_89,
      (R_11_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(35))), (R_12_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(51))),
      (R_11_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(0))), (R_12_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(8))),
      STD_LOGIC_VECTOR'( (fsm_output(1)) & (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4))
      & (fsm_output(5)) & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9))
      & (fsm_output(10)) & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13))
      & (fsm_output(14)) & (fsm_output(15))))) & (MUX1HOT_s_1_15_2((R_7_1_sva XOR
      (key_io_read_key_rsc_cse_63_1_sva(42))), ((key_io_read_key_rsc_cse_63_1_sva(58))
      XOR (reg_input_ftd(0)) XOR (s_output_1_3_0_24_sva(1))), loop_DES_rounds_4_xor_87,
      loop_DES_rounds_5_xor_89, loop_DES_rounds_6_xor_85, loop_DES_rounds_7_xor_81,
      (R_7_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(40))), loop_DES_rounds_9_xor_87,
      loop_DES_rounds_10_xor_87, (R_7_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(17))),
      (R_7_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(33))), (R_7_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(49))),
      (R_7_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(2))), (R_7_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(18))),
      (R_7_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(26))), STD_LOGIC_VECTOR'(
      (fsm_output(1)) & (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))) & (MUX1HOT_s_1_15_2((R_11_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(41))),
      ((key_io_read_key_rsc_cse_63_1_sva(57)) XOR (reg_input_ftd(34)) XOR (s_output_1_3_0_9_sva(0))),
      (R_11_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(10))), (R_11_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(26))),
      (R_11_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(42))), (R_11_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(58))),
      (R_11_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(43))), (R_11_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(51))),
      (R_11_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(0))), (R_11_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(16))),
      loop_DES_rounds_8_xor_85, (R_11_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(48))),
      (R_11_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(1))), (R_11_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(17))),
      loop_DES_rounds_6_xor_81, STD_LOGIC_VECTOR'( (fsm_output(1)) & (fsm_output(2))
      & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5)) & (fsm_output(6)) & (fsm_output(7))
      & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10)) & (fsm_output(11)) &
      (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14)) & (fsm_output(15)))))
      & (MUX1HOT_s_1_15_2((R_10_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(35))),
      ((reg_input_ftd(42)) XOR (s_output_1_3_0_54_sva(1)) XOR (key_io_read_key_rsc_cse_63_1_sva(51))),
      (R_10_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(0))), (R_1_6_sva XOR (key_io_read_key_rsc_cse_63_1_sva(16))),
      (R_1_8_sva XOR (key_io_read_key_rsc_cse_63_1_sva(32))), (R_1_9_sva XOR (key_io_read_key_rsc_cse_63_1_sva(48))),
      (R_0_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(1))), (R_10_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(9))),
      (R_1_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(25))), (R_10_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(41))),
      loop_DES_rounds_5_xor_87, (R_1_14_sva XOR (key_io_read_key_rsc_cse_63_1_sva(10))),
      (R_1_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(26))), loop_DES_rounds_8_xor_87,
      (R_0_9_sva XOR (key_io_read_key_rsc_cse_63_1_sva(50))), STD_LOGIC_VECTOR'(
      (fsm_output(1)) & (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))) & (MUX1HOT_s_1_15_2(loop_DES_rounds_2_xor_95, ((reg_input_ftd(50))
      XOR (s_output_1_19_16_20_sva(1)) XOR (key_io_read_key_rsc_cse_63_1_sva(34))),
      (R_6_5_sva XOR (key_io_read_key_rsc_cse_63_1_sva(50))), (R_9_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(35))),
      (R_14_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(51))), (R_9_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(0))),
      (R_14_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(16))), (R_9_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(24))),
      (R_14_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(40))), (R_8_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(56))),
      (R_0_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(9))), (R_8_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(25))),
      (R_0_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(41))), (R_8_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(57))),
      loop_DES_rounds_4_xor_89, STD_LOGIC_VECTOR'( (fsm_output(1)) & (fsm_output(2))
      & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5)) & (fsm_output(6)) & (fsm_output(7))
      & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10)) & (fsm_output(11)) &
      (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14)) & (fsm_output(15)))))
      & (MUX1HOT_s_1_15_2(loop_DES_rounds_2_xor_85, ((key_io_read_key_rsc_cse_63_1_sva(1))
      XOR (reg_input_ftd(58)) XOR (s_output_1_19_16_50_sva(3))), (R_7_11_sva XOR
      (key_io_read_key_rsc_cse_63_1_sva(17))), (R_8_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(33))),
      (R_7_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(49))), (R_8_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(2))),
      loop_DES_rounds_2_xor_95, (R_8_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(26))),
      loop_DES_rounds_4_xor_85, (R_7_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(58))),
      loop_DES_rounds_4_xor_87, loop_DES_rounds_5_xor_89, loop_DES_rounds_6_xor_85,
      loop_DES_rounds_7_xor_81, (R_7_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(32))),
      STD_LOGIC_VECTOR'( (fsm_output(1)) & (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4))
      & (fsm_output(5)) & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9))
      & (fsm_output(10)) & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13))
      & (fsm_output(14)) & (fsm_output(15))))));
  O_1_out_7 <= U_ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_1_rg_O_1;

  U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_10_rg : ROM_1i6_1o4_ef4da7ff735c86ba85f23e51741d972cb3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_10_rg_I_1,
      O_1 => U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_10_rg_O_1
    );
  U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_10_rg_I_1 <= STD_LOGIC_VECTOR'(
      (MUX1HOT_s_1_14_2(((key_io_read_key_rsc_cse_63_1_sva(42)) XOR (reg_input_ftd(24))
      XOR (s_output_1_19_16_35_sva(2))), (R_31_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(58))),
      (R_4_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(43))), (R_31_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(59))),
      (R_4_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(8))), loop_DES_rounds_8_xor_81,
      (R_4_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(32))), (R_31_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(48))),
      (R_31_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(1))), (R_4_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(17))),
      (R_31_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(33))), (R_4_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(49))),
      (R_31_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(2))), (R_4_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(10))),
      STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))) & (MUX1HOT_s_1_14_2(((reg_input_ftd(6)) XOR (s_output_1_19_16_5_sva(0))
      XOR (key_io_read_key_rsc_cse_63_1_sva(56))), (R_31_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(9))),
      (R_31_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(25))), (R_31_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(41))),
      (R_31_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(57))), (R_31_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(10))),
      (R_31_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(18))), (R_31_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(34))),
      (R_31_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(50))), (R_31_11_sva XOR
      (key_io_read_key_rsc_cse_63_1_sva(35))), (R_31_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(51))),
      (R_31_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(0))), (R_31_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(16))),
      loop_DES_rounds_8_xor_81, STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3))
      & (fsm_output(4)) & (fsm_output(5)) & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8))
      & (fsm_output(9)) & (fsm_output(10)) & (fsm_output(11)) & (fsm_output(12))
      & (fsm_output(13)) & (fsm_output(14)) & (fsm_output(15))))) & (MUX1HOT_s_1_14_2(((key_io_read_key_rsc_cse_63_1_sva(10))
      XOR (reg_input_ftd(32)) XOR (s_output_1_3_0_39_sva(2))), (R_3_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(26))),
      (R_3_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(42))), (R_3_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(58))),
      (R_3_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(43))), (R_3_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(59))),
      (R_3_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(0))), loop_DES_rounds_4_xor_95,
      (R_3_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(32))), (R_3_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(48))),
      (R_3_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(1))), (R_3_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(17))),
      (R_3_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(33))), (R_3_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(41))),
      STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))) & (MUX1HOT_s_1_14_2(((reg_input_ftd(40)) XOR (s_output_1_19_16_50_sva(1))
      XOR (key_io_read_key_rsc_cse_63_1_sva(43))), (R_2_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(59))),
      (R_1_7_sva XOR (key_io_read_key_rsc_cse_63_1_sva(8))), (R_10_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(24))),
      (R_20_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(40))), (R_11_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(56))),
      (R_31_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(1))), (R_2_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(17))),
      (R_19_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(33))), (R_1_9_sva XOR (key_io_read_key_rsc_cse_63_1_sva(49))),
      (R_19_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(2))), (R_10_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(18))),
      (R_19_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(34))), (R_18_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(42))),
      STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))) & (MUX1HOT_s_1_14_2(((reg_input_ftd(48)) XOR (key_io_read_key_rsc_cse_63_1_sva(25))
      XOR (s_output_1_19_16_20_sva(0))), (R_0_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(41))),
      loop_DES_rounds_5_xor_87, (R_0_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(10))),
      (R_1_6_sva XOR (key_io_read_key_rsc_cse_63_1_sva(26))), loop_DES_rounds_8_xor_87,
      (R_1_8_sva XOR (key_io_read_key_rsc_cse_63_1_sva(50))), (R_1_9_sva XOR (key_io_read_key_rsc_cse_63_1_sva(35))),
      (R_0_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(51))), (R_0_9_sva XOR (key_io_read_key_rsc_cse_63_1_sva(0))),
      (R_0_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(16))), (R_0_9_sva XOR (key_io_read_key_rsc_cse_63_1_sva(32))),
      (R_1_14_sva XOR (key_io_read_key_rsc_cse_63_1_sva(48))), (R_0_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(56))),
      STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))) & (MUX1HOT_s_1_14_2(((reg_input_ftd(56)) XOR (s_output_1_3_0_54_sva(3))
      XOR (key_io_read_key_rsc_cse_63_1_sva(32))), (R_0_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(48))),
      (R_0_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(1))), (R_0_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(17))),
      (R_0_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(33))), (R_0_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(49))),
      (R_0_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(57))), (R_0_9_sva XOR (key_io_read_key_rsc_cse_63_1_sva(10))),
      (R_0_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(26))), (R_0_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(42))),
      (R_0_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(58))), loop_DES_rounds_10_xor_85,
      (R_0_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(59))), (R_0_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(0))),
      STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & (fsm_output(4)) & (fsm_output(5))
      & (fsm_output(6)) & (fsm_output(7)) & (fsm_output(8)) & (fsm_output(9)) & (fsm_output(10))
      & (fsm_output(11)) & (fsm_output(12)) & (fsm_output(13)) & (fsm_output(14))
      & (fsm_output(15))))));
  O_1_out_8 <= U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_10_rg_O_1;

  des_check_core_core_fsm_inst : des_check_core_core_fsm
    PORT MAP(
      clk => clk,
      rst => rst,
      fsm_output => des_check_core_core_fsm_inst_fsm_output
    );
  fsm_output <= des_check_core_core_fsm_inst_fsm_output;

  loop_DES_rounds_16_xor_17_cse <= R_7_1_sva XOR (O_1_out_5(1));
  loop_DES_rounds_16_xor_32_cse <= R_31_10_sva XOR (O_1_out_1(0));
  loop_DES_rounds_16_xor_19_cse <= R_30_4_sva XOR (O_1_out_1(3));
  loop_DES_rounds_16_xor_14_cse <= R_21_7_sva XOR (O_1_out_1(1));
  loop_DES_rounds_16_xor_30_cse <= R_3_4_sva XOR (O_1_out(1));
  loop_DES_rounds_16_xor_21_cse <= R_4_4_sva XOR (O_1_out_8(2));
  loop_DES_rounds_16_xor_5_cse <= R_12_4_sva XOR (O_1_out_7(0));
  loop_DES_rounds_16_xor_12_cse <= R_20_4_sva XOR (O_1_out_7(1));
  loop_DES_rounds_16_xor_28_cse <= R_28_4_sva XOR (O_1_out_5(0));
  loop_DES_rounds_16_xor_23_cse <= R_31_4_sva XOR (O_1_out(2));
  loop_DES_rounds_16_xor_7_cse <= R_11_4_sva XOR (O_1_out_1(2));
  loop_DES_rounds_16_xor_10_cse <= R_20_1_sva XOR (O_1_out_4(2));
  loop_DES_rounds_16_xor_26_cse <= R_27_4_sva XOR (O_1_out_7(3));
  loop_DES_rounds_16_xor_25_cse <= R_3_1_sva XOR (O_1_out_7(2));
  loop_DES_rounds_16_xor_9_cse <= R_11_1_sva XOR (O_1_out_8(0));
  loop_DES_rounds_16_xor_8_cse <= R_1_6_sva XOR (O_1_out(3));
  loop_DES_rounds_16_xor_24_cse <= R_27_10_sva XOR (O_1_out_8(3));
  loop_DES_rounds_16_xor_27_cse <= R_19_4_sva XOR (O_1_out_6(1));
  loop_DES_rounds_16_xor_22_cse <= R_25_6_sva XOR (O_1_out_6(0));
  loop_DES_rounds_16_xor_4_cse <= R_16_4_sva XOR (O_1_out_8(1));
  loop_DES_rounds_16_xor_20_cse <= R_24_4_sva XOR (O_1_out_4(0));
  loop_DES_rounds_16_xor_31_cse <= R_0_10_sva XOR (O_1_out_4(3));
  loop_DES_rounds_16_xor_15_cse <= R_7_4_sva XOR (O_1_out_6(3));
  loop_DES_rounds_16_xor_2_cse <= R_15_4_sva XOR (O_1_out_6(2));
  loop_DES_rounds_16_xor_18_cse <= R_23_4_sva XOR (O_1_out_5(3));
  R_or_cse <= (fsm_output(5)) OR (fsm_output(7));
  loop_DES_rounds_11_xor_13_cse <= R_14_3_sva XOR (O_1_out_3(1));
  loop_DES_rounds_6_xor_21_cse <= R_0_1_sva XOR (O_1_out_8(2));
  loop_DES_rounds_13_xor_13_cse <= R_0_1_sva XOR (O_1_out_3(1));
  R_or_1_cse <= (fsm_output(0)) OR (fsm_output(2)) OR (fsm_output(4)) OR (fsm_output(7))
      OR (fsm_output(9)) OR (fsm_output(11)) OR (fsm_output(13));
  R_or_133_cse <= (fsm_output(11)) OR (fsm_output(13));
  loop_DES_rounds_5_xor_6_cse <= R_18_3_sva XOR (O_1_out_5(2));
  loop_DES_rounds_10_xor_25_cse <= R_3_4_sva XOR (O_1_out_7(2));
  R_or_2_cse <= (fsm_output(0)) OR (fsm_output(2)) OR (fsm_output(4)) OR (fsm_output(6))
      OR (fsm_output(9)) OR (fsm_output(11)) OR (fsm_output(13));
  loop_DES_rounds_10_xor_17_cse <= R_7_4_sva XOR (O_1_out_5(1));
  loop_DES_rounds_10_xor_14_cse <= R_15_1_sva XOR (O_1_out_1(1));
  loop_DES_rounds_5_xor_27_cse <= R_2_3_sva XOR (O_1_out_6(1));
  R_or_4_cse <= (fsm_output(0)) OR (fsm_output(2)) OR (fsm_output(3)) OR (fsm_output(5))
      OR (fsm_output(7)) OR (fsm_output(9)) OR (fsm_output(11)) OR (fsm_output(13));
  loop_DES_rounds_8_xor_4_cse <= R_15_9_sva XOR (O_1_out_8(1));
  loop_DES_rounds_10_xor_10_cse <= R_20_4_sva XOR (O_1_out_4(2));
  loop_DES_rounds_10_xor_9_cse <= R_11_4_sva XOR (O_1_out_8(0));
  R_or_127_cse <= (fsm_output(12)) OR (fsm_output(14));
  loop_DES_rounds_11_xor_20_cse <= R_24_11_sva XOR (O_1_out_4(0));
  R_or_120_cse <= (fsm_output(4)) OR (fsm_output(6)) OR (fsm_output(11)) OR (fsm_output(13));
  loop_DES_rounds_3_xor_31_cse <= R_0_1_sva XOR (O_1_out_4(3));
  loop_DES_rounds_10_xor_31_cse <= R_0_4_sva XOR (O_1_out_4(3));
  R_or_8_cse <= (fsm_output(0)) OR (fsm_output(2)) OR (fsm_output(4)) OR (fsm_output(6))
      OR (fsm_output(8)) OR (fsm_output(10)) OR (fsm_output(12)) OR (fsm_output(14));
  R_or_122_cse <= (fsm_output(4)) OR (fsm_output(6)) OR (fsm_output(8));
  loop_DES_rounds_11_xor_9_cse <= R_11_3_sva XOR (O_1_out_8(0));
  loop_DES_rounds_5_xor_7_cse <= R_11_11_sva XOR (O_1_out_1(2));
  loop_DES_rounds_5_xor_1_cse <= R_15_10_sva XOR (O_1_out_3(2));
  loop_DES_rounds_3_xor_1_cse <= R_15_1_sva XOR (O_1_out_3(2));
  loop_DES_rounds_10_xor_1_cse <= R_15_4_sva XOR (O_1_out_3(2));
  loop_DES_rounds_11_xor_2_cse <= R_16_3_sva XOR (O_1_out_6(2));
  R_or_118_cse <= (fsm_output(4)) OR (fsm_output(6)) OR (fsm_output(8)) OR (fsm_output(10))
      OR (fsm_output(12)) OR (fsm_output(14));
  loop_DES_rounds_6_xor_16_cse <= R_23_4_sva XOR (O_1_out_3(3));
  loop_DES_rounds_4_xor_16_cse <= R_1_8_sva XOR (O_1_out_3(3));
  loop_DES_rounds_10_xor_18_cse <= R_24_4_sva XOR (O_1_out_5(3));
  loop_DES_rounds_5_xor_18_cse <= R_24_3_sva XOR (O_1_out_5(3));
  loop_DES_rounds_15_xor_28_cse <= R_26_4_sva XOR (O_1_out_5(0));
  loop_DES_rounds_6_xor_24_cse <= R_27_4_sva XOR (O_1_out_8(3));
  loop_DES_rounds_10_xor_26_cse <= R_28_4_sva XOR (O_1_out_7(3));
  loop_DES_rounds_11_xor_32_cse <= R_31_3_sva XOR (O_1_out_1(0));
  loop_DES_rounds_5_xor_23_cse <= R_31_11_sva XOR (O_1_out(2));
  loop_DES_rounds_6_xor_32_cse <= R_31_4_sva XOR (O_1_out_1(0));
  loop_DES_rounds_10_xor_23_cse <= R_4_4_sva XOR (O_1_out(2));
  loop_DES_rounds_11_xor_17_cse <= R_7_3_sva XOR (O_1_out_5(1));
  loop_DES_rounds_5_xor_15_cse <= R_7_11_sva XOR (O_1_out_6(3));
  loop_DES_rounds_3_xor_15_cse <= R_7_3_sva XOR (O_1_out_6(3));
  loop_DES_rounds_5_xor_11_cse <= R_10_10_sva XOR (O_1_out_4(1));
  loop_DES_rounds_9_xor_5_cse <= R_12_11_sva XOR (O_1_out_7(0));
  loop_DES_rounds_5_xor_29_cse <= R_0_11_sva XOR (O_1_out_3(0));
  R_or_26_cse <= (fsm_output(1)) OR (fsm_output(2)) OR (fsm_output(4)) OR (fsm_output(6))
      OR (fsm_output(8)) OR (fsm_output(10)) OR (fsm_output(12));
  loop_DES_rounds_13_xor_4_cse <= R_16_3_sva XOR (O_1_out_8(1));
  loop_DES_rounds_11_xor_4_cse <= R_15_11_sva XOR (O_1_out_8(1));
  loop_DES_rounds_5_xor_25_cse <= R_3_3_sva XOR (O_1_out_7(2));
  loop_DES_rounds_4_xor_29_cse <= R_0_4_sva XOR (O_1_out_3(0));
  loop_DES_rounds_11_xor_11_cse <= R_1_4_sva XOR (O_1_out_4(1));
  loop_DES_rounds_10_xor_8_cse <= R_19_4_sva XOR (O_1_out(3));
  loop_DES_rounds_5_xor_12_cse <= R_21_3_sva XOR (O_1_out_7(1));
  R_or_32_cse <= (fsm_output(2)) OR (fsm_output(8)) OR (fsm_output(10)) OR (fsm_output(12))
      OR (fsm_output(14));
  loop_DES_rounds_11_xor_12_cse <= R_21_7_sva XOR (O_1_out_7(1));
  loop_DES_rounds_11_xor_14_cse <= R_22_7_sva XOR (O_1_out_1(1));
  R_or_105_cse <= (fsm_output(6)) OR (fsm_output(8));
  loop_DES_rounds_15_xor_29_cse <= R_0_9_sva XOR (O_1_out_3(0));
  R_or_38_cse <= (fsm_output(2)) OR (fsm_output(3)) OR (fsm_output(5)) OR (fsm_output(7))
      OR (fsm_output(9)) OR (fsm_output(11)) OR (fsm_output(13));
  loop_DES_rounds_10_xor_7_cse <= R_12_4_sva XOR (O_1_out_1(2));
  R_or_39_cse <= (fsm_output(2)) OR (fsm_output(4)) OR (fsm_output(6)) OR (fsm_output(8))
      OR (fsm_output(10)) OR (fsm_output(12)) OR (fsm_output(14));
  loop_DES_rounds_10_xor_2_cse <= R_16_4_sva XOR (O_1_out_6(2));
  loop_DES_rounds_10_xor_20_cse <= R_25_6_sva XOR (O_1_out_4(0));
  loop_DES_rounds_10_xor_28_cse <= R_29_4_sva XOR (O_1_out_5(0));
  loop_DES_rounds_5_xor_30_cse <= R_3_11_sva XOR (O_1_out(1));
  loop_DES_rounds_10_xor_30_cse <= R_30_4_sva XOR (O_1_out(1));
  loop_DES_rounds_6_xor_6_cse <= R_27_10_sva XOR (O_1_out_5(2));
  loop_DES_rounds_4_xor_3_cse <= R_1_14_sva XOR (O_1_out(0));
  loop_DES_rounds_5_xor_21_cse <= R_4_11_sva XOR (O_1_out_8(2));
  loop_DES_rounds_10_xor_15_cse <= R_8_4_sva XOR (O_1_out_6(3));
  loop_DES_rounds_12_xor_13_cse <= R_8_4_sva XOR (O_1_out_3(1));
  loop_DES_rounds_10_xor_13_cse <= R_9_4_sva XOR (O_1_out_3(1));
  loop_DES_rounds_6_xor_19_cse <= R_1_14_sva XOR (O_1_out_1(3));
  loop_DES_rounds_10_xor_22_cse <= R_26_4_sva XOR (O_1_out_6(0));
  loop_DES_rounds_15_xor_21_cse <= R_29_4_sva XOR (O_1_out_8(2));
  loop_DES_rounds_13_xor_30_cse <= R_26_5_sva XOR (O_1_out(1));
  loop_DES_rounds_7_xor_22_cse <= R_26_5_sva XOR (O_1_out_6(0));
  loop_DES_rounds_13_xor_19_cse <= R_29_5_sva XOR (O_1_out_1(3));
  loop_DES_rounds_11_xor_19_cse <= R_6_5_sva XOR (O_1_out_1(3));
  loop_DES_rounds_7_xor_28_cse <= R_29_5_sva XOR (O_1_out_5(0));
  R_or_66_cse <= (fsm_output(3)) OR (fsm_output(5)) OR (fsm_output(7)) OR (fsm_output(10))
      OR (fsm_output(12)) OR (fsm_output(14));
  loop_DES_rounds_9_xor_81 <= R_20_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(22));
  loop_DES_rounds_5_xor_81 <= R_15_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(24));
  loop_DES_rounds_7_xor_81 <= R_7_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(24));
  loop_DES_rounds_8_xor_81 <= R_31_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(24));
  loop_DES_rounds_6_xor_81 <= R_11_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(25));
  loop_DES_rounds_9_xor_83 <= R_27_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(28));
  loop_DES_rounds_8_xor_83 <= R_24_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(28));
  loop_DES_rounds_10_xor_81 <= R_26_5_sva XOR (key_io_read_key_rsc_cse_63_1_sva(30));
  loop_DES_rounds_8_xor_85 <= R_11_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(32));
  loop_DES_rounds_10_xor_83 <= R_15_9_sva XOR (key_io_read_key_rsc_cse_63_1_sva(33));
  loop_DES_rounds_4_xor_81 <= R_25_6_sva XOR (key_io_read_key_rsc_cse_63_1_sva(36));
  loop_DES_rounds_7_xor_83 <= R_24_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(38));
  loop_DES_rounds_4_xor_83 <= R_4_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(40));
  loop_DES_rounds_9_xor_85 <= R_11_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(41));
  loop_DES_rounds_4_xor_85 <= R_7_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(42));
  loop_DES_rounds_8_xor_87 <= R_1_7_sva XOR (key_io_read_key_rsc_cse_63_1_sva(42));
  loop_DES_rounds_4_xor_87 <= R_7_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(43));
  loop_DES_rounds_10_xor_85 <= R_0_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(43));
  loop_DES_rounds_2_xor_81 <= R_23_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(44));
  loop_DES_rounds_10_xor_87 <= R_7_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(1));
  loop_DES_rounds_6_xor_83 <= R_11_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(1));
  loop_DES_rounds_4_xor_89 <= R_29_5_sva XOR (key_io_read_key_rsc_cse_63_1_sva(2));
  loop_DES_rounds_2_xor_83 <= R_23_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(3));
  loop_DES_rounds_2_xor_85 <= R_7_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(48));
  loop_DES_rounds_9_xor_87 <= R_7_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(48));
  loop_DES_rounds_2_xor_87 <= R_15_10_sva XOR (key_io_read_key_rsc_cse_63_1_sva(49));
  loop_DES_rounds_8_xor_89 <= R_12_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(50));
  loop_DES_rounds_5_xor_83 <= R_24_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(6));
  loop_DES_rounds_10_xor_89 <= R_24_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(52));
  loop_DES_rounds_6_xor_85 <= R_7_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(8));
  loop_DES_rounds_7_xor_85 <= R_28_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(53));
  loop_DES_rounds_9_xor_89 <= R_20_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(54));
  loop_DES_rounds_2_xor_89 <= R_28_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(11));
  loop_DES_rounds_6_xor_87 <= R_20_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(11));
  loop_DES_rounds_4_xor_91 <= R_11_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(56));
  loop_DES_rounds_7_xor_87 <= R_15_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(56));
  loop_DES_rounds_4_xor_93 <= R_21_7_sva XOR (key_io_read_key_rsc_cse_63_1_sva(12));
  loop_DES_rounds_5_xor_85 <= R_23_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(12));
  loop_DES_rounds_2_xor_91 <= R_3_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(57));
  loop_DES_rounds_5_xor_87 <= R_1_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(57));
  loop_DES_rounds_9_xor_91 <= R_3_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(58));
  loop_DES_rounds_6_xor_89 <= R_15_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(14));
  loop_DES_rounds_5_xor_89 <= R_7_4_sva XOR (key_io_read_key_rsc_cse_63_1_sva(59));
  loop_DES_rounds_14_xor_81 <= R_24_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(60));
  loop_DES_rounds_4_xor_95 <= R_3_3_sva XOR (key_io_read_key_rsc_cse_63_1_sva(16));
  loop_DES_rounds_2_xor_93 <= R_0_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(16));
  loop_DES_rounds_6_xor_91 <= R_24_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(61));
  loop_DES_rounds_4_xor_97 <= R_23_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(61));
  loop_DES_rounds_2_xor_95 <= R_7_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(18));
  loop_DES_rounds_6_xor_93 <= R_12_11_sva XOR (key_io_read_key_rsc_cse_63_1_sva(18));
  loop_DES_rounds_9_xor_93 <= R_15_1_sva XOR (key_io_read_key_rsc_cse_63_1_sva(19));
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        key_io_read_key_rsc_cse_63_1_sva <= STD_LOGIC_VECTOR'( "000000000000000000000000000000000000000000000000000000000000000");
      ELSIF ( (fsm_output(0)) = '1' ) THEN
        key_io_read_key_rsc_cse_63_1_sva <= key_rsci_idat(63 DOWNTO 1);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_0 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_0 <= loop_DES_rounds_16_xor_17_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_1 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_1 <= R_7_11_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_2 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_2 <= R_15_10_sva XOR (O_1_out_2(2));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_3 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_3 <= R_15_11_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_4 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_4 <= R_1_8_sva XOR (O_1_out_2(3));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_5 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_5 <= R_23_11_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_6 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_6 <= loop_DES_rounds_16_xor_32_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_7 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_7 <= R_31_11_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_8 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_8 <= loop_DES_rounds_16_xor_19_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_9 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_9 <= R_29_4_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_10 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_10 <= R_10_1_sva XOR (O_1_out(0));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_11 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_11 <= R_0_1_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_12 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_12 <= loop_DES_rounds_16_xor_14_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_13 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_13 <= R_21_3_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_14 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_14 <= loop_DES_rounds_16_xor_30_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_15 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_15 <= R_26_4_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_16 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_16 <= loop_DES_rounds_16_xor_21_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_17 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_17 <= R_26_5_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_18 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_18 <= loop_DES_rounds_16_xor_5_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_19 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_19 <= R_11_3_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_20 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_20 <= loop_DES_rounds_16_xor_12_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_21 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_21 <= R_2_3_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_22 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_22 <= loop_DES_rounds_16_xor_28_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_23 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_23 <= R_24_3_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_24 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_24 <= loop_DES_rounds_16_xor_23_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_25 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_25 <= R_4_11_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_26 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_26 <= loop_DES_rounds_16_xor_7_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_27 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_27 <= R_12_11_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_28 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_28 <= loop_DES_rounds_16_xor_10_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_29 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_29 <= R_20_11_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_30 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_30 <= loop_DES_rounds_16_xor_26_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_31 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_31 <= R_28_11_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_32 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_32 <= loop_DES_rounds_16_xor_25_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_33 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_33 <= R_3_11_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_34 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_34 <= loop_DES_rounds_16_xor_9_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_35 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_35 <= R_11_11_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_36 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_36 <= loop_DES_rounds_16_xor_8_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_37 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_37 <= R_19_11_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_38 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_38 <= loop_DES_rounds_16_xor_24_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_39 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_39 <= R_27_11_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_40 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_40 <= loop_DES_rounds_16_xor_27_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_41 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_41 <= R_18_3_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_42 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_42 <= R_1_7_sva XOR (O_1_out_4(1));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_43 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_43 <= R_0_9_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_44 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_44 <= R_31_3_sva XOR (O_1_out_5(2));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_45 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_45 <= R_1_4_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_46 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_46 <= loop_DES_rounds_16_xor_22_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_47 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_47 <= R_22_7_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_48 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_48 <= R_1_14_sva XOR (O_1_out_2(0));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_49 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_49 <= R_0_4_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_50 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_50 <= R_8_4_sva XOR (O_1_out_2(1));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_51 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_51 <= R_29_5_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_52 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_52 <= loop_DES_rounds_16_xor_4_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_53 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_53 <= R_14_3_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_54 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_54 <= loop_DES_rounds_16_xor_20_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_55 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_55 <= R_15_1_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_56 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_56 <= loop_DES_rounds_16_xor_31_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_57 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_57 <= R_0_11_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_58 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_58 <= loop_DES_rounds_16_xor_15_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_59 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_59 <= R_7_3_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_60 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_60 <= loop_DES_rounds_16_xor_2_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_61 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_61 <= R_15_9_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_62 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_62 <= loop_DES_rounds_16_xor_18_cse;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_63 <= '0';
      ELSIF ( (fsm_output(15)) = '1' ) THEN
        return_rsci_idat_63 <= R_24_11_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_0_1_sva <= '0';
      ELSIF ( ((fsm_output(0)) OR (fsm_output(2)) OR (fsm_output(3)) OR (fsm_output(5))
          OR (fsm_output(7)) OR (fsm_output(10)) OR (fsm_output(12)) OR (fsm_output(14)))
          = '1' ) THEN
        R_0_1_sva <= MUX1HOT_s_1_7_2(loop_DES_rounds_1_xor_31_nl, loop_DES_rounds_2_xor_31_nl,
            loop_DES_rounds_16_xor_21_cse, loop_DES_rounds_6_xor_21_cse, loop_DES_rounds_11_xor_13_cse,
            loop_DES_rounds_13_xor_13_cse, loop_DES_rounds_15_xor_3_nl, STD_LOGIC_VECTOR'(
            (fsm_output(0)) & (fsm_output(2)) & (fsm_output(3)) & R_or_cse & (fsm_output(10))
            & (fsm_output(12)) & (fsm_output(14))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_3_1_sva <= '0';
        R_10_1_sva <= '0';
        R_1_8_sva <= '0';
      ELSIF ( R_or_1_cse = '1' ) THEN
        R_3_1_sva <= MUX1HOT_s_1_6_2(loop_DES_rounds_1_xor_25_nl, loop_DES_rounds_2_xor_25_nl,
            loop_DES_rounds_5_xor_6_cse, loop_DES_rounds_8_xor_5_nl, loop_DES_rounds_10_xor_25_cse,
            loop_DES_rounds_16_xor_25_cse, STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(2))
            & (fsm_output(4)) & (fsm_output(7)) & (fsm_output(9)) & R_or_133_cse));
        R_10_1_sva <= MUX1HOT_s_1_7_2(loop_DES_rounds_1_xor_11_nl, loop_DES_rounds_2_xor_19_nl,
            loop_DES_rounds_5_xor_27_cse, loop_DES_rounds_8_xor_11_nl, loop_DES_rounds_10_xor_14_cse,
            loop_DES_rounds_12_xor_6_nl, loop_DES_rounds_14_xor_3_nl, STD_LOGIC_VECTOR'(
            (fsm_output(0)) & (fsm_output(2)) & (fsm_output(4)) & (fsm_output(7))
            & (fsm_output(9)) & (fsm_output(11)) & (fsm_output(13))));
        R_1_8_sva <= MUX1HOT_s_1_6_2(loop_DES_rounds_1_xor_22_nl, loop_DES_rounds_2_xor_16_nl,
            loop_DES_rounds_5_xor_11_cse, loop_DES_rounds_8_xor_29_nl, loop_DES_rounds_6_xor_16_cse,
            loop_DES_rounds_4_xor_16_cse, STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(2))
            & (fsm_output(4)) & (fsm_output(7)) & (fsm_output(9)) & R_or_133_cse));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_7_1_sva <= '0';
        R_0_10_sva <= '0';
        R_15_10_sva <= '0';
      ELSIF ( R_or_2_cse = '1' ) THEN
        R_7_1_sva <= MUX1HOT_s_1_6_2(loop_DES_rounds_1_xor_17_nl, loop_DES_rounds_2_xor_17_nl,
            loop_DES_rounds_5_xor_3_nl, loop_DES_rounds_7_xor_6_nl, loop_DES_rounds_10_xor_17_cse,
            loop_DES_rounds_16_xor_17_cse, STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(2))
            & (fsm_output(4)) & (fsm_output(6)) & (fsm_output(9)) & R_or_133_cse));
        R_0_10_sva <= MUX1HOT_s_1_4_2(loop_DES_rounds_1_xor_29_nl, loop_DES_rounds_3_xor_31_cse,
            loop_DES_rounds_16_xor_31_cse, loop_DES_rounds_10_xor_31_cse, STD_LOGIC_VECTOR'(
            (fsm_output(0)) & (fsm_output(2)) & R_or_120_cse & (fsm_output(9))));
        R_15_10_sva <= MUX1HOT_s_1_4_2(loop_DES_rounds_1_xor_2_nl, loop_DES_rounds_3_xor_1_cse,
            loop_DES_rounds_5_xor_1_cse, loop_DES_rounds_10_xor_1_cse, STD_LOGIC_VECTOR'(
            (fsm_output(0)) & (fsm_output(2)) & R_or_120_cse & (fsm_output(9))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_20_1_sva <= '0';
        R_23_4_sva <= '0';
        R_27_4_sva <= '0';
        R_31_4_sva <= '0';
      ELSIF ( R_or_4_cse = '1' ) THEN
        R_20_1_sva <= MUX1HOT_s_1_7_2(loop_DES_rounds_1_xor_10_nl, loop_DES_rounds_2_xor_10_nl,
            loop_DES_rounds_16_xor_5_cse, loop_DES_rounds_6_xor_27_nl, loop_DES_rounds_8_xor_4_cse,
            loop_DES_rounds_10_xor_10_cse, loop_DES_rounds_16_xor_10_cse, STD_LOGIC_VECTOR'(
            (fsm_output(0)) & (fsm_output(2)) & (fsm_output(3)) & (fsm_output(5))
            & (fsm_output(7)) & (fsm_output(9)) & R_or_133_cse));
        R_23_4_sva <= MUX1HOT_s_1_6_2(loop_DES_rounds_1_xor_4_nl, loop_DES_rounds_2_xor_18_nl,
            loop_DES_rounds_4_xor_16_cse, loop_DES_rounds_6_xor_16_cse, loop_DES_rounds_10_xor_18_cse,
            loop_DES_rounds_16_xor_18_cse, STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(2))
            & (fsm_output(3)) & R_or_cse & (fsm_output(9)) & R_or_133_cse));
        R_27_4_sva <= MUX1HOT_s_1_6_2(loop_DES_rounds_1_xor_6_nl, loop_DES_rounds_2_xor_26_nl,
            loop_DES_rounds_16_xor_24_cse, loop_DES_rounds_6_xor_24_cse, loop_DES_rounds_10_xor_26_cse,
            loop_DES_rounds_16_xor_26_cse, STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(2))
            & (fsm_output(3)) & R_or_cse & (fsm_output(9)) & R_or_133_cse));
        R_31_4_sva <= MUX1HOT_s_1_6_2(loop_DES_rounds_1_xor_24_nl, loop_DES_rounds_2_xor_23_nl,
            loop_DES_rounds_16_xor_32_cse, loop_DES_rounds_6_xor_32_cse, loop_DES_rounds_10_xor_23_cse,
            loop_DES_rounds_16_xor_23_cse, STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(2))
            & (fsm_output(3)) & R_or_cse & (fsm_output(9)) & R_or_133_cse));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_11_1_sva <= '0';
      ELSIF ( ((fsm_output(0)) OR (fsm_output(2)) OR (fsm_output(3)) OR (fsm_output(6))
          OR (fsm_output(9)) OR (fsm_output(11)) OR (fsm_output(13))) = '1' ) THEN
        R_11_1_sva <= MUX1HOT_s_1_6_2(loop_DES_rounds_1_xor_9_nl, loop_DES_rounds_2_xor_9_nl,
            loop_DES_rounds_4_xor_14_nl, loop_DES_rounds_7_xor_27_nl, loop_DES_rounds_10_xor_9_cse,
            loop_DES_rounds_16_xor_9_cse, STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(2))
            & (fsm_output(3)) & (fsm_output(6)) & (fsm_output(9)) & R_or_133_cse));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_15_1_sva <= '0';
      ELSIF ( ((fsm_output(0)) OR (fsm_output(2)) OR (fsm_output(5)) OR (fsm_output(7))
          OR (fsm_output(10)) OR (fsm_output(12)) OR (fsm_output(14))) = '1' ) THEN
        R_15_1_sva <= MUX1HOT_s_1_6_2(loop_DES_rounds_1_xor_1_nl, loop_DES_rounds_2_xor_1_nl,
            loop_DES_rounds_6_xor_14_nl, loop_DES_rounds_10_xor_14_cse, loop_DES_rounds_11_xor_20_cse,
            loop_DES_rounds_13_xor_20_nl, STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(2))
            & (fsm_output(5)) & (fsm_output(7)) & (fsm_output(10)) & R_or_127_cse));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        s_output_1_19_16_35_sva <= STD_LOGIC_VECTOR'( "0000");
      ELSIF ( (fsm_output(0)) = '1' ) THEN
        s_output_1_19_16_35_sva <= ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_16;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsc_triosy_obj_ld <= '0';
        reg_key_rsc_triosy_obj_ld_cse <= '0';
        s_output_1_19_16_20_sva <= STD_LOGIC_VECTOR'( "0000");
        s_output_1_19_16_5_sva <= STD_LOGIC_VECTOR'( "0000");
        s_output_1_3_0_54_sva <= STD_LOGIC_VECTOR'( "0000");
        s_output_1_3_0_24_sva <= STD_LOGIC_VECTOR'( "0000");
        s_output_1_19_16_50_sva <= STD_LOGIC_VECTOR'( "0000");
        s_output_1_3_0_39_sva <= STD_LOGIC_VECTOR'( "0000");
        s_output_1_3_0_9_sva <= STD_LOGIC_VECTOR'( "0000");
      ELSE
        return_rsc_triosy_obj_ld <= fsm_output(15);
        reg_key_rsc_triosy_obj_ld_cse <= fsm_output(0);
        s_output_1_19_16_20_sva <= MUX_v_4_2_2(O_1_out_1, O_1_out_2, fsm_output(1));
        s_output_1_19_16_5_sva <= ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_17;
        s_output_1_3_0_54_sva <= ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_16;
        s_output_1_3_0_24_sva <= ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_16;
        s_output_1_19_16_50_sva <= ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_16;
        s_output_1_3_0_39_sva <= O_1_out_7;
        s_output_1_3_0_9_sva <= ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_16;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_11_11_sva <= '0';
        R_19_11_sva <= '0';
        R_20_11_sva <= '0';
        R_23_11_sva <= '0';
        R_24_3_sva <= '0';
        R_27_11_sva <= '0';
        R_28_11_sva <= '0';
        R_31_11_sva <= '0';
        R_7_11_sva <= '0';
        R_7_3_sva <= '0';
      ELSIF ( R_or_8_cse = '1' ) THEN
        R_11_11_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_1_xor_5_nl, loop_DES_rounds_3_xor_7_nl,
            loop_DES_rounds_5_xor_7_cse, loop_DES_rounds_11_xor_9_cse, loop_DES_rounds_13_xor_9_nl,
            STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(2)) & R_or_122_cse &
            (fsm_output(10)) & R_or_127_cse));
        R_19_11_sva <= MUX1HOT_s_1_3_2(loop_DES_rounds_1_xor_27_nl, loop_DES_rounds_3_xor_8_nl,
            loop_DES_rounds_5_xor_8_nl, STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(2))
            & R_or_118_cse));
        R_20_11_sva <= MUX1HOT_s_1_3_2(loop_DES_rounds_1_xor_12_nl, loop_DES_rounds_16_xor_10_cse,
            loop_DES_rounds_5_xor_10_nl, STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(2))
            & R_or_118_cse));
        R_23_11_sva <= MUX1HOT_s_1_3_2(loop_DES_rounds_1_xor_18_nl, loop_DES_rounds_3_xor_16_nl,
            loop_DES_rounds_5_xor_16_nl, STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(2))
            & R_or_118_cse));
        R_24_3_sva <= MUX1HOT_s_1_6_2(loop_DES_rounds_1_xor_20_nl, loop_DES_rounds_3_xor_18_nl,
            loop_DES_rounds_5_xor_18_cse, loop_DES_rounds_11_xor_5_nl, loop_DES_rounds_13_xor_6_nl,
            loop_DES_rounds_15_xor_28_cse, STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(2))
            & R_or_122_cse & (fsm_output(10)) & (fsm_output(12)) & (fsm_output(14))));
        R_27_11_sva <= MUX1HOT_s_1_3_2(loop_DES_rounds_1_xor_26_nl, loop_DES_rounds_3_xor_24_nl,
            loop_DES_rounds_5_xor_24_nl, STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(2))
            & R_or_118_cse));
        R_28_11_sva <= MUX1HOT_s_1_3_2(loop_DES_rounds_1_xor_28_nl, loop_DES_rounds_3_xor_26_nl,
            loop_DES_rounds_5_xor_26_nl, STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(2))
            & R_or_118_cse));
        R_31_11_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_1_xor_21_nl, loop_DES_rounds_3_xor_23_nl,
            loop_DES_rounds_5_xor_23_cse, loop_DES_rounds_11_xor_32_cse, loop_DES_rounds_13_xor_32_nl,
            STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(2)) & R_or_122_cse &
            (fsm_output(10)) & R_or_127_cse));
        R_7_11_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_1_xor_13_nl, loop_DES_rounds_3_xor_15_cse,
            loop_DES_rounds_5_xor_15_cse, loop_DES_rounds_11_xor_17_cse, loop_DES_rounds_13_xor_17_nl,
            STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(2)) & R_or_122_cse &
            (fsm_output(10)) & R_or_127_cse));
        R_7_3_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_1_xor_15_nl, loop_DES_rounds_16_xor_17_cse,
            loop_DES_rounds_11_xor_17_cse, loop_DES_rounds_5_xor_15_cse, loop_DES_rounds_3_xor_15_cse,
            STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(2)) & R_or_122_cse &
            (fsm_output(10)) & R_or_127_cse));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_15_9_sva <= '0';
      ELSIF ( ((fsm_output(3)) OR (fsm_output(14)) OR (fsm_output(0)) OR (fsm_output(5))
          OR (fsm_output(8)) OR (fsm_output(10)) OR (fsm_output(12))) = '1' ) THEN
        R_15_9_sva <= MUX1HOT_s_1_6_2(loop_DES_rounds_1_xor_16_nl, loop_DES_rounds_16_xor_4_cse,
            loop_DES_rounds_8_xor_4_cse, loop_DES_rounds_5_xor_1_cse, loop_DES_rounds_11_xor_2_cse,
            loop_DES_rounds_13_xor_2_nl, STD_LOGIC_VECTOR'( (fsm_output(0)) & (fsm_output(3))
            & (fsm_output(5)) & (fsm_output(8)) & (fsm_output(10)) & R_or_127_cse));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_0_11_sva <= '0';
      ELSIF ( ((fsm_output(1)) OR (fsm_output(2)) OR (fsm_output(4)) OR (fsm_output(6))
          OR (fsm_output(8)) OR (fsm_output(10)) OR (fsm_output(12)) OR (fsm_output(14)))
          = '1' ) THEN
        R_0_11_sva <= MUX1HOT_s_1_7_2(loop_DES_rounds_1_xor_3_nl, loop_DES_rounds_3_xor_29_nl,
            loop_DES_rounds_5_xor_29_cse, loop_DES_rounds_7_xor_11_nl, loop_DES_rounds_9_xor_5_cse,
            loop_DES_rounds_11_xor_31_nl, loop_DES_rounds_13_xor_31_nl, STD_LOGIC_VECTOR'(
            (fsm_output(1)) & (fsm_output(2)) & (fsm_output(4)) & (fsm_output(6))
            & (fsm_output(8)) & (fsm_output(10)) & R_or_127_cse));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_11_3_sva <= '0';
      ELSIF ( ((fsm_output(1)) OR (fsm_output(2)) OR (fsm_output(4)) OR (fsm_output(6))
          OR (fsm_output(8)) OR (fsm_output(14))) = '1' ) THEN
        R_11_3_sva <= MUX1HOT_s_1_4_2(loop_DES_rounds_1_xor_7_nl, loop_DES_rounds_16_xor_9_cse,
            loop_DES_rounds_11_xor_9_cse, loop_DES_rounds_15_xor_5_nl, STD_LOGIC_VECTOR'(
            (fsm_output(1)) & (fsm_output(2)) & R_or_122_cse & (fsm_output(14))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_16_3_sva <= '0';
        R_3_3_sva <= '0';
      ELSIF ( R_or_26_cse = '1' ) THEN
        R_16_3_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_1_xor_8_nl, loop_DES_rounds_3_xor_2_nl,
            loop_DES_rounds_11_xor_2_cse, loop_DES_rounds_11_xor_4_cse, loop_DES_rounds_13_xor_4_cse,
            STD_LOGIC_VECTOR'( (fsm_output(1)) & (fsm_output(2)) & R_or_122_cse &
            (fsm_output(10)) & (fsm_output(12))));
        R_3_3_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_1_xor_30_nl, loop_DES_rounds_16_xor_25_cse,
            loop_DES_rounds_5_xor_25_cse, loop_DES_rounds_5_xor_6_cse, loop_DES_rounds_13_xor_5_nl,
            STD_LOGIC_VECTOR'( (fsm_output(1)) & (fsm_output(2)) & R_or_122_cse &
            (fsm_output(10)) & (fsm_output(12))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_31_3_sva <= '0';
      ELSIF ( ((fsm_output(1)) OR (fsm_output(2)) OR (fsm_output(4)) OR (fsm_output(6))
          OR (fsm_output(8)) OR (fsm_output(10)) OR (fsm_output(13))) = '1' ) THEN
        R_31_3_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_1_xor_23_nl, loop_DES_rounds_3_xor_32_nl,
            loop_DES_rounds_11_xor_32_cse, loop_DES_rounds_11_xor_3_nl, loop_DES_rounds_14_xor_6_nl,
            STD_LOGIC_VECTOR'( (fsm_output(1)) & (fsm_output(2)) & R_or_122_cse &
            (fsm_output(10)) & (fsm_output(13))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_1_4_sva <= '0';
      ELSIF ( ((fsm_output(1)) OR (fsm_output(2)) OR (fsm_output(3)) OR (fsm_output(5))
          OR (fsm_output(8)) OR (fsm_output(10)) OR (fsm_output(12)) OR (fsm_output(14)))
          = '1' ) THEN
        R_1_4_sva <= MUX1HOT_s_1_7_2(loop_DES_rounds_1_xor_19_nl, loop_DES_rounds_2_xor_6_nl,
            loop_DES_rounds_4_xor_29_cse, loop_DES_rounds_6_xor_3_nl, loop_DES_rounds_9_xor_11_nl,
            loop_DES_rounds_11_xor_11_cse, loop_DES_rounds_15_xor_6_nl, STD_LOGIC_VECTOR'(
            (fsm_output(1)) & (fsm_output(2)) & (fsm_output(3)) & (fsm_output(5))
            & (fsm_output(8)) & R_or_125_nl & (fsm_output(14))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_1_6_sva <= '0';
      ELSIF ( ((fsm_output(1)) OR (fsm_output(2)) OR (fsm_output(3)) OR (fsm_output(5))
          OR (fsm_output(7)) OR (fsm_output(9)) OR (fsm_output(11)) OR (fsm_output(13)))
          = '1' ) THEN
        R_1_6_sva <= MUX1HOT_s_1_7_2(loop_DES_rounds_1_xor_14_nl, loop_DES_rounds_2_xor_8_nl,
            loop_DES_rounds_4_xor_11_nl, loop_DES_rounds_6_xor_29_nl, loop_DES_rounds_8_xor_3_nl,
            loop_DES_rounds_10_xor_8_cse, loop_DES_rounds_16_xor_8_cse, STD_LOGIC_VECTOR'(
            (fsm_output(1)) & (fsm_output(2)) & (fsm_output(3)) & (fsm_output(5))
            & (fsm_output(7)) & (fsm_output(9)) & R_or_133_cse));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_10_10_sva <= '0';
      ELSIF ( ((fsm_output(12)) OR (fsm_output(9)) OR (fsm_output(6)) OR (fsm_output(1))
          OR (fsm_output(2)) OR (fsm_output(4))) = '1' ) THEN
        R_10_10_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_1_xor_32_nl, loop_DES_rounds_3_xor_11_nl,
            loop_DES_rounds_5_xor_12_cse, loop_DES_rounds_7_xor_3_nl, loop_DES_rounds_13_xor_27_nl,
            STD_LOGIC_VECTOR'( (fsm_output(1)) & R_or_102_nl & (fsm_output(4)) &
            (fsm_output(6)) & (fsm_output(12))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_2_3_sva <= '0';
        R_0_9_sva <= '0';
      ELSIF ( R_or_32_cse = '1' ) THEN
        R_2_3_sva <= MUX1HOT_s_1_4_2(loop_DES_rounds_3_xor_27_nl, loop_DES_rounds_9_xor_27_nl,
            loop_DES_rounds_11_xor_12_cse, loop_DES_rounds_13_xor_12_nl, STD_LOGIC_VECTOR'(
            (fsm_output(2)) & (fsm_output(8)) & (fsm_output(10)) & R_or_127_cse));
        R_0_9_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_2_xor_11_nl, loop_DES_rounds_16_xor_31_cse,
            loop_DES_rounds_11_xor_29_nl, loop_DES_rounds_15_xor_29_cse, loop_DES_rounds_11_xor_11_cse,
            STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(8)) & (fsm_output(10))
            & (fsm_output(12)) & (fsm_output(14))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_21_3_sva <= '0';
      ELSIF ( ((fsm_output(5)) OR (fsm_output(2)) OR (fsm_output(14)) OR (fsm_output(7))
          OR (fsm_output(10)) OR (fsm_output(12))) = '1' ) THEN
        R_21_3_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_3_xor_12_nl, loop_DES_rounds_6_xor_12_nl,
            loop_DES_rounds_5_xor_12_cse, loop_DES_rounds_11_xor_14_cse, loop_DES_rounds_13_xor_14_nl,
            STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(5)) & (fsm_output(7))
            & (fsm_output(10)) & R_or_127_cse));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_18_3_sva <= '0';
      ELSIF ( ((fsm_output(8)) OR (fsm_output(2)) OR (fsm_output(14))) = '1' ) THEN
        R_18_3_sva <= MUX1HOT_s_1_3_2(loop_DES_rounds_3_xor_6_nl, loop_DES_rounds_9_xor_6_nl,
            loop_DES_rounds_15_xor_27_nl, STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(8))
            & (fsm_output(14))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_14_3_sva <= '0';
      ELSIF ( ((fsm_output(2)) OR (fsm_output(4)) OR (fsm_output(6)) OR (fsm_output(8))
          OR (fsm_output(14))) = '1' ) THEN
        R_14_3_sva <= MUX1HOT_s_1_4_2(loop_DES_rounds_3_xor_3_nl, loop_DES_rounds_5_xor_13_nl,
            loop_DES_rounds_11_xor_13_cse, loop_DES_rounds_13_xor_4_cse, STD_LOGIC_VECTOR'(
            (fsm_output(2)) & (fsm_output(4)) & R_or_105_cse & (fsm_output(14))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_0_4_sva <= '0';
      ELSIF ( ((fsm_output(2)) OR (fsm_output(3)) OR (fsm_output(5)) OR (fsm_output(7))
          OR (fsm_output(9)) OR (fsm_output(11)) OR (fsm_output(14))) = '1' ) THEN
        R_0_4_sva <= MUX1HOT_s_1_6_2(loop_DES_rounds_2_xor_29_nl, loop_DES_rounds_3_xor_31_cse,
            loop_DES_rounds_10_xor_31_cse, loop_DES_rounds_10_xor_29_nl, loop_DES_rounds_4_xor_29_cse,
            loop_DES_rounds_15_xor_29_cse, STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3))
            & R_or_cse & (fsm_output(9)) & (fsm_output(11)) & (fsm_output(14))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_11_4_sva <= '0';
        R_12_4_sva <= '0';
        R_15_4_sva <= '0';
        R_16_4_sva <= '0';
        R_19_4_sva <= '0';
        R_20_4_sva <= '0';
        R_24_4_sva <= '0';
        R_27_10_sva <= '0';
        R_28_4_sva <= '0';
        R_3_4_sva <= '0';
        R_31_10_sva <= '0';
        R_4_4_sva <= '0';
        R_7_4_sva <= '0';
        R_8_4_sva <= '0';
        R_1_14_sva <= '0';
      ELSIF ( R_or_38_cse = '1' ) THEN
        R_11_4_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_2_xor_7_nl, loop_DES_rounds_16_xor_9_cse,
            loop_DES_rounds_10_xor_9_cse, loop_DES_rounds_10_xor_7_cse, loop_DES_rounds_16_xor_7_cse,
            STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & R_or_cse & (fsm_output(9))
            & R_or_133_cse));
        R_12_4_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_2_xor_5_nl, loop_DES_rounds_16_xor_7_cse,
            loop_DES_rounds_10_xor_7_cse, loop_DES_rounds_10_xor_5_nl, loop_DES_rounds_16_xor_5_cse,
            STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & R_or_cse & (fsm_output(9))
            & R_or_133_cse));
        R_15_4_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_2_xor_2_nl, loop_DES_rounds_3_xor_1_cse,
            loop_DES_rounds_10_xor_1_cse, loop_DES_rounds_10_xor_2_cse, loop_DES_rounds_16_xor_2_cse,
            STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & R_or_cse & (fsm_output(9))
            & R_or_133_cse));
        R_16_4_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_2_xor_4_nl, loop_DES_rounds_16_xor_2_cse,
            loop_DES_rounds_10_xor_2_cse, loop_DES_rounds_10_xor_4_nl, loop_DES_rounds_16_xor_4_cse,
            STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & R_or_cse & (fsm_output(9))
            & R_or_133_cse));
        R_19_4_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_2_xor_27_nl, loop_DES_rounds_16_xor_8_cse,
            loop_DES_rounds_10_xor_8_cse, loop_DES_rounds_10_xor_27_nl, loop_DES_rounds_16_xor_27_cse,
            STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & R_or_cse & (fsm_output(9))
            & R_or_133_cse));
        R_20_4_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_2_xor_12_nl, loop_DES_rounds_16_xor_10_cse,
            loop_DES_rounds_10_xor_10_cse, loop_DES_rounds_5_xor_12_cse, loop_DES_rounds_16_xor_12_cse,
            STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & R_or_cse & (fsm_output(9))
            & R_or_133_cse));
        R_24_4_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_2_xor_20_nl, loop_DES_rounds_16_xor_18_cse,
            loop_DES_rounds_10_xor_18_cse, loop_DES_rounds_10_xor_20_cse, loop_DES_rounds_16_xor_20_cse,
            STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & R_or_cse & (fsm_output(9))
            & R_or_133_cse));
        R_27_10_sva <= MUX1HOT_s_1_6_2(loop_DES_rounds_2_xor_24_nl, loop_DES_rounds_4_xor_6_nl,
            loop_DES_rounds_6_xor_5_nl, loop_DES_rounds_8_xor_6_nl, loop_DES_rounds_6_xor_24_cse,
            loop_DES_rounds_16_xor_24_cse, STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3))
            & (fsm_output(5)) & (fsm_output(7)) & (fsm_output(9)) & R_or_133_cse));
        R_28_4_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_2_xor_28_nl, loop_DES_rounds_16_xor_26_cse,
            loop_DES_rounds_10_xor_26_cse, loop_DES_rounds_10_xor_28_cse, loop_DES_rounds_16_xor_28_cse,
            STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & R_or_cse & (fsm_output(9))
            & R_or_133_cse));
        R_3_4_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_2_xor_30_nl, loop_DES_rounds_16_xor_25_cse,
            loop_DES_rounds_10_xor_25_cse, loop_DES_rounds_10_xor_30_cse, loop_DES_rounds_16_xor_30_cse,
            STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & R_or_cse & (fsm_output(9))
            & R_or_133_cse));
        R_31_10_sva <= MUX1HOT_s_1_6_2(loop_DES_rounds_2_xor_32_nl, loop_DES_rounds_4_xor_3_cse,
            loop_DES_rounds_6_xor_6_cse, loop_DES_rounds_8_xor_27_nl, loop_DES_rounds_6_xor_32_cse,
            loop_DES_rounds_16_xor_32_cse, STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3))
            & (fsm_output(5)) & (fsm_output(7)) & (fsm_output(9)) & R_or_133_cse));
        R_4_4_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_2_xor_21_nl, loop_DES_rounds_16_xor_23_cse,
            loop_DES_rounds_10_xor_23_cse, loop_DES_rounds_6_xor_21_cse, loop_DES_rounds_16_xor_21_cse,
            STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & R_or_cse & (fsm_output(9))
            & R_or_133_cse));
        R_7_4_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_2_xor_15_nl, loop_DES_rounds_16_xor_17_cse,
            loop_DES_rounds_10_xor_17_cse, loop_DES_rounds_10_xor_15_cse, loop_DES_rounds_16_xor_15_cse,
            STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & R_or_cse & (fsm_output(9))
            & R_or_133_cse));
        R_8_4_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_2_xor_13_nl, loop_DES_rounds_16_xor_15_cse,
            loop_DES_rounds_10_xor_15_cse, loop_DES_rounds_10_xor_13_cse, loop_DES_rounds_12_xor_13_cse,
            STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3)) & R_or_cse & (fsm_output(9))
            & R_or_133_cse));
        R_1_14_sva <= MUX1HOT_s_1_6_2(loop_DES_rounds_2_xor_3_nl, loop_DES_rounds_4_xor_19_nl,
            loop_DES_rounds_6_xor_19_cse, loop_DES_rounds_10_xor_3_nl, loop_DES_rounds_5_xor_11_cse,
            loop_DES_rounds_4_xor_29_cse, STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3))
            & R_or_cse & (fsm_output(9)) & (fsm_output(11)) & (fsm_output(13))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_12_11_sva <= '0';
        R_15_11_sva <= '0';
        R_24_11_sva <= '0';
        R_3_11_sva <= '0';
        R_4_11_sva <= '0';
        R_26_5_sva <= '0';
        R_29_5_sva <= '0';
      ELSIF ( R_or_39_cse = '1' ) THEN
        R_12_11_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_3_xor_5_nl, loop_DES_rounds_9_xor_5_cse,
            loop_DES_rounds_9_xor_3_nl, loop_DES_rounds_5_xor_7_cse, loop_DES_rounds_13_xor_7_nl,
            STD_LOGIC_VECTOR'( (fsm_output(2)) & R_or_99_nl & (fsm_output(8)) & (fsm_output(10))
            & R_or_127_cse));
        R_15_11_sva <= MUX1HOT_s_1_4_2(loop_DES_rounds_3_xor_4_nl, loop_DES_rounds_11_xor_4_cse,
            loop_DES_rounds_11_xor_1_nl, loop_DES_rounds_13_xor_1_nl, STD_LOGIC_VECTOR'(
            (fsm_output(2)) & R_or_122_cse & (fsm_output(10)) & R_or_127_cse));
        R_24_11_sva <= MUX1HOT_s_1_4_2(loop_DES_rounds_3_xor_20_nl, loop_DES_rounds_11_xor_20_cse,
            loop_DES_rounds_5_xor_18_cse, loop_DES_rounds_13_xor_18_nl, STD_LOGIC_VECTOR'(
            (fsm_output(2)) & R_or_122_cse & (fsm_output(10)) & R_or_127_cse));
        R_3_11_sva <= MUX1HOT_s_1_4_2(loop_DES_rounds_3_xor_30_nl, loop_DES_rounds_5_xor_30_cse,
            loop_DES_rounds_5_xor_25_cse, loop_DES_rounds_13_xor_25_nl, STD_LOGIC_VECTOR'(
            (fsm_output(2)) & R_or_122_cse & (fsm_output(10)) & R_or_127_cse));
        R_4_11_sva <= MUX1HOT_s_1_4_2(loop_DES_rounds_3_xor_21_nl, loop_DES_rounds_5_xor_21_cse,
            loop_DES_rounds_5_xor_23_cse, loop_DES_rounds_13_xor_23_nl, STD_LOGIC_VECTOR'(
            (fsm_output(2)) & R_or_122_cse & (fsm_output(10)) & R_or_127_cse));
        R_26_5_sva <= MUX1HOT_s_1_6_2(loop_DES_rounds_3_xor_28_nl, loop_DES_rounds_16_xor_22_cse,
            loop_DES_rounds_7_xor_22_cse, loop_DES_rounds_5_xor_30_cse, loop_DES_rounds_13_xor_30_cse,
            loop_DES_rounds_15_xor_21_cse, STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(4))
            & R_or_105_cse & (fsm_output(10)) & (fsm_output(12)) & (fsm_output(14))));
        R_29_5_sva <= MUX1HOT_s_1_6_2(loop_DES_rounds_3_xor_19_nl, loop_DES_rounds_5_xor_28_nl,
            loop_DES_rounds_7_xor_28_cse, loop_DES_rounds_11_xor_19_cse, loop_DES_rounds_13_xor_19_cse,
            loop_DES_rounds_13_xor_13_cse, STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(4))
            & R_or_105_cse & (fsm_output(10)) & (fsm_output(12)) & (fsm_output(14))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_1_7_sva <= '0';
      ELSIF ( ((fsm_output(2)) OR (fsm_output(3)) OR (fsm_output(6)) OR (fsm_output(9))
          OR (fsm_output(11)) OR (fsm_output(13))) = '1' ) THEN
        R_1_7_sva <= MUX1HOT_s_1_6_2(loop_DES_rounds_2_xor_14_nl, loop_DES_rounds_16_xor_27_cse,
            loop_DES_rounds_5_xor_29_cse, loop_DES_rounds_6_xor_6_cse, loop_DES_rounds_4_xor_3_cse,
            loop_DES_rounds_14_xor_11_nl, STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3))
            & (fsm_output(6)) & (fsm_output(9)) & (fsm_output(11)) & (fsm_output(13))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_1_9_sva <= '0';
      ELSIF ( ((fsm_output(2)) OR (fsm_output(3)) OR (fsm_output(5)) OR (fsm_output(8))
          OR (fsm_output(10)) OR (fsm_output(12))) = '1' ) THEN
        R_1_9_sva <= MUX1HOT_s_1_6_2(loop_DES_rounds_2_xor_22_nl, loop_DES_rounds_16_xor_12_cse,
            loop_DES_rounds_6_xor_11_nl, loop_DES_rounds_9_xor_29_nl, loop_DES_rounds_5_xor_27_cse,
            loop_DES_rounds_13_xor_3_nl, STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(3))
            & (fsm_output(5)) & (fsm_output(8)) & (fsm_output(10)) & (fsm_output(12))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_21_7_sva <= '0';
      ELSIF ( ((fsm_output(8)) OR (fsm_output(6)) OR (fsm_output(4)) OR (fsm_output(2))
          OR (fsm_output(11)) OR (fsm_output(13))) = '1' ) THEN
        R_21_7_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_3_xor_14_nl, loop_DES_rounds_16_xor_14_cse,
            loop_DES_rounds_7_xor_12_nl, loop_DES_rounds_11_xor_12_cse, loop_DES_rounds_12_xor_14_nl,
            STD_LOGIC_VECTOR'( (fsm_output(2)) & R_or_152_nl & (fsm_output(6)) &
            (fsm_output(8)) & (fsm_output(11))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_25_6_sva <= '0';
      ELSIF ( ((fsm_output(2)) OR (fsm_output(5)) OR (fsm_output(7)) OR (fsm_output(9))
          OR (fsm_output(11)) OR (fsm_output(13))) = '1' ) THEN
        R_25_6_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_3_xor_22_nl, loop_DES_rounds_6_xor_20_nl,
            loop_DES_rounds_10_xor_20_cse, loop_DES_rounds_10_xor_22_cse, loop_DES_rounds_16_xor_22_cse,
            STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(5)) & (fsm_output(7))
            & (fsm_output(9)) & R_or_133_cse));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_6_5_sva <= '0';
      ELSIF ( ((fsm_output(2)) OR (fsm_output(4)) OR (fsm_output(6)) OR (fsm_output(8)))
          = '1' ) THEN
        R_6_5_sva <= MUX1HOT_s_1_3_2(loop_DES_rounds_3_xor_13_nl, loop_DES_rounds_13_xor_19_cse,
            loop_DES_rounds_11_xor_19_cse, STD_LOGIC_VECTOR'( (fsm_output(2)) & (fsm_output(4))
            & R_or_105_cse));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_30_4_sva <= '0';
      ELSIF ( ((fsm_output(3)) OR (fsm_output(5)) OR (fsm_output(7)) OR (fsm_output(9))
          OR (fsm_output(11)) OR (fsm_output(13))) = '1' ) THEN
        R_30_4_sva <= MUX1HOT_s_1_4_2(loop_DES_rounds_16_xor_30_cse, loop_DES_rounds_10_xor_30_cse,
            loop_DES_rounds_6_xor_19_cse, loop_DES_rounds_16_xor_19_cse, STD_LOGIC_VECTOR'(
            (fsm_output(3)) & R_or_cse & (fsm_output(9)) & R_or_133_cse));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_29_4_sva <= '0';
        R_26_4_sva <= '0';
      ELSIF ( R_or_66_cse = '1' ) THEN
        R_29_4_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_16_xor_28_cse, loop_DES_rounds_10_xor_28_cse,
            loop_DES_rounds_5_xor_21_cse, loop_DES_rounds_15_xor_21_cse, loop_DES_rounds_13_xor_19_cse,
            STD_LOGIC_VECTOR'( (fsm_output(3)) & R_or_cse & (fsm_output(10)) & (fsm_output(12))
            & (fsm_output(14))));
        R_26_4_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_4_xor_22_nl, loop_DES_rounds_10_xor_22_cse,
            loop_DES_rounds_7_xor_28_cse, loop_DES_rounds_15_xor_28_cse, loop_DES_rounds_13_xor_30_cse,
            STD_LOGIC_VECTOR'( (fsm_output(3)) & R_or_cse & (fsm_output(10)) & (fsm_output(12))
            & (fsm_output(14))));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_9_4_sva <= '0';
      ELSIF ( ((fsm_output(7)) OR (fsm_output(5)) OR (fsm_output(3))) = '1' ) THEN
        R_9_4_sva <= MUX_s_1_2_2(loop_DES_rounds_12_xor_13_cse, loop_DES_rounds_10_xor_13_cse,
            R_or_cse);
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_22_7_sva <= '0';
      ELSIF ( ((fsm_output(3)) OR (fsm_output(6)) OR (fsm_output(8)) OR (fsm_output(10))
          OR (fsm_output(12)) OR (fsm_output(14))) = '1' ) THEN
        R_22_7_sva <= MUX1HOT_s_1_5_2(loop_DES_rounds_16_xor_20_cse, loop_DES_rounds_16_xor_14_cse,
            loop_DES_rounds_11_xor_14_cse, loop_DES_rounds_7_xor_22_cse, loop_DES_rounds_13_xor_22_nl,
            STD_LOGIC_VECTOR'( (fsm_output(3)) & (fsm_output(6)) & (fsm_output(8))
            & (fsm_output(10)) & R_or_127_cse));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        reg_input_ftd <= STD_LOGIC_VECTOR'( "000000000000000000000000000000000000000000000000000000000000000");
      ELSIF ( (fsm_output(0)) = '1' ) THEN
        reg_input_ftd <= input_rsci_idat(63 DOWNTO 1);
      END IF;
    END IF;
  END PROCESS;
  loop_DES_rounds_1_xor_31_nl <= (input_rsci_idat(56)) XOR (ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_17(3));
  loop_DES_rounds_2_xor_31_nl <= (reg_input_ftd(56)) XOR (s_output_1_3_0_54_sva(3));
  loop_DES_rounds_15_xor_3_nl <= R_1_9_sva XOR (O_1_out(0));
  loop_DES_rounds_1_xor_25_nl <= (input_rsci_idat(32)) XOR (ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_17(2));
  loop_DES_rounds_2_xor_25_nl <= (reg_input_ftd(32)) XOR (s_output_1_3_0_39_sva(2));
  loop_DES_rounds_8_xor_5_nl <= R_27_10_sva XOR (O_1_out_7(0));
  loop_DES_rounds_1_xor_11_nl <= (input_rsci_idat(42)) XOR (ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_17(1));
  loop_DES_rounds_2_xor_19_nl <= (reg_input_ftd(8)) XOR (s_output_1_19_16_5_sva(3));
  loop_DES_rounds_8_xor_11_nl <= R_1_9_sva XOR (O_1_out_4(1));
  loop_DES_rounds_12_xor_6_nl <= R_1_7_sva XOR (O_1_out_5(2));
  loop_DES_rounds_14_xor_3_nl <= R_1_7_sva XOR (O_1_out(0));
  loop_DES_rounds_1_xor_22_nl <= (input_rsci_idat(46)) XOR (ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_17(0));
  loop_DES_rounds_2_xor_16_nl <= (reg_input_ftd(4)) XOR (s_output_1_19_16_20_sva(3));
  loop_DES_rounds_8_xor_29_nl <= R_1_6_sva XOR (O_1_out_3(0));
  loop_DES_rounds_1_xor_17_nl <= (input_rsci_idat(0)) XOR (ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_17(1));
  loop_DES_rounds_2_xor_17_nl <= (reg_input_ftd(0)) XOR (s_output_1_3_0_24_sva(1));
  loop_DES_rounds_5_xor_3_nl <= R_14_3_sva XOR (O_1_out(0));
  loop_DES_rounds_7_xor_6_nl <= R_3_1_sva XOR (O_1_out_5(2));
  loop_DES_rounds_1_xor_29_nl <= (input_rsci_idat(48)) XOR (O_1_out_3(0));
  loop_DES_rounds_1_xor_2_nl <= (input_rsci_idat(60)) XOR (ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_17(2));
  loop_DES_rounds_1_xor_10_nl <= (input_rsci_idat(28)) XOR (ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_17(2));
  loop_DES_rounds_2_xor_10_nl <= (reg_input_ftd(28)) XOR (s_output_1_3_0_54_sva(2));
  loop_DES_rounds_6_xor_27_nl <= R_1_7_sva XOR (O_1_out_6(1));
  loop_DES_rounds_1_xor_4_nl <= (input_rsci_idat(52)) XOR (ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_17(1));
  loop_DES_rounds_2_xor_18_nl <= (reg_input_ftd(62)) XOR (s_output_1_3_0_24_sva(3));
  loop_DES_rounds_1_xor_6_nl <= (input_rsci_idat(44)) XOR (ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_17(2));
  loop_DES_rounds_2_xor_26_nl <= (reg_input_ftd(30)) XOR (s_output_1_3_0_39_sva(3));
  loop_DES_rounds_1_xor_24_nl <= (input_rsci_idat(38)) XOR (ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_17(3));
  loop_DES_rounds_2_xor_23_nl <= (reg_input_ftd(24)) XOR (s_output_1_19_16_35_sva(2));
  loop_DES_rounds_1_xor_9_nl <= (input_rsci_idat(34)) XOR (ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_17(0));
  loop_DES_rounds_2_xor_9_nl <= (reg_input_ftd(34)) XOR (s_output_1_3_0_9_sva(0));
  loop_DES_rounds_4_xor_14_nl <= R_1_7_sva XOR (O_1_out_1(1));
  loop_DES_rounds_7_xor_27_nl <= R_10_1_sva XOR (O_1_out_6(1));
  loop_DES_rounds_1_xor_1_nl <= (input_rsci_idat(2)) XOR (O_1_out_3(2));
  loop_DES_rounds_2_xor_1_nl <= (reg_input_ftd(2)) XOR (s_output_1_19_16_20_sva(2));
  loop_DES_rounds_6_xor_14_nl <= R_11_1_sva XOR (O_1_out_1(1));
  loop_DES_rounds_13_xor_20_nl <= R_15_1_sva XOR (O_1_out_4(0));
  loop_DES_rounds_1_xor_5_nl <= (input_rsci_idat(18)) XOR (ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_17(0));
  loop_DES_rounds_3_xor_7_nl <= R_11_3_sva XOR (O_1_out_1(2));
  loop_DES_rounds_13_xor_9_nl <= R_11_11_sva XOR (O_1_out_8(0));
  loop_DES_rounds_1_xor_27_nl <= (input_rsci_idat(40)) XOR (ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_17(1));
  loop_DES_rounds_3_xor_8_nl <= R_16_3_sva XOR (O_1_out(3));
  loop_DES_rounds_5_xor_8_nl <= R_19_11_sva XOR (O_1_out(3));
  loop_DES_rounds_1_xor_12_nl <= (input_rsci_idat(20)) XOR (ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_17(1));
  loop_DES_rounds_5_xor_10_nl <= R_20_11_sva XOR (O_1_out_4(2));
  loop_DES_rounds_1_xor_18_nl <= (input_rsci_idat(62)) XOR (ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_17(3));
  loop_DES_rounds_3_xor_16_nl <= R_15_9_sva XOR (O_1_out_3(3));
  loop_DES_rounds_5_xor_16_nl <= R_23_11_sva XOR (O_1_out_3(3));
  loop_DES_rounds_1_xor_20_nl <= (input_rsci_idat(54)) XOR (ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_17(0));
  loop_DES_rounds_3_xor_18_nl <= R_23_11_sva XOR (O_1_out_5(3));
  loop_DES_rounds_11_xor_5_nl <= R_0_11_sva XOR (O_1_out_7(0));
  loop_DES_rounds_13_xor_6_nl <= R_3_3_sva XOR (O_1_out_5(2));
  loop_DES_rounds_1_xor_26_nl <= (input_rsci_idat(30)) XOR (ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_17(3));
  loop_DES_rounds_3_xor_24_nl <= R_31_4_sva XOR (O_1_out_8(3));
  loop_DES_rounds_5_xor_24_nl <= R_27_11_sva XOR (O_1_out_8(3));
  loop_DES_rounds_1_xor_28_nl <= (input_rsci_idat(22)) XOR (ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_17(0));
  loop_DES_rounds_3_xor_26_nl <= R_27_11_sva XOR (O_1_out_7(3));
  loop_DES_rounds_5_xor_26_nl <= R_28_11_sva XOR (O_1_out_7(3));
  loop_DES_rounds_1_xor_21_nl <= (input_rsci_idat(16)) XOR (ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_17(2));
  loop_DES_rounds_3_xor_23_nl <= R_31_3_sva XOR (O_1_out(2));
  loop_DES_rounds_13_xor_32_nl <= R_31_11_sva XOR (O_1_out_1(0));
  loop_DES_rounds_1_xor_13_nl <= (input_rsci_idat(50)) XOR (O_1_out_3(1));
  loop_DES_rounds_13_xor_17_nl <= R_7_11_sva XOR (O_1_out_5(1));
  loop_DES_rounds_1_xor_15_nl <= (input_rsci_idat(58)) XOR (ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_17(3));
  loop_DES_rounds_1_xor_16_nl <= (input_rsci_idat(4)) XOR (O_1_out_3(3));
  loop_DES_rounds_13_xor_2_nl <= R_15_9_sva XOR (O_1_out_6(2));
  loop_DES_rounds_1_xor_3_nl <= (reg_input_ftd(9)) XOR (ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_17(0));
  loop_DES_rounds_3_xor_29_nl <= R_0_10_sva XOR (O_1_out_3(0));
  loop_DES_rounds_7_xor_11_nl <= R_1_8_sva XOR (O_1_out_4(1));
  loop_DES_rounds_11_xor_31_nl <= R_0_9_sva XOR (O_1_out_4(3));
  loop_DES_rounds_13_xor_31_nl <= R_0_11_sva XOR (O_1_out_4(3));
  loop_DES_rounds_1_xor_7_nl <= (reg_input_ftd(25)) XOR (s_output_1_19_16_20_sva(2));
  loop_DES_rounds_15_xor_5_nl <= R_3_3_sva XOR (O_1_out_7(0));
  loop_DES_rounds_1_xor_8_nl <= (reg_input_ftd(35)) XOR (ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_17(3));
  loop_DES_rounds_3_xor_2_nl <= R_15_10_sva XOR (O_1_out_6(2));
  loop_DES_rounds_1_xor_30_nl <= (reg_input_ftd(13)) XOR (ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_17(1));
  loop_DES_rounds_13_xor_5_nl <= R_24_3_sva XOR (O_1_out_7(0));
  loop_DES_rounds_1_xor_23_nl <= (reg_input_ftd(23)) XOR (ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_17(2));
  loop_DES_rounds_3_xor_32_nl <= R_10_10_sva XOR (O_1_out_1(0));
  loop_DES_rounds_11_xor_3_nl <= R_12_11_sva XOR (O_1_out(0));
  loop_DES_rounds_14_xor_6_nl <= R_10_1_sva XOR (O_1_out_5(2));
  loop_DES_rounds_1_xor_19_nl <= (reg_input_ftd(7)) XOR (s_output_1_19_16_20_sva(3));
  loop_DES_rounds_2_xor_6_nl <= (reg_input_ftd(44)) XOR (s_output_1_3_0_24_sva(2));
  loop_DES_rounds_6_xor_3_nl <= R_31_10_sva XOR (O_1_out(0));
  loop_DES_rounds_9_xor_11_nl <= R_0_11_sva XOR (O_1_out_4(1));
  loop_DES_rounds_15_xor_6_nl <= R_24_3_sva XOR (O_1_out_5(2));
  R_or_125_nl <= (fsm_output(10)) OR (fsm_output(12));
  loop_DES_rounds_1_xor_14_nl <= (reg_input_ftd(11)) XOR (s_output_1_19_16_20_sva(1));
  loop_DES_rounds_2_xor_8_nl <= (reg_input_ftd(36)) XOR (s_output_1_19_16_35_sva(3));
  loop_DES_rounds_4_xor_11_nl <= R_0_9_sva XOR (O_1_out_4(1));
  loop_DES_rounds_6_xor_29_nl <= R_1_4_sva XOR (O_1_out_3(0));
  loop_DES_rounds_8_xor_3_nl <= R_1_4_sva XOR (O_1_out(0));
  loop_DES_rounds_1_xor_32_nl <= (reg_input_ftd(5)) XOR (s_output_1_19_16_20_sva(0));
  loop_DES_rounds_3_xor_11_nl <= R_10_1_sva XOR (O_1_out_4(1));
  loop_DES_rounds_7_xor_3_nl <= R_7_1_sva XOR (O_1_out(0));
  loop_DES_rounds_13_xor_27_nl <= R_1_9_sva XOR (O_1_out_6(1));
  R_or_102_nl <= (fsm_output(2)) OR (fsm_output(9));
  loop_DES_rounds_3_xor_27_nl <= R_19_11_sva XOR (O_1_out_6(1));
  loop_DES_rounds_9_xor_27_nl <= R_11_1_sva XOR (O_1_out_6(1));
  loop_DES_rounds_13_xor_12_nl <= R_2_3_sva XOR (O_1_out_7(1));
  loop_DES_rounds_2_xor_11_nl <= (reg_input_ftd(42)) XOR (s_output_1_3_0_54_sva(1));
  loop_DES_rounds_11_xor_29_nl <= R_1_9_sva XOR (O_1_out_3(0));
  loop_DES_rounds_3_xor_12_nl <= R_20_11_sva XOR (O_1_out_7(1));
  loop_DES_rounds_6_xor_12_nl <= R_1_9_sva XOR (O_1_out_7(1));
  loop_DES_rounds_13_xor_14_nl <= R_21_3_sva XOR (O_1_out_1(1));
  loop_DES_rounds_3_xor_6_nl <= R_27_4_sva XOR (O_1_out_5(2));
  loop_DES_rounds_9_xor_6_nl <= R_7_1_sva XOR (O_1_out_5(2));
  loop_DES_rounds_15_xor_27_nl <= R_10_10_sva XOR (O_1_out_6(1));
  loop_DES_rounds_3_xor_3_nl <= R_0_11_sva XOR (O_1_out(0));
  loop_DES_rounds_5_xor_13_nl <= R_6_5_sva XOR (O_1_out_3(1));
  loop_DES_rounds_2_xor_29_nl <= (reg_input_ftd(48)) XOR (s_output_1_19_16_20_sva(0));
  loop_DES_rounds_10_xor_29_nl <= R_1_8_sva XOR (O_1_out_3(0));
  loop_DES_rounds_2_xor_7_nl <= (reg_input_ftd(26)) XOR (s_output_1_19_16_5_sva(2));
  loop_DES_rounds_2_xor_5_nl <= (reg_input_ftd(18)) XOR (s_output_1_3_0_39_sva(0));
  loop_DES_rounds_10_xor_5_nl <= R_3_1_sva XOR (O_1_out_7(0));
  loop_DES_rounds_2_xor_2_nl <= (reg_input_ftd(60)) XOR (s_output_1_19_16_50_sva(2));
  loop_DES_rounds_2_xor_4_nl <= (reg_input_ftd(52)) XOR (s_output_1_3_0_9_sva(1));
  loop_DES_rounds_10_xor_4_nl <= R_20_1_sva XOR (O_1_out_8(1));
  loop_DES_rounds_2_xor_27_nl <= (reg_input_ftd(40)) XOR (s_output_1_19_16_50_sva(1));
  loop_DES_rounds_10_xor_27_nl <= R_31_10_sva XOR (O_1_out_6(1));
  loop_DES_rounds_2_xor_12_nl <= (reg_input_ftd(20)) XOR (s_output_1_3_0_39_sva(1));
  loop_DES_rounds_2_xor_20_nl <= (reg_input_ftd(54)) XOR (s_output_1_3_0_54_sva(0));
  loop_DES_rounds_2_xor_24_nl <= (reg_input_ftd(38)) XOR (s_output_1_3_0_9_sva(3));
  loop_DES_rounds_4_xor_6_nl <= R_1_4_sva XOR (O_1_out_5(2));
  loop_DES_rounds_6_xor_5_nl <= R_20_1_sva XOR (O_1_out_7(0));
  loop_DES_rounds_8_xor_6_nl <= R_31_10_sva XOR (O_1_out_5(2));
  loop_DES_rounds_2_xor_28_nl <= (reg_input_ftd(22)) XOR (s_output_1_3_0_24_sva(0));
  loop_DES_rounds_2_xor_30_nl <= (reg_input_ftd(14)) XOR (s_output_1_19_16_35_sva(1));
  loop_DES_rounds_2_xor_32_nl <= (reg_input_ftd(6)) XOR (s_output_1_19_16_5_sva(0));
  loop_DES_rounds_8_xor_27_nl <= R_20_1_sva XOR (O_1_out_6(1));
  loop_DES_rounds_2_xor_21_nl <= (reg_input_ftd(16)) XOR (s_output_1_3_0_9_sva(2));
  loop_DES_rounds_2_xor_15_nl <= (reg_input_ftd(58)) XOR (s_output_1_19_16_50_sva(3));
  loop_DES_rounds_2_xor_13_nl <= (reg_input_ftd(50)) XOR (s_output_1_19_16_20_sva(1));
  loop_DES_rounds_2_xor_3_nl <= (reg_input_ftd(10)) XOR (s_output_1_19_16_35_sva(0));
  loop_DES_rounds_4_xor_19_nl <= R_10_1_sva XOR (O_1_out_1(3));
  loop_DES_rounds_10_xor_3_nl <= R_1_6_sva XOR (O_1_out(0));
  loop_DES_rounds_3_xor_5_nl <= R_11_11_sva XOR (O_1_out_7(0));
  loop_DES_rounds_9_xor_3_nl <= R_10_10_sva XOR (O_1_out(0));
  loop_DES_rounds_13_xor_7_nl <= R_12_11_sva XOR (O_1_out_1(2));
  R_or_99_nl <= (fsm_output(4)) OR (fsm_output(6));
  loop_DES_rounds_3_xor_4_nl <= R_23_4_sva XOR (O_1_out_8(1));
  loop_DES_rounds_11_xor_1_nl <= R_15_9_sva XOR (O_1_out_3(2));
  loop_DES_rounds_13_xor_1_nl <= R_15_11_sva XOR (O_1_out_3(2));
  loop_DES_rounds_3_xor_20_nl <= R_24_3_sva XOR (O_1_out_4(0));
  loop_DES_rounds_13_xor_18_nl <= R_24_11_sva XOR (O_1_out_5(3));
  loop_DES_rounds_3_xor_30_nl <= R_3_3_sva XOR (O_1_out(1));
  loop_DES_rounds_13_xor_25_nl <= R_3_11_sva XOR (O_1_out_7(2));
  loop_DES_rounds_3_xor_21_nl <= R_31_11_sva XOR (O_1_out_8(2));
  loop_DES_rounds_13_xor_23_nl <= R_4_11_sva XOR (O_1_out(2));
  loop_DES_rounds_3_xor_28_nl <= R_28_11_sva XOR (O_1_out_5(0));
  loop_DES_rounds_3_xor_19_nl <= R_1_4_sva XOR (O_1_out_1(3));
  loop_DES_rounds_5_xor_28_nl <= R_26_5_sva XOR (O_1_out_5(0));
  loop_DES_rounds_2_xor_14_nl <= (reg_input_ftd(12)) XOR (s_output_1_19_16_5_sva(1));
  loop_DES_rounds_14_xor_11_nl <= R_1_14_sva XOR (O_1_out_4(1));
  loop_DES_rounds_2_xor_22_nl <= (reg_input_ftd(46)) XOR (s_output_1_19_16_50_sva(0));
  loop_DES_rounds_6_xor_11_nl <= R_1_6_sva XOR (O_1_out_4(1));
  loop_DES_rounds_9_xor_29_nl <= R_1_7_sva XOR (O_1_out_3(0));
  loop_DES_rounds_13_xor_3_nl <= R_31_3_sva XOR (O_1_out(0));
  loop_DES_rounds_3_xor_14_nl <= R_1_6_sva XOR (O_1_out_1(1));
  loop_DES_rounds_7_xor_12_nl <= R_10_10_sva XOR (O_1_out_7(1));
  loop_DES_rounds_12_xor_14_nl <= R_10_1_sva XOR (O_1_out_1(1));
  R_or_152_nl <= (fsm_output(4)) OR (fsm_output(13));
  loop_DES_rounds_3_xor_22_nl <= R_1_8_sva XOR (O_1_out_6(0));
  loop_DES_rounds_6_xor_20_nl <= R_22_7_sva XOR (O_1_out_4(0));
  loop_DES_rounds_3_xor_13_nl <= R_7_11_sva XOR (O_1_out_3(1));
  loop_DES_rounds_4_xor_22_nl <= R_1_9_sva XOR (O_1_out_6(0));
  loop_DES_rounds_13_xor_22_nl <= R_22_7_sva XOR (O_1_out_6(0));
END v3;

-- ------------------------------------------------------------------
--  Design Unit:    des_check
-- ------------------------------------------------------------------

LIBRARY IEEE;

USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;

USE work.ccs_in_pkg_v1.ALL;
USE work.ccs_out_pkg_v1.ALL;
USE work.mgc_io_sync_pkg_v2.ALL;


ENTITY des_check IS
  PORT(
    clk : IN STD_LOGIC;
    rst : IN STD_LOGIC;
    input_rsc_dat : IN STD_LOGIC_VECTOR (63 DOWNTO 0);
    input_rsc_triosy_lz : OUT STD_LOGIC;
    key_rsc_dat : IN STD_LOGIC_VECTOR (63 DOWNTO 0);
    key_rsc_triosy_lz : OUT STD_LOGIC;
    return_rsc_dat : OUT STD_LOGIC_VECTOR (63 DOWNTO 0);
    return_rsc_triosy_lz : OUT STD_LOGIC
  );
END des_check;

ARCHITECTURE v3 OF des_check IS
  -- Default Constants

  COMPONENT des_check_core
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      input_rsc_dat : IN STD_LOGIC_VECTOR (63 DOWNTO 0);
      input_rsc_triosy_lz : OUT STD_LOGIC;
      key_rsc_dat : IN STD_LOGIC_VECTOR (63 DOWNTO 0);
      key_rsc_triosy_lz : OUT STD_LOGIC;
      return_rsc_dat : OUT STD_LOGIC_VECTOR (63 DOWNTO 0);
      return_rsc_triosy_lz : OUT STD_LOGIC
    );
  END COMPONENT;
  SIGNAL des_check_core_inst_input_rsc_dat : STD_LOGIC_VECTOR (63 DOWNTO 0);
  SIGNAL des_check_core_inst_key_rsc_dat : STD_LOGIC_VECTOR (63 DOWNTO 0);
  SIGNAL des_check_core_inst_return_rsc_dat : STD_LOGIC_VECTOR (63 DOWNTO 0);

BEGIN
  des_check_core_inst : des_check_core
    PORT MAP(
      clk => clk,
      rst => rst,
      input_rsc_dat => des_check_core_inst_input_rsc_dat,
      input_rsc_triosy_lz => input_rsc_triosy_lz,
      key_rsc_dat => des_check_core_inst_key_rsc_dat,
      key_rsc_triosy_lz => key_rsc_triosy_lz,
      return_rsc_dat => des_check_core_inst_return_rsc_dat,
      return_rsc_triosy_lz => return_rsc_triosy_lz
    );
  des_check_core_inst_input_rsc_dat <= input_rsc_dat;
  des_check_core_inst_key_rsc_dat <= key_rsc_dat;
  return_rsc_dat <= des_check_core_inst_return_rsc_dat;

END v3;



