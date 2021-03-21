
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
--  Generated date: Sun Mar 21 13:03:35 2021
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
    fsm_output : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
    loop_DES_rounds_C_0_tr0 : IN STD_LOGIC
  );
END des_check_core_core_fsm;

ARCHITECTURE v2 OF des_check_core_core_fsm IS
  -- Default Constants

  -- FSM State Type Declaration for des_check_core_core_fsm_1
  TYPE des_check_core_core_fsm_1_ST IS (main_C_0, loop_DES_rounds_C_0, main_C_1);

  SIGNAL state_var : des_check_core_core_fsm_1_ST;
  SIGNAL state_var_NS : des_check_core_core_fsm_1_ST;

BEGIN
  des_check_core_core_fsm_1 : PROCESS (loop_DES_rounds_C_0_tr0, state_var)
  BEGIN
    CASE state_var IS
      WHEN loop_DES_rounds_C_0 =>
        fsm_output <= STD_LOGIC_VECTOR'( "010");
        IF ( loop_DES_rounds_C_0_tr0 = '1' ) THEN
          state_var_NS <= main_C_1;
        ELSE
          state_var_NS <= loop_DES_rounds_C_0;
        END IF;
      WHEN main_C_1 =>
        fsm_output <= STD_LOGIC_VECTOR'( "100");
        state_var_NS <= main_C_0;
      -- main_C_0
      WHEN OTHERS =>
        fsm_output <= STD_LOGIC_VECTOR'( "001");
        state_var_NS <= loop_DES_rounds_C_0;
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

END v2;

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

ARCHITECTURE v2 OF des_check_core IS
  -- Default Constants

  -- Interconnect Declarations
  SIGNAL input_rsci_idat : STD_LOGIC_VECTOR (63 DOWNTO 0);
  SIGNAL key_rsci_idat : STD_LOGIC_VECTOR (63 DOWNTO 0);
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
  SIGNAL fsm_output : STD_LOGIC_VECTOR (2 DOWNTO 0);
  SIGNAL not_tmp_1 : STD_LOGIC;
  SIGNAL or_tmp_121 : STD_LOGIC;
  SIGNAL i_3_4_0_sva_2 : STD_LOGIC_VECTOR (4 DOWNTO 0);
  SIGNAL i_3_4_0_sva_3_0 : STD_LOGIC_VECTOR (3 DOWNTO 0);
  SIGNAL reg_return_rsc_triosy_obj_ld_cse : STD_LOGIC;
  SIGNAL L_15_sva : STD_LOGIC;
  SIGNAL L_16_sva : STD_LOGIC;
  SIGNAL L_14_sva : STD_LOGIC;
  SIGNAL L_17_sva : STD_LOGIC;
  SIGNAL L_13_sva : STD_LOGIC;
  SIGNAL L_18_sva : STD_LOGIC;
  SIGNAL L_12_sva : STD_LOGIC;
  SIGNAL L_19_sva : STD_LOGIC;
  SIGNAL L_11_sva : STD_LOGIC;
  SIGNAL L_20_sva : STD_LOGIC;
  SIGNAL L_10_sva : STD_LOGIC;
  SIGNAL L_21_sva : STD_LOGIC;
  SIGNAL L_9_sva : STD_LOGIC;
  SIGNAL L_22_sva : STD_LOGIC;
  SIGNAL L_8_sva : STD_LOGIC;
  SIGNAL L_23_sva : STD_LOGIC;
  SIGNAL L_7_sva : STD_LOGIC;
  SIGNAL L_24_sva : STD_LOGIC;
  SIGNAL L_6_sva : STD_LOGIC;
  SIGNAL L_25_sva : STD_LOGIC;
  SIGNAL L_5_sva : STD_LOGIC;
  SIGNAL L_26_sva : STD_LOGIC;
  SIGNAL L_4_sva : STD_LOGIC;
  SIGNAL L_27_sva : STD_LOGIC;
  SIGNAL L_3_sva : STD_LOGIC;
  SIGNAL L_28_sva : STD_LOGIC;
  SIGNAL L_2_sva : STD_LOGIC;
  SIGNAL L_29_sva : STD_LOGIC;
  SIGNAL L_1_sva : STD_LOGIC;
  SIGNAL L_30_sva : STD_LOGIC;
  SIGNAL L_0_sva : STD_LOGIC;
  SIGNAL L_31_sva : STD_LOGIC;
  SIGNAL R_15_sva : STD_LOGIC;
  SIGNAL R_16_sva : STD_LOGIC;
  SIGNAL R_14_sva : STD_LOGIC;
  SIGNAL R_17_sva : STD_LOGIC;
  SIGNAL R_13_sva : STD_LOGIC;
  SIGNAL R_18_sva : STD_LOGIC;
  SIGNAL R_12_sva : STD_LOGIC;
  SIGNAL R_19_sva : STD_LOGIC;
  SIGNAL R_11_sva : STD_LOGIC;
  SIGNAL R_20_sva : STD_LOGIC;
  SIGNAL R_10_sva : STD_LOGIC;
  SIGNAL R_21_sva : STD_LOGIC;
  SIGNAL R_9_sva : STD_LOGIC;
  SIGNAL R_22_sva : STD_LOGIC;
  SIGNAL R_8_sva : STD_LOGIC;
  SIGNAL R_23_sva : STD_LOGIC;
  SIGNAL R_7_sva : STD_LOGIC;
  SIGNAL R_24_sva : STD_LOGIC;
  SIGNAL R_6_sva : STD_LOGIC;
  SIGNAL R_25_sva : STD_LOGIC;
  SIGNAL R_5_sva : STD_LOGIC;
  SIGNAL R_26_sva : STD_LOGIC;
  SIGNAL R_4_sva : STD_LOGIC;
  SIGNAL R_27_sva : STD_LOGIC;
  SIGNAL R_3_sva : STD_LOGIC;
  SIGNAL R_28_sva : STD_LOGIC;
  SIGNAL R_2_sva : STD_LOGIC;
  SIGNAL R_29_sva : STD_LOGIC;
  SIGNAL R_1_sva : STD_LOGIC;
  SIGNAL R_30_sva : STD_LOGIC;
  SIGNAL R_0_sva : STD_LOGIC;
  SIGNAL R_31_sva : STD_LOGIC;
  SIGNAL C_1_13_sva : STD_LOGIC;
  SIGNAL C_1_14_sva : STD_LOGIC;
  SIGNAL C_1_12_sva : STD_LOGIC;
  SIGNAL C_1_15_sva : STD_LOGIC;
  SIGNAL C_1_11_sva : STD_LOGIC;
  SIGNAL C_1_16_sva : STD_LOGIC;
  SIGNAL C_1_10_sva : STD_LOGIC;
  SIGNAL C_1_17_sva : STD_LOGIC;
  SIGNAL C_1_9_sva : STD_LOGIC;
  SIGNAL C_1_18_sva : STD_LOGIC;
  SIGNAL C_1_8_sva : STD_LOGIC;
  SIGNAL C_1_19_sva : STD_LOGIC;
  SIGNAL C_1_7_sva : STD_LOGIC;
  SIGNAL C_1_20_sva : STD_LOGIC;
  SIGNAL C_1_6_sva : STD_LOGIC;
  SIGNAL C_1_21_sva : STD_LOGIC;
  SIGNAL C_1_5_sva : STD_LOGIC;
  SIGNAL C_1_22_sva : STD_LOGIC;
  SIGNAL C_1_4_sva : STD_LOGIC;
  SIGNAL C_1_23_sva : STD_LOGIC;
  SIGNAL C_1_3_sva : STD_LOGIC;
  SIGNAL C_1_24_sva : STD_LOGIC;
  SIGNAL C_1_2_sva : STD_LOGIC;
  SIGNAL C_1_25_sva : STD_LOGIC;
  SIGNAL C_1_1_sva : STD_LOGIC;
  SIGNAL C_1_26_sva : STD_LOGIC;
  SIGNAL C_1_0_sva : STD_LOGIC;
  SIGNAL C_1_27_sva : STD_LOGIC;
  SIGNAL D_1_13_sva : STD_LOGIC;
  SIGNAL D_1_14_sva : STD_LOGIC;
  SIGNAL D_1_12_sva : STD_LOGIC;
  SIGNAL D_1_15_sva : STD_LOGIC;
  SIGNAL D_1_11_sva : STD_LOGIC;
  SIGNAL D_1_16_sva : STD_LOGIC;
  SIGNAL D_1_10_sva : STD_LOGIC;
  SIGNAL D_1_17_sva : STD_LOGIC;
  SIGNAL D_1_9_sva : STD_LOGIC;
  SIGNAL D_1_18_sva : STD_LOGIC;
  SIGNAL D_1_8_sva : STD_LOGIC;
  SIGNAL D_1_19_sva : STD_LOGIC;
  SIGNAL D_1_7_sva : STD_LOGIC;
  SIGNAL D_1_20_sva : STD_LOGIC;
  SIGNAL D_1_6_sva : STD_LOGIC;
  SIGNAL D_1_21_sva : STD_LOGIC;
  SIGNAL D_1_5_sva : STD_LOGIC;
  SIGNAL D_1_22_sva : STD_LOGIC;
  SIGNAL D_1_4_sva : STD_LOGIC;
  SIGNAL D_1_23_sva : STD_LOGIC;
  SIGNAL D_1_3_sva : STD_LOGIC;
  SIGNAL D_1_24_sva : STD_LOGIC;
  SIGNAL D_1_2_sva : STD_LOGIC;
  SIGNAL D_1_25_sva : STD_LOGIC;
  SIGNAL D_1_1_sva : STD_LOGIC;
  SIGNAL D_1_26_sva : STD_LOGIC;
  SIGNAL D_1_0_sva : STD_LOGIC;
  SIGNAL D_1_27_sva : STD_LOGIC;
  SIGNAL R_24_sva_2 : STD_LOGIC;
  SIGNAL R_7_sva_2 : STD_LOGIC;
  SIGNAL R_16_sva_2 : STD_LOGIC;
  SIGNAL R_15_sva_2 : STD_LOGIC;
  SIGNAL R_8_sva_2 : STD_LOGIC;
  SIGNAL R_23_sva_2 : STD_LOGIC;
  SIGNAL R_0_sva_2 : STD_LOGIC;
  SIGNAL R_31_sva_2 : STD_LOGIC;
  SIGNAL R_25_sva_2 : STD_LOGIC;
  SIGNAL R_6_sva_2 : STD_LOGIC;
  SIGNAL R_17_sva_2 : STD_LOGIC;
  SIGNAL R_14_sva_2 : STD_LOGIC;
  SIGNAL R_9_sva_2 : STD_LOGIC;
  SIGNAL R_22_sva_2 : STD_LOGIC;
  SIGNAL R_1_sva_2 : STD_LOGIC;
  SIGNAL R_30_sva_2 : STD_LOGIC;
  SIGNAL R_26_sva_2 : STD_LOGIC;
  SIGNAL R_5_sva_2 : STD_LOGIC;
  SIGNAL R_18_sva_2 : STD_LOGIC;
  SIGNAL R_13_sva_2 : STD_LOGIC;
  SIGNAL R_10_sva_2 : STD_LOGIC;
  SIGNAL R_21_sva_2 : STD_LOGIC;
  SIGNAL R_2_sva_2 : STD_LOGIC;
  SIGNAL R_29_sva_2 : STD_LOGIC;
  SIGNAL R_27_sva_2 : STD_LOGIC;
  SIGNAL R_4_sva_2 : STD_LOGIC;
  SIGNAL R_19_sva_2 : STD_LOGIC;
  SIGNAL R_12_sva_2 : STD_LOGIC;
  SIGNAL R_11_sva_2 : STD_LOGIC;
  SIGNAL R_20_sva_2 : STD_LOGIC;
  SIGNAL R_3_sva_2 : STD_LOGIC;
  SIGNAL R_28_sva_2 : STD_LOGIC;
  SIGNAL D_1_26_sva_mx1 : STD_LOGIC;
  SIGNAL D_1_27_sva_mx1 : STD_LOGIC;
  SIGNAL D_1_0_sva_mx1 : STD_LOGIC;
  SIGNAL D_1_1_sva_mx1 : STD_LOGIC;
  SIGNAL D_1_3_sva_mx1 : STD_LOGIC;
  SIGNAL D_1_4_sva_mx1 : STD_LOGIC;
  SIGNAL D_1_5_sva_mx1 : STD_LOGIC;
  SIGNAL D_1_6_sva_mx1 : STD_LOGIC;
  SIGNAL D_1_7_sva_mx1 : STD_LOGIC;
  SIGNAL D_1_8_sva_mx1 : STD_LOGIC;
  SIGNAL D_1_9_sva_mx1 : STD_LOGIC;
  SIGNAL D_1_10_sva_mx1 : STD_LOGIC;
  SIGNAL D_1_11_sva_mx1 : STD_LOGIC;
  SIGNAL D_1_12_sva_mx1 : STD_LOGIC;
  SIGNAL D_1_14_sva_mx1 : STD_LOGIC;
  SIGNAL D_1_15_sva_mx1 : STD_LOGIC;
  SIGNAL D_1_16_sva_mx1 : STD_LOGIC;
  SIGNAL D_1_17_sva_mx1 : STD_LOGIC;
  SIGNAL D_1_19_sva_mx1 : STD_LOGIC;
  SIGNAL D_1_20_sva_mx1 : STD_LOGIC;
  SIGNAL D_1_22_sva_mx1 : STD_LOGIC;
  SIGNAL D_1_23_sva_mx1 : STD_LOGIC;
  SIGNAL D_1_24_sva_mx1 : STD_LOGIC;
  SIGNAL D_1_25_sva_mx1 : STD_LOGIC;
  SIGNAL C_1_26_sva_mx1 : STD_LOGIC;
  SIGNAL C_1_27_sva_mx1 : STD_LOGIC;
  SIGNAL C_1_0_sva_mx1 : STD_LOGIC;
  SIGNAL C_1_1_sva_mx1 : STD_LOGIC;
  SIGNAL C_1_2_sva_mx1 : STD_LOGIC;
  SIGNAL C_1_4_sva_mx1 : STD_LOGIC;
  SIGNAL C_1_5_sva_mx1 : STD_LOGIC;
  SIGNAL C_1_7_sva_mx1 : STD_LOGIC;
  SIGNAL C_1_8_sva_mx1 : STD_LOGIC;
  SIGNAL C_1_9_sva_mx1 : STD_LOGIC;
  SIGNAL C_1_11_sva_mx1 : STD_LOGIC;
  SIGNAL C_1_12_sva_mx1 : STD_LOGIC;
  SIGNAL C_1_13_sva_mx1 : STD_LOGIC;
  SIGNAL C_1_14_sva_mx1 : STD_LOGIC;
  SIGNAL C_1_15_sva_mx1 : STD_LOGIC;
  SIGNAL C_1_16_sva_mx1 : STD_LOGIC;
  SIGNAL C_1_17_sva_mx1 : STD_LOGIC;
  SIGNAL C_1_18_sva_mx1 : STD_LOGIC;
  SIGNAL C_1_20_sva_mx1 : STD_LOGIC;
  SIGNAL C_1_21_sva_mx1 : STD_LOGIC;
  SIGNAL C_1_22_sva_mx1 : STD_LOGIC;
  SIGNAL C_1_23_sva_mx1 : STD_LOGIC;
  SIGNAL C_1_24_sva_mx1 : STD_LOGIC;
  SIGNAL C_1_25_sva_mx1 : STD_LOGIC;
  SIGNAL ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_1 : STD_LOGIC_VECTOR (3 DOWNTO
      0);
  SIGNAL ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_1 : STD_LOGIC_VECTOR (3 DOWNTO
      0);
  SIGNAL ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_1 : STD_LOGIC_VECTOR (3 DOWNTO
      0);
  SIGNAL ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_1 : STD_LOGIC_VECTOR (3 DOWNTO
      0);
  SIGNAL ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_1 : STD_LOGIC_VECTOR (3 DOWNTO
      0);
  SIGNAL ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_1 : STD_LOGIC_VECTOR (3 DOWNTO
      0);
  SIGNAL ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_1 : STD_LOGIC_VECTOR (3 DOWNTO
      0);
  SIGNAL ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_1 : STD_LOGIC_VECTOR (3 DOWNTO
      0);

  SIGNAL D_mux_9_nl : STD_LOGIC;
  SIGNAL D_mux_31_nl : STD_LOGIC;
  SIGNAL D_mux_41_nl : STD_LOGIC;
  SIGNAL D_mux_47_nl : STD_LOGIC;
  SIGNAL C_mux_11_nl : STD_LOGIC;
  SIGNAL C_mux_17_nl : STD_LOGIC;
  SIGNAL C_mux_25_nl : STD_LOGIC;
  SIGNAL C_mux_43_nl : STD_LOGIC;
  SIGNAL input_rsci_dat : STD_LOGIC_VECTOR (63 DOWNTO 0);
  SIGNAL input_rsci_idat_1 : STD_LOGIC_VECTOR (63 DOWNTO 0);

  SIGNAL key_rsci_dat : STD_LOGIC_VECTOR (63 DOWNTO 0);
  SIGNAL key_rsci_idat_1 : STD_LOGIC_VECTOR (63 DOWNTO 0);

  SIGNAL return_rsci_idat : STD_LOGIC_VECTOR (63 DOWNTO 0);
  SIGNAL return_rsci_dat : STD_LOGIC_VECTOR (63 DOWNTO 0);

  COMPONENT ROM_1i6_1o4_ef4da7ff735c86ba85f23e51741d972cb3
    PORT (
      I_1 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      O_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  COMPONENT ROM_1i6_1o4_d0e242163cbb0b2ce9c4399bc1cb50f5b3
    PORT (
      I_1 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      O_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL U_ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  COMPONENT ROM_1i6_1o4_752c7ca65a598ada4acee0cd63d199c3b3
    PORT (
      I_1 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      O_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  COMPONENT ROM_1i6_1o4_3c5c29b75c561d2b741f22e5a3a569dbb3
    PORT (
      I_1 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      O_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
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

  COMPONENT ROM_1i6_1o4_cfafff97e973ca9580e646fecdc2f814b3
    PORT (
      I_1 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      O_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  COMPONENT ROM_1i6_1o4_ef717c7c87dc90ac6f7b34d533fe115fb3
    PORT (
      I_1 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      O_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  COMPONENT ROM_1i6_1o4_8f60b2fc4a3ee4cef30040071bc0219cb3
    PORT (
      I_1 : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
      O_1 : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
    );
  END COMPONENT;
  SIGNAL U_ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_rg_I_1 : STD_LOGIC_VECTOR
      (5 DOWNTO 0);
  SIGNAL U_ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_rg_O_1 : STD_LOGIC_VECTOR
      (3 DOWNTO 0);

  COMPONENT des_check_core_core_fsm
    PORT(
      clk : IN STD_LOGIC;
      rst : IN STD_LOGIC;
      fsm_output : OUT STD_LOGIC_VECTOR (2 DOWNTO 0);
      loop_DES_rounds_C_0_tr0 : IN STD_LOGIC
    );
  END COMPONENT;
  SIGNAL des_check_core_core_fsm_inst_fsm_output : STD_LOGIC_VECTOR (2 DOWNTO 0);
  SIGNAL des_check_core_core_fsm_inst_loop_DES_rounds_C_0_tr0 : STD_LOGIC;

  FUNCTION CONV_SL_1_1(input_val:BOOLEAN)
  RETURN STD_LOGIC IS
  BEGIN
    IF input_val THEN RETURN '1';ELSE RETURN '0';END IF;
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
      ld => reg_return_rsc_triosy_obj_ld_cse,
      lz => input_rsc_triosy_lz
    );
  key_rsc_triosy_obj : work.mgc_io_sync_pkg_v2.mgc_io_sync_v2
    GENERIC MAP(
      valid => 0
      )
    PORT MAP(
      ld => reg_return_rsc_triosy_obj_ld_cse,
      lz => key_rsc_triosy_lz
    );
  return_rsc_triosy_obj : work.mgc_io_sync_pkg_v2.mgc_io_sync_v2
    GENERIC MAP(
      valid => 0
      )
    PORT MAP(
      ld => reg_return_rsc_triosy_obj_ld_cse,
      lz => return_rsc_triosy_lz
    );
  U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_rg : ROM_1i6_1o4_ef4da7ff735c86ba85f23e51741d972cb3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_rg_I_1,
      O_1 => U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_rg_O_1
    );
  U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_rg_I_1 <= STD_LOGIC_VECTOR'( (R_4_sva
      XOR D_1_10_sva_mx1) & (R_31_sva XOR D_1_24_sva_mx1) & (R_3_sva XOR D_1_14_sva_mx1)
      & (R_2_sva XOR D_1_6_sva_mx1) & (R_1_sva XOR D_1_20_sva_mx1) & (R_0_sva XOR
      D_1_27_sva_mx1));
  ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_1 <= U_ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_rg_O_1;

  U_ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_rg : ROM_1i6_1o4_d0e242163cbb0b2ce9c4399bc1cb50f5b3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_rg_I_1,
      O_1 => U_ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_rg_O_1
    );
  U_ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_rg_I_1 <= STD_LOGIC_VECTOR'( (R_20_sva
      XOR C_1_12_sva_mx1) & (R_15_sva XOR C_1_26_sva_mx1) & (R_19_sva XOR C_1_21_sva_mx1)
      & (R_18_sva XOR C_1_1_sva_mx1) & (R_17_sva XOR C_1_8_sva_mx1) & (R_16_sva XOR
      C_1_15_sva_mx1));
  ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_1 <= U_ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_rg_O_1;

  U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_rg : ROM_1i6_1o4_752c7ca65a598ada4acee0cd63d199c3b3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_rg_I_1,
      O_1 => U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_rg_O_1
    );
  U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_rg_I_1 <= STD_LOGIC_VECTOR'( (R_8_sva
      XOR D_1_12_sva_mx1) & (R_3_sva XOR D_1_3_sva_mx1) & (R_7_sva XOR D_1_7_sva_mx1)
      & (R_6_sva XOR D_1_17_sva_mx1) & (R_5_sva XOR D_1_0_sva_mx1) & (R_4_sva XOR
      D_1_22_sva_mx1));
  ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_1 <= U_ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_rg_O_1;

  U_ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_rg : ROM_1i6_1o4_3c5c29b75c561d2b741f22e5a3a569dbb3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_rg_I_1,
      O_1 => U_ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_rg_O_1
    );
  U_ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_rg_I_1 <= STD_LOGIC_VECTOR'( (R_24_sva
      XOR C_1_5_sva_mx1) & (R_19_sva XOR C_1_20_sva_mx1) & (R_23_sva XOR C_1_9_sva_mx1)
      & (R_22_sva XOR C_1_16_sva_mx1) & (R_21_sva XOR C_1_24_sva_mx1) & (R_20_sva
      XOR C_1_2_sva_mx1));
  ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_1 <= U_ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_rg_O_1;

  U_ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_rg : ROM_1i6_1o4_51ba7157b272cd3b87451219caf38e7cb3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_rg_I_1,
      O_1 => U_ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_rg_O_1
    );
  U_ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_rg_I_1 <= STD_LOGIC_VECTOR'( (R_12_sva
      XOR D_1_26_sva_mx1) & (R_7_sva XOR D_1_8_sva_mx1) & (R_11_sva XOR D_1_16_sva_mx1)
      & (R_10_sva XOR D_1_5_sva_mx1) & (R_9_sva XOR D_1_11_sva_mx1) & (R_8_sva XOR
      D_1_23_sva_mx1));
  ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_1 <= U_ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_rg_O_1;

  U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_rg : ROM_1i6_1o4_cfafff97e973ca9580e646fecdc2f814b3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_rg_I_1,
      O_1 => U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_rg_O_1
    );
  U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_rg_I_1 <= STD_LOGIC_VECTOR'( (R_28_sva
      XOR C_1_25_sva_mx1) & (R_23_sva XOR C_1_18_sva_mx1) & (R_27_sva XOR C_1_0_sva_mx1)
      & (R_26_sva XOR C_1_13_sva_mx1) & (R_25_sva XOR C_1_22_sva_mx1) & (R_24_sva
      XOR C_1_7_sva_mx1));
  ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_1 <= U_ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_rg_O_1;

  U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_rg : ROM_1i6_1o4_ef717c7c87dc90ac6f7b34d533fe115fb3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_rg_I_1,
      O_1 => U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_rg_O_1
    );
  U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_rg_I_1 <= STD_LOGIC_VECTOR'( (R_16_sva
      XOR D_1_15_sva_mx1) & (R_11_sva XOR D_1_1_sva_mx1) & (R_15_sva XOR D_1_4_sva_mx1)
      & (R_14_sva XOR D_1_25_sva_mx1) & (R_13_sva XOR D_1_19_sva_mx1) & (R_12_sva
      XOR D_1_9_sva_mx1));
  ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_1 <= U_ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_rg_O_1;

  U_ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_rg : ROM_1i6_1o4_8f60b2fc4a3ee4cef30040071bc0219cb3
    PORT MAP(
      I_1 => U_ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_rg_I_1,
      O_1 => U_ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_rg_O_1
    );
  U_ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_rg_I_1 <= STD_LOGIC_VECTOR'( (R_0_sva
      XOR C_1_14_sva_mx1) & (R_27_sva XOR C_1_23_sva_mx1) & (R_31_sva XOR C_1_11_sva_mx1)
      & (R_30_sva XOR C_1_17_sva_mx1) & (R_29_sva XOR C_1_4_sva_mx1) & (R_28_sva
      XOR C_1_27_sva_mx1));
  ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_1 <= U_ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_rg_O_1;

  des_check_core_core_fsm_inst : des_check_core_core_fsm
    PORT MAP(
      clk => clk,
      rst => rst,
      fsm_output => des_check_core_core_fsm_inst_fsm_output,
      loop_DES_rounds_C_0_tr0 => des_check_core_core_fsm_inst_loop_DES_rounds_C_0_tr0
    );
  fsm_output <= des_check_core_core_fsm_inst_fsm_output;
  des_check_core_core_fsm_inst_loop_DES_rounds_C_0_tr0 <= i_3_4_0_sva_2(4);

  R_24_sva_2 <= L_24_sva XOR (ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_1(3));
  R_7_sva_2 <= L_7_sva XOR (ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_1(1));
  R_16_sva_2 <= L_16_sva XOR (ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_1(2));
  R_15_sva_2 <= L_15_sva XOR (ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_1(2));
  R_8_sva_2 <= L_8_sva XOR (ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_1(3));
  R_23_sva_2 <= L_23_sva XOR (ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_1(3));
  R_0_sva_2 <= L_0_sva XOR (ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_1(3));
  R_31_sva_2 <= L_31_sva XOR (ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_1(0));
  R_25_sva_2 <= L_25_sva XOR (ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_1(0));
  R_6_sva_2 <= L_6_sva XOR (ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_1(3));
  R_17_sva_2 <= L_17_sva XOR (ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_1(1));
  R_14_sva_2 <= L_14_sva XOR (ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_1(0));
  R_9_sva_2 <= L_9_sva XOR (ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_1(1));
  R_22_sva_2 <= L_22_sva XOR (ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_1(1));
  R_1_sva_2 <= L_1_sva XOR (ROM_1i6_1o4_ce1b43b29576509b87f48de0e64c68b52f_1(0));
  R_30_sva_2 <= L_30_sva XOR (ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_1(1));
  R_26_sva_2 <= L_26_sva XOR (ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_1(0));
  R_5_sva_2 <= L_5_sva XOR (ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_1(2));
  R_18_sva_2 <= L_18_sva XOR (ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_1(2));
  R_13_sva_2 <= L_13_sva XOR (ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_1(0));
  R_10_sva_2 <= L_10_sva XOR (ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_1(1));
  R_21_sva_2 <= L_21_sva XOR (ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_1(1));
  R_2_sva_2 <= L_2_sva XOR (ROM_1i6_1o4_644850663d96c9b3c8a27f69784ee5782f_1(1));
  R_29_sva_2 <= L_29_sva XOR (ROM_1i6_1o4_5d76c79e05be4dd136865bde1aaf01c82f_1(0));
  R_27_sva_2 <= L_27_sva XOR (ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_1(3));
  R_4_sva_2 <= L_4_sva XOR (ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_1(2));
  R_19_sva_2 <= L_19_sva XOR (ROM_1i6_1o4_79fefe0558b80605fe451e50421a35632f_1(3));
  R_12_sva_2 <= L_12_sva XOR (ROM_1i6_1o4_573cd39ad7d789c17a1aa9155f1a1a9b2f_1(2));
  R_11_sva_2 <= L_11_sva XOR (ROM_1i6_1o4_35be3ef31c93661f5e99f6752adf3f622f_1(0));
  R_20_sva_2 <= L_20_sva XOR (ROM_1i6_1o4_dcd0439231154fad8f91fc0951bedbc32f_1(2));
  R_3_sva_2 <= L_3_sva XOR (ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_1(2));
  R_28_sva_2 <= L_28_sva XOR (ROM_1i6_1o4_67cbe7fa3f0828c413079bd7c0dc864f2f_1(3));
  D_1_26_sva_mx1 <= MUX_s_1_2_2(D_1_25_sva, D_1_24_sva, not_tmp_1);
  D_1_27_sva_mx1 <= MUX_s_1_2_2(D_1_26_sva, D_1_25_sva, not_tmp_1);
  D_1_0_sva_mx1 <= MUX_s_1_2_2(D_1_27_sva, D_1_26_sva, not_tmp_1);
  D_1_1_sva_mx1 <= MUX_s_1_2_2(D_1_0_sva, D_1_27_sva, not_tmp_1);
  D_1_3_sva_mx1 <= MUX_s_1_2_2(D_1_2_sva, D_1_1_sva, not_tmp_1);
  D_1_4_sva_mx1 <= MUX_s_1_2_2(D_1_3_sva, D_1_2_sva, not_tmp_1);
  D_1_5_sva_mx1 <= MUX_s_1_2_2(D_1_4_sva, D_1_3_sva, not_tmp_1);
  D_1_6_sva_mx1 <= MUX_s_1_2_2(D_1_5_sva, D_1_4_sva, not_tmp_1);
  D_1_7_sva_mx1 <= MUX_s_1_2_2(D_1_6_sva, D_1_5_sva, not_tmp_1);
  D_1_8_sva_mx1 <= MUX_s_1_2_2(D_1_7_sva, D_1_6_sva, not_tmp_1);
  D_1_9_sva_mx1 <= MUX_s_1_2_2(D_1_8_sva, D_1_7_sva, not_tmp_1);
  D_1_10_sva_mx1 <= MUX_s_1_2_2(D_1_9_sva, D_1_8_sva, not_tmp_1);
  D_1_11_sva_mx1 <= MUX_s_1_2_2(D_1_10_sva, D_1_9_sva, not_tmp_1);
  D_1_12_sva_mx1 <= MUX_s_1_2_2(D_1_11_sva, D_1_10_sva, not_tmp_1);
  D_1_14_sva_mx1 <= MUX_s_1_2_2(D_1_13_sva, D_1_12_sva, not_tmp_1);
  D_1_15_sva_mx1 <= MUX_s_1_2_2(D_1_14_sva, D_1_13_sva, not_tmp_1);
  D_1_16_sva_mx1 <= MUX_s_1_2_2(D_1_15_sva, D_1_14_sva, not_tmp_1);
  D_1_17_sva_mx1 <= MUX_s_1_2_2(D_1_16_sva, D_1_15_sva, not_tmp_1);
  D_1_19_sva_mx1 <= MUX_s_1_2_2(D_1_18_sva, D_1_17_sva, not_tmp_1);
  D_1_20_sva_mx1 <= MUX_s_1_2_2(D_1_19_sva, D_1_18_sva, not_tmp_1);
  D_1_22_sva_mx1 <= MUX_s_1_2_2(D_1_21_sva, D_1_20_sva, not_tmp_1);
  D_1_23_sva_mx1 <= MUX_s_1_2_2(D_1_22_sva, D_1_21_sva, not_tmp_1);
  D_1_24_sva_mx1 <= MUX_s_1_2_2(D_1_23_sva, D_1_22_sva, not_tmp_1);
  D_1_25_sva_mx1 <= MUX_s_1_2_2(D_1_24_sva, D_1_23_sva, not_tmp_1);
  C_1_26_sva_mx1 <= MUX_s_1_2_2(C_1_25_sva, C_1_24_sva, not_tmp_1);
  C_1_27_sva_mx1 <= MUX_s_1_2_2(C_1_26_sva, C_1_25_sva, not_tmp_1);
  C_1_0_sva_mx1 <= MUX_s_1_2_2(C_1_27_sva, C_1_26_sva, not_tmp_1);
  C_1_1_sva_mx1 <= MUX_s_1_2_2(C_1_0_sva, C_1_27_sva, not_tmp_1);
  C_1_2_sva_mx1 <= MUX_s_1_2_2(C_1_1_sva, C_1_0_sva, not_tmp_1);
  C_1_4_sva_mx1 <= MUX_s_1_2_2(C_1_3_sva, C_1_2_sva, not_tmp_1);
  C_1_5_sva_mx1 <= MUX_s_1_2_2(C_1_4_sva, C_1_3_sva, not_tmp_1);
  C_1_7_sva_mx1 <= MUX_s_1_2_2(C_1_6_sva, C_1_5_sva, not_tmp_1);
  C_1_8_sva_mx1 <= MUX_s_1_2_2(C_1_7_sva, C_1_6_sva, not_tmp_1);
  C_1_9_sva_mx1 <= MUX_s_1_2_2(C_1_8_sva, C_1_7_sva, not_tmp_1);
  C_1_11_sva_mx1 <= MUX_s_1_2_2(C_1_10_sva, C_1_9_sva, not_tmp_1);
  C_1_12_sva_mx1 <= MUX_s_1_2_2(C_1_11_sva, C_1_10_sva, not_tmp_1);
  C_1_13_sva_mx1 <= MUX_s_1_2_2(C_1_12_sva, C_1_11_sva, not_tmp_1);
  C_1_14_sva_mx1 <= MUX_s_1_2_2(C_1_13_sva, C_1_12_sva, not_tmp_1);
  C_1_15_sva_mx1 <= MUX_s_1_2_2(C_1_14_sva, C_1_13_sva, not_tmp_1);
  C_1_16_sva_mx1 <= MUX_s_1_2_2(C_1_15_sva, C_1_14_sva, not_tmp_1);
  C_1_17_sva_mx1 <= MUX_s_1_2_2(C_1_16_sva, C_1_15_sva, not_tmp_1);
  C_1_18_sva_mx1 <= MUX_s_1_2_2(C_1_17_sva, C_1_16_sva, not_tmp_1);
  C_1_20_sva_mx1 <= MUX_s_1_2_2(C_1_19_sva, C_1_18_sva, not_tmp_1);
  C_1_21_sva_mx1 <= MUX_s_1_2_2(C_1_20_sva, C_1_19_sva, not_tmp_1);
  C_1_22_sva_mx1 <= MUX_s_1_2_2(C_1_21_sva, C_1_20_sva, not_tmp_1);
  C_1_23_sva_mx1 <= MUX_s_1_2_2(C_1_22_sva, C_1_21_sva, not_tmp_1);
  C_1_24_sva_mx1 <= MUX_s_1_2_2(C_1_23_sva, C_1_22_sva, not_tmp_1);
  C_1_25_sva_mx1 <= MUX_s_1_2_2(C_1_24_sva, C_1_23_sva, not_tmp_1);
  i_3_4_0_sva_2 <= STD_LOGIC_VECTOR(CONV_SIGNED(CONV_SIGNED(CONV_UNSIGNED(UNSIGNED(i_3_4_0_sva_3_0),
      4), 5) + SIGNED'( "00001"), 5));
  not_tmp_1 <= NOT((CONV_SL_1_1(i_3_4_0_sva_3_0=STD_LOGIC_VECTOR'("1111"))) OR (CONV_SL_1_1(i_3_4_0_sva_3_0=STD_LOGIC_VECTOR'("1000")))
      OR (NOT((NOT(CONV_SL_1_1(i_3_4_0_sva_3_0=STD_LOGIC_VECTOR'("0001")))) AND (CONV_SL_1_1(i_3_4_0_sva_3_0/=STD_LOGIC_VECTOR'("0000"))))));
  or_tmp_121 <= NOT((i_3_4_0_sva_2(4)) AND (fsm_output(1)));
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        R_24_sva <= '0';
        R_7_sva <= '0';
        R_16_sva <= '0';
        R_15_sva <= '0';
        R_8_sva <= '0';
        R_23_sva <= '0';
        R_0_sva <= '0';
        R_31_sva <= '0';
        R_25_sva <= '0';
        R_6_sva <= '0';
        R_17_sva <= '0';
        R_14_sva <= '0';
        R_9_sva <= '0';
        R_22_sva <= '0';
        R_1_sva <= '0';
        R_30_sva <= '0';
        R_26_sva <= '0';
        R_5_sva <= '0';
        R_18_sva <= '0';
        R_13_sva <= '0';
        R_10_sva <= '0';
        R_21_sva <= '0';
        R_2_sva <= '0';
        R_29_sva <= '0';
        R_27_sva <= '0';
        R_4_sva <= '0';
        R_19_sva <= '0';
        R_12_sva <= '0';
        R_11_sva <= '0';
        R_20_sva <= '0';
        R_3_sva <= '0';
        R_28_sva <= '0';
        i_3_4_0_sva_3_0 <= STD_LOGIC_VECTOR'( "0000");
        L_31_sva <= '0';
        L_0_sva <= '0';
        L_30_sva <= '0';
        L_1_sva <= '0';
        L_29_sva <= '0';
        L_2_sva <= '0';
        L_28_sva <= '0';
        L_3_sva <= '0';
        L_27_sva <= '0';
        L_4_sva <= '0';
        L_26_sva <= '0';
        L_5_sva <= '0';
        L_25_sva <= '0';
        L_6_sva <= '0';
        L_24_sva <= '0';
        L_7_sva <= '0';
        L_23_sva <= '0';
        L_8_sva <= '0';
        L_22_sva <= '0';
        L_9_sva <= '0';
        L_21_sva <= '0';
        L_10_sva <= '0';
        L_20_sva <= '0';
        L_11_sva <= '0';
        L_19_sva <= '0';
        L_12_sva <= '0';
        L_18_sva <= '0';
        L_13_sva <= '0';
        L_17_sva <= '0';
        L_14_sva <= '0';
        L_16_sva <= '0';
        L_15_sva <= '0';
        D_1_26_sva <= '0';
        D_1_27_sva <= '0';
        D_1_0_sva <= '0';
        D_1_1_sva <= '0';
        D_1_2_sva <= '0';
        D_1_3_sva <= '0';
        D_1_4_sva <= '0';
        D_1_5_sva <= '0';
        D_1_6_sva <= '0';
        D_1_7_sva <= '0';
        D_1_8_sva <= '0';
        D_1_9_sva <= '0';
        D_1_10_sva <= '0';
        D_1_11_sva <= '0';
        D_1_12_sva <= '0';
        D_1_13_sva <= '0';
        D_1_14_sva <= '0';
        D_1_15_sva <= '0';
        D_1_16_sva <= '0';
        D_1_17_sva <= '0';
        D_1_18_sva <= '0';
        D_1_19_sva <= '0';
        D_1_20_sva <= '0';
        D_1_21_sva <= '0';
        D_1_22_sva <= '0';
        D_1_23_sva <= '0';
        D_1_24_sva <= '0';
        D_1_25_sva <= '0';
        C_1_26_sva <= '0';
        C_1_27_sva <= '0';
        C_1_0_sva <= '0';
        C_1_1_sva <= '0';
        C_1_2_sva <= '0';
        C_1_3_sva <= '0';
        C_1_4_sva <= '0';
        C_1_5_sva <= '0';
        C_1_6_sva <= '0';
        C_1_7_sva <= '0';
        C_1_8_sva <= '0';
        C_1_9_sva <= '0';
        C_1_10_sva <= '0';
        C_1_11_sva <= '0';
        C_1_12_sva <= '0';
        C_1_13_sva <= '0';
        C_1_14_sva <= '0';
        C_1_15_sva <= '0';
        C_1_16_sva <= '0';
        C_1_17_sva <= '0';
        C_1_18_sva <= '0';
        C_1_19_sva <= '0';
        C_1_20_sva <= '0';
        C_1_21_sva <= '0';
        C_1_22_sva <= '0';
        C_1_23_sva <= '0';
        C_1_24_sva <= '0';
        C_1_25_sva <= '0';
        reg_return_rsc_triosy_obj_ld_cse <= '0';
      ELSE
        R_24_sva <= MUX_s_1_2_2((input_rsci_idat(63)), R_24_sva_2, fsm_output(1));
        R_7_sva <= MUX_s_1_2_2((input_rsci_idat(1)), R_7_sva_2, fsm_output(1));
        R_16_sva <= MUX_s_1_2_2((input_rsci_idat(61)), R_16_sva_2, fsm_output(1));
        R_15_sva <= MUX_s_1_2_2((input_rsci_idat(3)), R_15_sva_2, fsm_output(1));
        R_8_sva <= MUX_s_1_2_2((input_rsci_idat(59)), R_8_sva_2, fsm_output(1));
        R_23_sva <= MUX_s_1_2_2((input_rsci_idat(5)), R_23_sva_2, fsm_output(1));
        R_0_sva <= MUX_s_1_2_2((input_rsci_idat(57)), R_0_sva_2, fsm_output(1));
        R_31_sva <= MUX_s_1_2_2((input_rsci_idat(7)), R_31_sva_2, fsm_output(1));
        R_25_sva <= MUX_s_1_2_2((input_rsci_idat(55)), R_25_sva_2, fsm_output(1));
        R_6_sva <= MUX_s_1_2_2((input_rsci_idat(9)), R_6_sva_2, fsm_output(1));
        R_17_sva <= MUX_s_1_2_2((input_rsci_idat(53)), R_17_sva_2, fsm_output(1));
        R_14_sva <= MUX_s_1_2_2((input_rsci_idat(11)), R_14_sva_2, fsm_output(1));
        R_9_sva <= MUX_s_1_2_2((input_rsci_idat(51)), R_9_sva_2, fsm_output(1));
        R_22_sva <= MUX_s_1_2_2((input_rsci_idat(13)), R_22_sva_2, fsm_output(1));
        R_1_sva <= MUX_s_1_2_2((input_rsci_idat(49)), R_1_sva_2, fsm_output(1));
        R_30_sva <= MUX_s_1_2_2((input_rsci_idat(15)), R_30_sva_2, fsm_output(1));
        R_26_sva <= MUX_s_1_2_2((input_rsci_idat(47)), R_26_sva_2, fsm_output(1));
        R_5_sva <= MUX_s_1_2_2((input_rsci_idat(17)), R_5_sva_2, fsm_output(1));
        R_18_sva <= MUX_s_1_2_2((input_rsci_idat(45)), R_18_sva_2, fsm_output(1));
        R_13_sva <= MUX_s_1_2_2((input_rsci_idat(19)), R_13_sva_2, fsm_output(1));
        R_10_sva <= MUX_s_1_2_2((input_rsci_idat(43)), R_10_sva_2, fsm_output(1));
        R_21_sva <= MUX_s_1_2_2((input_rsci_idat(21)), R_21_sva_2, fsm_output(1));
        R_2_sva <= MUX_s_1_2_2((input_rsci_idat(41)), R_2_sva_2, fsm_output(1));
        R_29_sva <= MUX_s_1_2_2((input_rsci_idat(23)), R_29_sva_2, fsm_output(1));
        R_27_sva <= MUX_s_1_2_2((input_rsci_idat(39)), R_27_sva_2, fsm_output(1));
        R_4_sva <= MUX_s_1_2_2((input_rsci_idat(25)), R_4_sva_2, fsm_output(1));
        R_19_sva <= MUX_s_1_2_2((input_rsci_idat(37)), R_19_sva_2, fsm_output(1));
        R_12_sva <= MUX_s_1_2_2((input_rsci_idat(27)), R_12_sva_2, fsm_output(1));
        R_11_sva <= MUX_s_1_2_2((input_rsci_idat(35)), R_11_sva_2, fsm_output(1));
        R_20_sva <= MUX_s_1_2_2((input_rsci_idat(29)), R_20_sva_2, fsm_output(1));
        R_3_sva <= MUX_s_1_2_2((input_rsci_idat(33)), R_3_sva_2, fsm_output(1));
        R_28_sva <= MUX_s_1_2_2((input_rsci_idat(31)), R_28_sva_2, fsm_output(1));
        i_3_4_0_sva_3_0 <= MUX_v_4_2_2(STD_LOGIC_VECTOR'("0000"), (i_3_4_0_sva_2(3
            DOWNTO 0)), (fsm_output(1)));
        L_31_sva <= MUX_s_1_2_2((input_rsci_idat(6)), R_31_sva, fsm_output(1));
        L_0_sva <= MUX_s_1_2_2((input_rsci_idat(56)), R_0_sva, fsm_output(1));
        L_30_sva <= MUX_s_1_2_2((input_rsci_idat(14)), R_30_sva, fsm_output(1));
        L_1_sva <= MUX_s_1_2_2((input_rsci_idat(48)), R_1_sva, fsm_output(1));
        L_29_sva <= MUX_s_1_2_2((input_rsci_idat(22)), R_29_sva, fsm_output(1));
        L_2_sva <= MUX_s_1_2_2((input_rsci_idat(40)), R_2_sva, fsm_output(1));
        L_28_sva <= MUX_s_1_2_2((input_rsci_idat(30)), R_28_sva, fsm_output(1));
        L_3_sva <= MUX_s_1_2_2((input_rsci_idat(32)), R_3_sva, fsm_output(1));
        L_27_sva <= MUX_s_1_2_2((input_rsci_idat(38)), R_27_sva, fsm_output(1));
        L_4_sva <= MUX_s_1_2_2((input_rsci_idat(24)), R_4_sva, fsm_output(1));
        L_26_sva <= MUX_s_1_2_2((input_rsci_idat(46)), R_26_sva, fsm_output(1));
        L_5_sva <= MUX_s_1_2_2((input_rsci_idat(16)), R_5_sva, fsm_output(1));
        L_25_sva <= MUX_s_1_2_2((input_rsci_idat(54)), R_25_sva, fsm_output(1));
        L_6_sva <= MUX_s_1_2_2((input_rsci_idat(8)), R_6_sva, fsm_output(1));
        L_24_sva <= MUX_s_1_2_2((input_rsci_idat(62)), R_24_sva, fsm_output(1));
        L_7_sva <= MUX_s_1_2_2((input_rsci_idat(0)), R_7_sva, fsm_output(1));
        L_23_sva <= MUX_s_1_2_2((input_rsci_idat(4)), R_23_sva, fsm_output(1));
        L_8_sva <= MUX_s_1_2_2((input_rsci_idat(58)), R_8_sva, fsm_output(1));
        L_22_sva <= MUX_s_1_2_2((input_rsci_idat(12)), R_22_sva, fsm_output(1));
        L_9_sva <= MUX_s_1_2_2((input_rsci_idat(50)), R_9_sva, fsm_output(1));
        L_21_sva <= MUX_s_1_2_2((input_rsci_idat(20)), R_21_sva, fsm_output(1));
        L_10_sva <= MUX_s_1_2_2((input_rsci_idat(42)), R_10_sva, fsm_output(1));
        L_20_sva <= MUX_s_1_2_2((input_rsci_idat(28)), R_20_sva, fsm_output(1));
        L_11_sva <= MUX_s_1_2_2((input_rsci_idat(34)), R_11_sva, fsm_output(1));
        L_19_sva <= MUX_s_1_2_2((input_rsci_idat(36)), R_19_sva, fsm_output(1));
        L_12_sva <= MUX_s_1_2_2((input_rsci_idat(26)), R_12_sva, fsm_output(1));
        L_18_sva <= MUX_s_1_2_2((input_rsci_idat(44)), R_18_sva, fsm_output(1));
        L_13_sva <= MUX_s_1_2_2((input_rsci_idat(18)), R_13_sva, fsm_output(1));
        L_17_sva <= MUX_s_1_2_2((input_rsci_idat(52)), R_17_sva, fsm_output(1));
        L_14_sva <= MUX_s_1_2_2((input_rsci_idat(10)), R_14_sva, fsm_output(1));
        L_16_sva <= MUX_s_1_2_2((input_rsci_idat(60)), R_16_sva, fsm_output(1));
        L_15_sva <= MUX_s_1_2_2((input_rsci_idat(2)), R_15_sva, fsm_output(1));
        D_1_26_sva <= MUX_s_1_2_2((key_rsci_idat(9)), D_1_26_sva_mx1, fsm_output(1));
        D_1_27_sva <= MUX_s_1_2_2((key_rsci_idat(1)), D_1_27_sva_mx1, fsm_output(1));
        D_1_0_sva <= MUX_s_1_2_2((key_rsci_idat(60)), D_1_0_sva_mx1, fsm_output(1));
        D_1_1_sva <= MUX_s_1_2_2((key_rsci_idat(52)), D_1_1_sva_mx1, fsm_output(1));
        D_1_2_sva <= MUX_s_1_2_2((key_rsci_idat(44)), D_mux_9_nl, fsm_output(1));
        D_1_3_sva <= MUX_s_1_2_2((key_rsci_idat(36)), D_1_3_sva_mx1, fsm_output(1));
        D_1_4_sva <= MUX_s_1_2_2((key_rsci_idat(59)), D_1_4_sva_mx1, fsm_output(1));
        D_1_5_sva <= MUX_s_1_2_2((key_rsci_idat(51)), D_1_5_sva_mx1, fsm_output(1));
        D_1_6_sva <= MUX_s_1_2_2((key_rsci_idat(43)), D_1_6_sva_mx1, fsm_output(1));
        D_1_7_sva <= MUX_s_1_2_2((key_rsci_idat(35)), D_1_7_sva_mx1, fsm_output(1));
        D_1_8_sva <= MUX_s_1_2_2((key_rsci_idat(27)), D_1_8_sva_mx1, fsm_output(1));
        D_1_9_sva <= MUX_s_1_2_2((key_rsci_idat(19)), D_1_9_sva_mx1, fsm_output(1));
        D_1_10_sva <= MUX_s_1_2_2((key_rsci_idat(11)), D_1_10_sva_mx1, fsm_output(1));
        D_1_11_sva <= MUX_s_1_2_2((key_rsci_idat(3)), D_1_11_sva_mx1, fsm_output(1));
        D_1_12_sva <= MUX_s_1_2_2((key_rsci_idat(58)), D_1_12_sva_mx1, fsm_output(1));
        D_1_13_sva <= MUX_s_1_2_2((key_rsci_idat(50)), D_mux_31_nl, fsm_output(1));
        D_1_14_sva <= MUX_s_1_2_2((key_rsci_idat(42)), D_1_14_sva_mx1, fsm_output(1));
        D_1_15_sva <= MUX_s_1_2_2((key_rsci_idat(34)), D_1_15_sva_mx1, fsm_output(1));
        D_1_16_sva <= MUX_s_1_2_2((key_rsci_idat(26)), D_1_16_sva_mx1, fsm_output(1));
        D_1_17_sva <= MUX_s_1_2_2((key_rsci_idat(18)), D_1_17_sva_mx1, fsm_output(1));
        D_1_18_sva <= MUX_s_1_2_2((key_rsci_idat(10)), D_mux_41_nl, fsm_output(1));
        D_1_19_sva <= MUX_s_1_2_2((key_rsci_idat(2)), D_1_19_sva_mx1, fsm_output(1));
        D_1_20_sva <= MUX_s_1_2_2((key_rsci_idat(57)), D_1_20_sva_mx1, fsm_output(1));
        D_1_21_sva <= MUX_s_1_2_2((key_rsci_idat(49)), D_mux_47_nl, fsm_output(1));
        D_1_22_sva <= MUX_s_1_2_2((key_rsci_idat(41)), D_1_22_sva_mx1, fsm_output(1));
        D_1_23_sva <= MUX_s_1_2_2((key_rsci_idat(33)), D_1_23_sva_mx1, fsm_output(1));
        D_1_24_sva <= MUX_s_1_2_2((key_rsci_idat(25)), D_1_24_sva_mx1, fsm_output(1));
        D_1_25_sva <= MUX_s_1_2_2((key_rsci_idat(17)), D_1_25_sva_mx1, fsm_output(1));
        C_1_26_sva <= MUX_s_1_2_2((key_rsci_idat(15)), C_1_26_sva_mx1, fsm_output(1));
        C_1_27_sva <= MUX_s_1_2_2((key_rsci_idat(7)), C_1_27_sva_mx1, fsm_output(1));
        C_1_0_sva <= MUX_s_1_2_2((key_rsci_idat(28)), C_1_0_sva_mx1, fsm_output(1));
        C_1_1_sva <= MUX_s_1_2_2((key_rsci_idat(20)), C_1_1_sva_mx1, fsm_output(1));
        C_1_2_sva <= MUX_s_1_2_2((key_rsci_idat(12)), C_1_2_sva_mx1, fsm_output(1));
        C_1_3_sva <= MUX_s_1_2_2((key_rsci_idat(4)), C_mux_11_nl, fsm_output(1));
        C_1_4_sva <= MUX_s_1_2_2((key_rsci_idat(61)), C_1_4_sva_mx1, fsm_output(1));
        C_1_5_sva <= MUX_s_1_2_2((key_rsci_idat(53)), C_1_5_sva_mx1, fsm_output(1));
        C_1_6_sva <= MUX_s_1_2_2((key_rsci_idat(45)), C_mux_17_nl, fsm_output(1));
        C_1_7_sva <= MUX_s_1_2_2((key_rsci_idat(37)), C_1_7_sva_mx1, fsm_output(1));
        C_1_8_sva <= MUX_s_1_2_2((key_rsci_idat(29)), C_1_8_sva_mx1, fsm_output(1));
        C_1_9_sva <= MUX_s_1_2_2((key_rsci_idat(21)), C_1_9_sva_mx1, fsm_output(1));
        C_1_10_sva <= MUX_s_1_2_2((key_rsci_idat(13)), C_mux_25_nl, fsm_output(1));
        C_1_11_sva <= MUX_s_1_2_2((key_rsci_idat(5)), C_1_11_sva_mx1, fsm_output(1));
        C_1_12_sva <= MUX_s_1_2_2((key_rsci_idat(62)), C_1_12_sva_mx1, fsm_output(1));
        C_1_13_sva <= MUX_s_1_2_2((key_rsci_idat(54)), C_1_13_sva_mx1, fsm_output(1));
        C_1_14_sva <= MUX_s_1_2_2((key_rsci_idat(46)), C_1_14_sva_mx1, fsm_output(1));
        C_1_15_sva <= MUX_s_1_2_2((key_rsci_idat(38)), C_1_15_sva_mx1, fsm_output(1));
        C_1_16_sva <= MUX_s_1_2_2((key_rsci_idat(30)), C_1_16_sva_mx1, fsm_output(1));
        C_1_17_sva <= MUX_s_1_2_2((key_rsci_idat(22)), C_1_17_sva_mx1, fsm_output(1));
        C_1_18_sva <= MUX_s_1_2_2((key_rsci_idat(14)), C_1_18_sva_mx1, fsm_output(1));
        C_1_19_sva <= MUX_s_1_2_2((key_rsci_idat(6)), C_mux_43_nl, fsm_output(1));
        C_1_20_sva <= MUX_s_1_2_2((key_rsci_idat(63)), C_1_20_sva_mx1, fsm_output(1));
        C_1_21_sva <= MUX_s_1_2_2((key_rsci_idat(55)), C_1_21_sva_mx1, fsm_output(1));
        C_1_22_sva <= MUX_s_1_2_2((key_rsci_idat(47)), C_1_22_sva_mx1, fsm_output(1));
        C_1_23_sva <= MUX_s_1_2_2((key_rsci_idat(39)), C_1_23_sva_mx1, fsm_output(1));
        C_1_24_sva <= MUX_s_1_2_2((key_rsci_idat(31)), C_1_24_sva_mx1, fsm_output(1));
        C_1_25_sva <= MUX_s_1_2_2((key_rsci_idat(23)), C_1_25_sva_mx1, fsm_output(1));
        reg_return_rsc_triosy_obj_ld_cse <= (i_3_4_0_sva_2(4)) AND (fsm_output(1));
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_0 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_0 <= R_7_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_1 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_1 <= R_7_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_2 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_2 <= R_15_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_3 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_3 <= R_15_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_4 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_4 <= R_23_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_5 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_5 <= R_23_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_6 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_6 <= R_31_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_7 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_7 <= R_31_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_8 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_8 <= R_6_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_9 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_9 <= R_6_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_10 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_10 <= R_14_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_11 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_11 <= R_14_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_12 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_12 <= R_22_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_13 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_13 <= R_22_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_14 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_14 <= R_30_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_15 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_15 <= R_30_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_16 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_16 <= R_5_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_17 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_17 <= R_5_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_18 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_18 <= R_13_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_19 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_19 <= R_13_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_20 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_20 <= R_21_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_21 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_21 <= R_21_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_22 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_22 <= R_29_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_23 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_23 <= R_29_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_24 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_24 <= R_4_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_25 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_25 <= R_4_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_26 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_26 <= R_12_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_27 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_27 <= R_12_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_28 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_28 <= R_20_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_29 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_29 <= R_20_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_30 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_30 <= R_28_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_31 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_31 <= R_28_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_32 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_32 <= R_3_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_33 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_33 <= R_3_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_34 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_34 <= R_11_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_35 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_35 <= R_11_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_36 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_36 <= R_19_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_37 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_37 <= R_19_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_38 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_38 <= R_27_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_39 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_39 <= R_27_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_40 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_40 <= R_2_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_41 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_41 <= R_2_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_42 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_42 <= R_10_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_43 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_43 <= R_10_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_44 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_44 <= R_18_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_45 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_45 <= R_18_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_46 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_46 <= R_26_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_47 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_47 <= R_26_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_48 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_48 <= R_1_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_49 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_49 <= R_1_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_50 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_50 <= R_9_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_51 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_51 <= R_9_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_52 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_52 <= R_17_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_53 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_53 <= R_17_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_54 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_54 <= R_25_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_55 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_55 <= R_25_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_56 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_56 <= R_0_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_57 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_57 <= R_0_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_58 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_58 <= R_8_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_59 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_59 <= R_8_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_60 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_60 <= R_16_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_61 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_61 <= R_16_sva;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_62 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_62 <= R_24_sva_2;
      END IF;
    END IF;
  END PROCESS;
  PROCESS (clk)
  BEGIN
    IF clk'EVENT AND ( clk = '1' ) THEN
      IF (rst = '1') THEN
        return_rsci_idat_63 <= '0';
      ELSIF ( or_tmp_121 = '0' ) THEN
        return_rsci_idat_63 <= R_24_sva;
      END IF;
    END IF;
  END PROCESS;
  D_mux_9_nl <= MUX_s_1_2_2(D_1_1_sva, D_1_0_sva, not_tmp_1);
  D_mux_31_nl <= MUX_s_1_2_2(D_1_12_sva, D_1_11_sva, not_tmp_1);
  D_mux_41_nl <= MUX_s_1_2_2(D_1_17_sva, D_1_16_sva, not_tmp_1);
  D_mux_47_nl <= MUX_s_1_2_2(D_1_20_sva, D_1_19_sva, not_tmp_1);
  C_mux_11_nl <= MUX_s_1_2_2(C_1_2_sva, C_1_1_sva, not_tmp_1);
  C_mux_17_nl <= MUX_s_1_2_2(C_1_5_sva, C_1_4_sva, not_tmp_1);
  C_mux_25_nl <= MUX_s_1_2_2(C_1_9_sva, C_1_8_sva, not_tmp_1);
  C_mux_43_nl <= MUX_s_1_2_2(C_1_18_sva, C_1_17_sva, not_tmp_1);
END v2;

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

ARCHITECTURE v2 OF des_check IS
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

END v2;



