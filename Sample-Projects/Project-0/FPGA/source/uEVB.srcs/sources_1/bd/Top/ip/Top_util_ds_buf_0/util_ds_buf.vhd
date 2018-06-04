-------------------------------------------------------------------------------
-- util_ds_buf.vhd - Entity and architecture
-------------------------------------------------------------------------------
--
--  ***************************************************************************
--  **  Copyright(C) 2007 by Xilinx, Inc. All rights reserved.               **
--  **                                                                       **
--  **  This text contains proprietary, confidential                         **
--  **  information of Xilinx, Inc. , is distributed by                      **
--  **  under license from Xilinx, Inc., and may be used,                    **
--  **  copied and/or disclosed only pursuant to the terms                   **
--  **  of a valid license agreement with Xilinx, Inc.                       **
--  **                                                                       **
--  **  Unmodified source code is guaranteed to place and route,             **
--  **  function and run at speed according to the datasheet                 **
--  **  specification. Source code is provided "as-is", with no              **
--  **  obligation on the part of Xilinx to provide support.                 **
--  **                                                                       **
--  **  Xilinx Hotline support of source code IP shall only include          **
--  **  standard level Xilinx Hotline support, and will only address         **
--  **  issues and questions related to the standard released Netlist        **
--  **  version of the core (and thus indirectly, the original core source). **
--  **                                                                       **
--  **  The Xilinx Support Hotline does not have access to source            **
--  **  code and therefore cannot answer specific questions related          **
--  **  to source HDL. The Xilinx Support Hotline will only be able          **
--  **  to confirm the problem in the Netlist version of the core.           **
--  **                                                                       **
--  **  This copyright and support notice must be retained as part           **
--  **  of this text at all times.                                           **
--  ***************************************************************************
--
-------------------------------------------------------------------------------
-- Filename:        util_ds_buf.vhd
--
-- Description:     
--                  
-- VHDL-Standard:   VHDL'93
-------------------------------------------------------------------------------
-- Structure:   
--              util_ds_buf.vhd
--
--
-------------------------------------------------------------------------------
-- Naming Conventions:
--      active low signals:                     "*_n"
--      clock signals:                          "clk", "clk_div#", "clk_#x" 
--      reset signals:                          "rst", "rst_n" 
--      generics:                               "C_*" 
--      user defined types:                     "*_TYPE" 
--      state machine next state:               "*_ns" 
--      state machine current state:            "*_cs" 
--      combinatorial signals:                  "*_com" 
--      pipelined or register delay signals:    "*_d#" 
--      counter signals:                        "*cnt*"
--      clock enable signals:                   "*_ce" 
--      internal version of output port         "*_i"
--      device pins:                            "*_pin" 
--      ports:                                  - Names begin with Uppercase 
--      processes:                              "*_PROCESS" 
--      component instantiations:               "<ENTITY_>I_<#|FUNC>
-------------------------------------------------------------------------------

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

library UNISIM;
use UNISIM.VComponents.all;

entity util_ds_buf is
   generic (
         C_BUF_TYPE  : string  := "IBUFDS";
         C_SIZE      : integer := 1
      );
   port (
    -- ports for differential signaling input buffer
           IBUF_DS_P       : in    std_logic_vector(C_SIZE-1 downto 0);
           IBUF_DS_N       : in    std_logic_vector(C_SIZE-1 downto 0);
           IBUF_OUT        : out   std_logic_vector(C_SIZE-1 downto 0);
           IBUF_DS_ODIV2   : out   std_logic_vector(C_SIZE-1 downto 0);

    -- ports for differential signaling output buffer
           OBUF_IN         : in    std_logic_vector(C_SIZE-1 downto 0);
           OBUF_DS_P       : out   std_logic_vector(C_SIZE-1 downto 0);
           OBUF_DS_N       : out   std_logic_vector(C_SIZE-1 downto 0);

    -- ports for tri-state differential signaling io buffer
           IOBUF_DS_P      : inout std_logic_vector(C_SIZE-1 downto 0);
           IOBUF_DS_N      : inout std_logic_vector(C_SIZE-1 downto 0);
           IOBUF_IO_T      : in    std_logic_vector(C_SIZE-1 downto 0);
           IOBUF_IO_I      : in    std_logic_vector(C_SIZE-1 downto 0);
           IOBUF_IO_O      : out   std_logic_vector(C_SIZE-1 downto 0);

    -- ports specific to io buffer inout 
           IOBUF_IO_IO      : inout   std_logic_vector(C_SIZE-1 downto 0);

    -- ports for BUFG
           BUFG_I          : in    std_logic_vector(C_SIZE-1 downto 0);
           BUFG_O          : out   std_logic_vector(C_SIZE-1 downto 0);

    -- ports for BUFGCE
           BUFGCE_I        : in    std_logic_vector(C_SIZE-1 downto 0);
           BUFGCE_CE       : in    std_logic_vector(C_SIZE-1 downto 0);
           BUFGCE_O        : out   std_logic_vector(C_SIZE-1 downto 0);

    -- ports for BUFH
           BUFH_I          : in    std_logic_vector(C_SIZE-1 downto 0);
           BUFH_O          : out   std_logic_vector(C_SIZE-1 downto 0);

    -- ports for BUFHCE
           BUFHCE_I        : in    std_logic_vector(C_SIZE-1 downto 0);
           BUFHCE_CE       : in    std_logic_vector(C_SIZE-1 downto 0);
           BUFHCE_O        : out   std_logic_vector(C_SIZE-1 downto 0);

    -- ports for BUFG_GT
           BUFG_GT_I       : in    std_logic_vector(C_SIZE-1 downto 0);
           BUFG_GT_CE      : in    std_logic_vector(C_SIZE-1 downto 0);
           BUFG_GT_CEMASK  : in    std_logic_vector(C_SIZE-1 downto 0);
           BUFG_GT_CLR     : in    std_logic_vector(C_SIZE-1 downto 0);
           BUFG_GT_CLRMASK : in    std_logic_vector(C_SIZE-1 downto 0);
           BUFG_GT_DIV     : in    std_logic_vector((3 * C_SIZE) - 1 downto 0);
           BUFG_GT_O       : out   std_logic_vector(C_SIZE-1 downto 0)

     );
end util_ds_buf;

architecture IMP of util_ds_buf is

  -- function to return lower case character
   function LowerCase_Char(char : character) return character is
   begin
    -- If char is not an upper case letter then return char
      if char < 'A' or char > 'Z' then
         return char;
      end if;
    -- Otherwise map char to its corresponding lower case character and
    -- return that
      case char is
         when 'A'    => return 'a'; when 'B' => return 'b'; when 'C' => return 'c'; when 'D' => return 'd';
         when 'E'    => return 'e'; when 'F' => return 'f'; when 'G' => return 'g'; when 'H' => return 'h';
         when 'I'    => return 'i'; when 'J' => return 'j'; when 'K' => return 'k'; when 'L' => return 'l';
         when 'M'    => return 'm'; when 'N' => return 'n'; when 'O' => return 'o'; when 'P' => return 'p';
         when 'Q'    => return 'q'; when 'R' => return 'r'; when 'S' => return 's'; when 'T' => return 't';
         when 'U'    => return 'u'; when 'V' => return 'v'; when 'W' => return 'w'; when 'X' => return 'x';
         when 'Y'    => return 'y'; when 'Z' => return 'z';
         when others => return char;
      end case;
   end LowerCase_Char;

  -- function to return lower case string
   function LowerCase_String (s : string) return string is
      variable res : string(s'range);
   begin
      for I in s'range loop
         res(I) := LowerCase_Char(s(I));
      end loop;
      return res;
   end function LowerCase_String;

   constant BUFFER_TYPE : string := LowerCase_String(C_BUF_TYPE);

begin

  -- instantiate IBUFDS_GTE2
   USE_IBUFDS_GTE2 : if (BUFFER_TYPE = "ibufdsgte2") generate
      signal IBUF_OUT_P : std_logic_vector(C_SIZE-1 downto 0);
      signal IBUF_OUT_N : std_logic_vector(C_SIZE-1 downto 0);
   begin
      GEN_IBUFDS_GTE2 : for i in 0 to C_SIZE-1 generate

         IBUF_P_I : IBUF
         port map (O => IBUF_OUT_P(i), I => IBUF_DS_P(i));
         IBUF_N_I : IBUF
         port map (O => IBUF_OUT_N(i), I => IBUF_DS_N(i));
         IBUFDS_GTE2_I : IBUFDS_GTE2
         port map (O => IBUF_OUT(i), ODIV2 => IBUF_DS_ODIV2(i), I => IBUF_OUT_P(i), IB => IBUF_OUT_N(i), CEB => '0');

      end generate GEN_IBUFDS_GTE2;

     -- tie-off other non-used outputs
      OBUF_DS_P  <= (others => '0');
      OBUF_DS_N  <= (others => '0');
      IOBUF_IO_O <= (others => '0');
      IOBUF_DS_P <= (others => '0');
      IOBUF_DS_N <= (others => '0');

   end generate USE_IBUFDS_GTE2;

  -- instantiate IBUFDS_GTE3
   USE_IBUFDS_GTE3 : if (BUFFER_TYPE = "ibufdsgte3") generate

      GEN_IBUFDS_GTE3 : for i in 0 to C_SIZE-1 generate

         IBUFDS_GTE3_I : IBUFDS_GTE3
         port map (O => IBUF_OUT(i), ODIV2 => IBUF_DS_ODIV2(i), I => IBUF_DS_P(i), IB => IBUF_DS_N(i), CEB => '0');

      end generate GEN_IBUFDS_GTE3;

     -- tie-off other non-used outputs
      OBUF_DS_P  <= (others => '0');
      OBUF_DS_N  <= (others => '0');
      IOBUF_IO_O <= (others => '0');
      IOBUF_DS_P <= (others => '0');
      IOBUF_DS_N <= (others => '0');

   end generate USE_IBUFDS_GTE3;

  -- instantiate IBUFDS_GTE4
   USE_IBUFDS_GTE4 : if (BUFFER_TYPE = "ibufdsgte4") generate

      GEN_IBUFDS_GTE4 : for i in 0 to C_SIZE-1 generate

         IBUFDS_GTE4_I : IBUFDS_GTE4
         port map (O => IBUF_OUT(i), ODIV2 => IBUF_DS_ODIV2(i), I => IBUF_DS_P(i), IB => IBUF_DS_N(i), CEB => '0');

      end generate GEN_IBUFDS_GTE4;

     -- tie-off other non-used outputs
      OBUF_DS_P  <= (others => '0');
      OBUF_DS_N  <= (others => '0');
      IOBUF_IO_O <= (others => '0');
      IOBUF_DS_P <= (others => '0');
      IOBUF_DS_N <= (others => '0');

   end generate USE_IBUFDS_GTE4;


  -- instantiate IBUFDS
   USE_IBUFDS : if (BUFFER_TYPE = "ibufds") generate

      GEN_IBUFDS : for i in 0 to C_SIZE-1 generate

         IBUFDS_I : IBUFDS
         port map (O => IBUF_OUT(i), I => IBUF_DS_P(i), IB => IBUF_DS_N(i));

      end generate GEN_IBUFDS;

    -- tie-off other non-used outputs
      IBUF_DS_ODIV2  <= (others => '0');
      OBUF_DS_P      <= (others => '0');
      OBUF_DS_N      <= (others => '0');
      IOBUF_IO_O     <= (others => '0');
      IOBUF_DS_P     <= (others => '0');
      IOBUF_DS_N     <= (others => '0');

   end generate USE_IBUFDS;

  -- instantiate OBUFDS
   USE_OBUFDS : if (BUFFER_TYPE = "obufds") generate

      GEN_OBUFDS : for i in 0 to C_SIZE-1 generate

         OBUFDS_I : OBUFDS
         port map (O => OBUF_DS_P(i), OB => OBUF_DS_N(i), I => OBUF_IN(i));

      end generate GEN_OBUFDS;

    -- tie-off other non-used outputs
      IBUF_OUT       <= (others => '0');
      IBUF_DS_ODIV2  <= (others => '0');
      IOBUF_IO_O     <= (others => '0');
      IOBUF_DS_P     <= (others => '0');
      IOBUF_DS_N     <= (others => '0');

   end generate USE_OBUFDS;

  -- instantiate IOBUFDS
   USE_IOBUFDS : if (BUFFER_TYPE = "iobufds") generate

      GEN_IOBUFDS : for i in 0 to C_SIZE-1 generate

         IOBUFDS_I : IOBUFDS
         port map (
                O   => IOBUF_IO_O(i),
                IO  => IOBUF_DS_P(i),
                IOB => IOBUF_DS_N(i),
                I   => IOBUF_IO_I(i),
                T   => IOBUF_IO_T(i)
             );

      end generate GEN_IOBUFDS;

    -- tie-off other non-used outputs
      IBUF_OUT       <= (others => '0');
      IBUF_DS_ODIV2  <= (others => '0');
      OBUF_DS_P      <= (others => '0');
      OBUF_DS_N      <= (others => '0');

   end generate USE_IOBUFDS;


  -- instantiate BUFG
   USE_BUFG : if (BUFFER_TYPE = "bufg") generate

      GEN_BUFG : for i in 0 to C_SIZE-1 generate

         BUFG_U : BUFG
         port map (
                O   => BUFG_O(i),
                I   => BUFG_I(i)
             );

      end generate GEN_BUFG;

   end generate USE_BUFG;

  -- instantiate BUFGCE
   USE_BUFGCE : if (BUFFER_TYPE = "bufgce") generate

      GEN_BUFGCE : for i in 0 to C_SIZE-1 generate

         BUFGCE_U : BUFGCE
         port map (
                O   => BUFGCE_O(i),
                I   => BUFGCE_I(i),
                CE   => BUFGCE_CE(i)
             );

      end generate GEN_BUFGCE;

   end generate USE_BUFGCE;

  -- instantiate BUFH
   USE_BUFH : if (BUFFER_TYPE = "bufh") generate

      GEN_BUFH : for i in 0 to C_SIZE-1 generate

         BUFH_U : BUFH
         port map (
                O   => BUFH_O(i),
                I   => BUFH_I(i)
             );

      end generate GEN_BUFH;

   end generate USE_BUFH;

  -- instantiate BUFHCE
   USE_BUFHCE : if (BUFFER_TYPE = "bufhce") generate

      GEN_BUFHCE : for i in 0 to C_SIZE-1 generate

         BUFHCE_U : BUFHCE
         port map (
                O   => BUFHCE_O(i),
                I   => BUFHCE_I(i),
                CE   => BUFHCE_CE(i)
             );

      end generate GEN_BUFHCE;

   end generate USE_BUFHCE;

  -- instantiate BUFG
   USE_BUFG_GT : if (BUFFER_TYPE = "bufg_gt") generate

      GEN_BUFG_GT : for i in 0 to C_SIZE-1 generate

         BUFG_GT_U : BUFG_GT
         port map (
                O          => BUFG_GT_O(i),
                CE         => BUFG_GT_CE(i),
                CEMASK     => BUFG_GT_CEMASK(i),
                CLR        => BUFG_GT_CLR(i),
                CLRMASK    => BUFG_GT_CLRMASK(i),
                DIV        => BUFG_GT_DIV((3*i)+2 downto 3*i),
                I          => BUFG_GT_I(i)
             );

      end generate GEN_BUFG_GT;

   end generate USE_BUFG_GT;
end IMP;

