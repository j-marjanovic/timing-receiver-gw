-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version : 2.7
--  \   \         Application : 7 Series FPGAs Transceivers Wizard
--  /   /         Filename : gtp_wrap_rtx.vhd
-- /___/   /\
-- \   \  /  \
--  \___\/\___\
--
--
-- Module gtp_wrap_rtx (a GT Wrapper)
-- Generated by Xilinx 7 Series FPGAs Transceivers Wizard
--
--
-- (c) Copyright 2010-2012 Xilinx, Inc. All rights reserved.
--
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
--
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;


--***************************** Entity Declaration ****************************

entity gtp_wrap_rtx is
generic
(
    -- Simulation attributes
    WRAPPER_SIM_GTRESET_SPEEDUP    : string   := "FALSE" -- Set to "true" to speed up sim reset
);
port
(
    --_________________________________________________________________________
    --_________________________________________________________________________
    --GT0  (X0Y0)
    --____________________________CHANNEL PORTS________________________________
    GT0_DRP_BUSY_OUT                        : out  std_logic;
    ---------------------------- Channel - DRP Ports  --------------------------
    GT0_DRPADDR_IN                          : in   std_logic_vector(8 downto 0);
    GT0_DRPCLK_IN                           : in   std_logic;
    GT0_DRPDI_IN                            : in   std_logic_vector(15 downto 0);
    GT0_DRPDO_OUT                           : out  std_logic_vector(15 downto 0);
    GT0_DRPEN_IN                            : in   std_logic;
    GT0_DRPRDY_OUT                          : out  std_logic;
    GT0_DRPWE_IN                            : in   std_logic;
    --------------------- RX Initialization and Reset Ports --------------------
    GT0_RXUSERRDY_IN                        : in   std_logic;
    -------------------------- RX Margin Analysis Ports ------------------------
    GT0_EYESCANDATAERROR_OUT                : out  std_logic;
    ------------------------- Receive Ports - CDR Ports ------------------------
    GT0_RXCDRLOCK_OUT                       : out  std_logic;
    ------------------ Receive Ports - FPGA RX Interface Ports -----------------
    GT0_RXDATA_OUT                          : out  std_logic_vector(19 downto 0);
    GT0_RXUSRCLK_IN                         : in   std_logic;
    GT0_RXUSRCLK2_IN                        : in   std_logic;
    ------------------------ Receive Ports - RX AFE Ports ----------------------
    GT0_GTPRXN_IN                           : in   std_logic;
    GT0_GTPRXP_IN                           : in   std_logic;
    ------------------- Receive Ports - RX Buffer Bypass Ports -----------------
    GT0_RXDLYEN_IN                          : in   std_logic;
    GT0_RXDLYSRESET_IN                      : in   std_logic;
    GT0_RXDLYSRESETDONE_OUT                 : out  std_logic;
    GT0_RXPHALIGN_IN                        : in   std_logic;
    GT0_RXPHALIGNDONE_OUT                   : out  std_logic;
    GT0_RXPHALIGNEN_IN                      : in   std_logic;
    GT0_RXPHDLYRESET_IN                     : in   std_logic;
    GT0_RXPHMONITOR_OUT                     : out  std_logic_vector(4 downto 0);
    GT0_RXPHSLIPMONITOR_OUT                 : out  std_logic_vector(4 downto 0);
    GT0_RXSYNCALLIN_IN                      : in   std_logic;
    GT0_RXSYNCDONE_OUT                      : out  std_logic;
    GT0_RXSYNCIN_IN                         : in   std_logic;
    GT0_RXSYNCMODE_IN                       : in   std_logic;
    GT0_RXSYNCOUT_OUT                       : out  std_logic;
    -------------- Receive Ports - RX Byte and Word Alignment Ports ------------
    GT0_RXSLIDE_IN                          : in std_logic;
    -------------------- Receive Ports - RX Equailizer Ports -------------------
    GT0_RXLPMHFHOLD_IN                      : in   std_logic;
    GT0_RXLPMLFHOLD_IN                      : in   std_logic;
    --------------- Receive Ports - RX Fabric Output Control Ports -------------
    GT0_RXOUTCLK_OUT                        : out  std_logic;
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
    GT0_GTRXRESET_IN                        : in   std_logic;
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
    GT0_RXRESETDONE_OUT                     : out  std_logic;
    --------------------- TX Initialization and Reset Ports --------------------
    GT0_GTTXRESET_IN                        : in   std_logic;
    GT0_TXUSERRDY_IN                        : in   std_logic;
    ------------------ Transmit Ports - FPGA TX Interface Ports ----------------
    GT0_TXDATA_IN                           : in   std_logic_vector(19 downto 0);
    GT0_TXUSRCLK_IN                         : in   std_logic;
    GT0_TXUSRCLK2_IN                        : in   std_logic;
    ------------------ Transmit Ports - TX Buffer Bypass Ports -----------------
    GT0_TXDLYEN_IN                          : in   std_logic;
    GT0_TXDLYSRESET_IN                      : in   std_logic;
    GT0_TXDLYSRESETDONE_OUT                 : out  std_logic;
    GT0_TXPHALIGN_IN                        : in   std_logic;
    GT0_TXPHALIGNDONE_OUT                   : out  std_logic;
    GT0_TXPHALIGNEN_IN                      : in   std_logic;
    GT0_TXPHDLYRESET_IN                     : in   std_logic;
    GT0_TXPHINIT_IN                         : in   std_logic;
    GT0_TXPHINITDONE_OUT                    : out  std_logic;
    ------------ Transmit Ports - TX Buffer and Phase Alignment Ports ----------
    GT0_TXSYNCALLIN_IN                      : in   std_logic;
    GT0_TXSYNCDONE_OUT                      : out  std_logic;
    GT0_TXSYNCIN_IN                         : in   std_logic;
    GT0_TXSYNCMODE_IN                       : in   std_logic;
    GT0_TXSYNCOUT_OUT                       : out  std_logic;
    --------------- Transmit Ports - TX Configurable Driver Ports --------------
    GT0_GTPTXN_OUT                          : out  std_logic;
    GT0_GTPTXP_OUT                          : out  std_logic;
    ----------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
    GT0_TXOUTCLK_OUT                        : out  std_logic;
    GT0_TXOUTCLKFABRIC_OUT                  : out  std_logic;
    GT0_TXOUTCLKPCS_OUT                     : out  std_logic;
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
    GT0_TXRESETDONE_OUT                     : out  std_logic;


    --____________________________COMMON PORTS________________________________
    ----------------- Common Block - GTPE2_COMMON Clocking Ports ---------------
    GT0_GTREFCLK0_IN                        : in   std_logic;
    -------------------------- Common Block - PLL Ports ------------------------
    GT0_PLL0LOCK_OUT                        : out  std_logic;
    GT0_PLL0LOCKDETCLK_IN                   : in   std_logic;
    GT0_PLL0REFCLKLOST_OUT                  : out  std_logic;
    GT0_PLL0RESET_IN                        : in   std_logic


);


end gtp_wrap_rtx;

architecture RTL of gtp_wrap_rtx is

    attribute CORE_GENERATION_INFO : string;
    attribute CORE_GENERATION_INFO of RTL : architecture is "gtp_wrap_rtx,gtwizard_v2_7,{protocol_file=Start_from_scratch}";


--***********************************Parameter Declarations********************

    constant DLY : time := 1 ns;

--***************************** Signal Declarations *****************************

    -- ground and tied_to_vcc_i signals
    signal  tied_to_ground_i                :   std_logic;
    signal  tied_to_ground_vec_i            :   std_logic_vector(63 downto 0);
    signal  tied_to_vcc_i                   :   std_logic;
    signal   gt0_pll0outclk_i       :   std_logic;
    signal   gt0_pll0outrefclk_i    :   std_logic;
    signal   gt0_pll1outclk_i       :   std_logic;
    signal   gt0_pll1outrefclk_i    :   std_logic;


    signal  gt0_mgtrefclktx_i           :   std_logic_vector(1 downto 0);
    signal  gt0_mgtrefclkrx_i           :   std_logic_vector(1 downto 0);


    signal   gt0_pll0clk_i       :   std_logic;
    signal   gt0_pll0refclk_i    :   std_logic;
    signal   gt0_pll1clk_i       :   std_logic;
    signal   gt0_pll1refclk_i    :   std_logic;
    signal    gt0_rst_i                       : std_logic;




--*************************** Component Declarations **************************
component gtp_wrap_rtx_GT
generic
(
    -- Simulation attributes
    GT_SIM_GTRESET_SPEEDUP    : string := "FALSE";
    TXSYNC_OVRD_IN            : bit    := '0';
    TXSYNC_MULTILANE_IN       : bit    := '0'
);
port
(
    RST_IN                                  : in   std_logic;
    DRP_BUSY_OUT                            : out  std_logic;

    ---------------------------- Channel - DRP Ports  --------------------------
    DRPADDR_IN                              : in   std_logic_vector(8 downto 0);
    DRPCLK_IN                               : in   std_logic;
    DRPDI_IN                                : in   std_logic_vector(15 downto 0);
    DRPDO_OUT                               : out  std_logic_vector(15 downto 0);
    DRPEN_IN                                : in   std_logic;
    DRPRDY_OUT                              : out  std_logic;
    DRPWE_IN                                : in   std_logic;
    ------------------------ GTPE2_CHANNEL Clocking Ports ----------------------
    PLL0CLK_IN                              : in   std_logic;
    PLL0REFCLK_IN                           : in   std_logic;
    PLL1CLK_IN                              : in   std_logic;
    PLL1REFCLK_IN                           : in   std_logic;
    --------------------- RX Initialization and Reset Ports --------------------
    RXUSERRDY_IN                            : in   std_logic;
    -------------------------- RX Margin Analysis Ports ------------------------
    EYESCANDATAERROR_OUT                    : out  std_logic;
    ------------------------- Receive Ports - CDR Ports ------------------------
    RXCDRLOCK_OUT                           : out  std_logic;
    ------------------ Receive Ports - FPGA RX Interface Ports -----------------
    RXDATA_OUT                              : out  std_logic_vector(19 downto 0);
    RXUSRCLK_IN                             : in   std_logic;
    RXUSRCLK2_IN                            : in   std_logic;
    ------------------------ Receive Ports - RX AFE Ports ----------------------
    GTPRXN_IN                               : in   std_logic;
    GTPRXP_IN                               : in   std_logic;
    ------------------- Receive Ports - RX Buffer Bypass Ports -----------------
    RXDLYEN_IN                              : in   std_logic;
    RXDLYSRESET_IN                          : in   std_logic;
    RXDLYSRESETDONE_OUT                     : out  std_logic;
    RXPHALIGN_IN                            : in   std_logic;
    RXPHALIGNDONE_OUT                       : out  std_logic;
    RXPHALIGNEN_IN                          : in   std_logic;
    RXPHDLYRESET_IN                         : in   std_logic;
    RXPHMONITOR_OUT                         : out  std_logic_vector(4 downto 0);
    RXPHSLIPMONITOR_OUT                     : out  std_logic_vector(4 downto 0);
    RXSYNCALLIN_IN                          : in   std_logic;
    RXSYNCDONE_OUT                          : out  std_logic;
    RXSYNCIN_IN                             : in   std_logic;
    RXSYNCMODE_IN                           : in   std_logic;
    RXSYNCOUT_OUT                           : out  std_logic;
    -------------- Receive Ports - RX Byte and Word Alignment Ports ------------
    RXSLIDE_IN                              : in std_logic;
    -------------------- Receive Ports - RX Equailizer Ports -------------------
    RXLPMHFHOLD_IN                          : in   std_logic;
    RXLPMLFHOLD_IN                          : in   std_logic;
    --------------- Receive Ports - RX Fabric Output Control Ports -------------
    RXOUTCLK_OUT                            : out  std_logic;
    ------------- Receive Ports - RX Initialization and Reset Ports ------------
    GTRXRESET_IN                            : in   std_logic;
    -------------- Receive Ports -RX Initialization and Reset Ports ------------
    RXRESETDONE_OUT                         : out  std_logic;
    --------------------- TX Initialization and Reset Ports --------------------
    GTTXRESET_IN                            : in   std_logic;
    TXUSERRDY_IN                            : in   std_logic;
    ------------------ Transmit Ports - FPGA TX Interface Ports ----------------
    TXDATA_IN                               : in   std_logic_vector(19 downto 0);
    TXUSRCLK_IN                             : in   std_logic;
    TXUSRCLK2_IN                            : in   std_logic;
    ------------------ Transmit Ports - TX Buffer Bypass Ports -----------------
    TXDLYEN_IN                              : in   std_logic;
    TXDLYSRESET_IN                          : in   std_logic;
    TXDLYSRESETDONE_OUT                     : out  std_logic;
    TXPHALIGN_IN                            : in   std_logic;
    TXPHALIGNDONE_OUT                       : out  std_logic;
    TXPHALIGNEN_IN                          : in   std_logic;
    TXPHDLYRESET_IN                         : in   std_logic;
    TXPHINIT_IN                             : in   std_logic;
    TXPHINITDONE_OUT                        : out  std_logic;
    ------------ Transmit Ports - TX Buffer and Phase Alignment Ports ----------
    TXSYNCALLIN_IN                          : in   std_logic;
    TXSYNCDONE_OUT                          : out  std_logic;
    TXSYNCIN_IN                             : in   std_logic;
    TXSYNCMODE_IN                           : in   std_logic;
    TXSYNCOUT_OUT                           : out  std_logic;
    --------------- Transmit Ports - TX Configurable Driver Ports --------------
    GTPTXN_OUT                              : out  std_logic;
    GTPTXP_OUT                              : out  std_logic;
    ----------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
    TXOUTCLK_OUT                            : out  std_logic;
    TXOUTCLKFABRIC_OUT                      : out  std_logic;
    TXOUTCLKPCS_OUT                         : out  std_logic;
    ------------- Transmit Ports - TX Initialization and Reset Ports -----------
    TXRESETDONE_OUT                         : out  std_logic


);
end component;


    constant PLL0_FBDIV_IN      :   integer := 5;
    constant PLL1_FBDIV_IN      :   integer := 5;
    constant PLL0_FBDIV_45_IN   :   integer := 4;
    constant PLL1_FBDIV_45_IN   :   integer := 4;
    constant PLL0_REFCLK_DIV_IN :   integer := 1;
    constant PLL1_REFCLK_DIV_IN :   integer := 1;

--********************************* Main Body of Code**************************

begin

    tied_to_ground_i                    <= '0';
    tied_to_ground_vec_i(63 downto 0)   <= (others => '0');
    tied_to_vcc_i                       <= '1';
    gt0_pll0clk_i    <= gt0_pll0outclk_i;
    gt0_pll0refclk_i <= gt0_pll0outrefclk_i;
    gt0_pll1clk_i    <= gt0_pll1outclk_i;
    gt0_pll1refclk_i <= gt0_pll1outrefclk_i;
    gt0_rst_i        <= GT0_PLL0RESET_IN;



    --------------------------- GT Instances  -------------------------------
    --_________________________________________________________________________
    --_________________________________________________________________________
    --GT0  (X0Y0)
    gt0_gtp_wrap_rtx_i : gtp_wrap_rtx_GT
    generic map
    (
        -- Simulation attributes
        GT_SIM_GTRESET_SPEEDUP => "FALSE",
        TXSYNC_OVRD_IN         => ('1'),
        TXSYNC_MULTILANE_IN    => ('0')
    )
    port map
    (
        RST_IN                          =>      gt0_rst_i,
        DRP_BUSY_OUT                    =>      GT0_DRP_BUSY_OUT,

        ---------------------------- Channel - DRP Ports  --------------------------
        DRPADDR_IN                      =>      GT0_DRPADDR_IN,
        DRPCLK_IN                       =>      GT0_DRPCLK_IN,
        DRPDI_IN                        =>      GT0_DRPDI_IN,
        DRPDO_OUT                       =>      GT0_DRPDO_OUT,
        DRPEN_IN                        =>      GT0_DRPEN_IN,
        DRPRDY_OUT                      =>      GT0_DRPRDY_OUT,
        DRPWE_IN                        =>      GT0_DRPWE_IN,
        ------------------------ GTPE2_CHANNEL Clocking Ports ----------------------
        PLL0CLK_IN                      =>      gt0_pll0clk_i,
        PLL0REFCLK_IN                   =>      gt0_pll0refclk_i,
        PLL1CLK_IN                      =>      gt0_pll1clk_i,
        PLL1REFCLK_IN                   =>      gt0_pll1refclk_i,
        --------------------- RX Initialization and Reset Ports --------------------
        RXUSERRDY_IN                    =>      GT0_RXUSERRDY_IN,
        -------------------------- RX Margin Analysis Ports ------------------------
        EYESCANDATAERROR_OUT            =>      GT0_EYESCANDATAERROR_OUT,
        ------------------------- Receive Ports - CDR Ports ------------------------
        RXCDRLOCK_OUT                   =>      GT0_RXCDRLOCK_OUT,
        ------------------ Receive Ports - FPGA RX Interface Ports -----------------
        RXDATA_OUT                      =>      GT0_RXDATA_OUT,
        RXUSRCLK_IN                     =>      GT0_RXUSRCLK_IN,
        RXUSRCLK2_IN                    =>      GT0_RXUSRCLK2_IN,
        ------------------------ Receive Ports - RX AFE Ports ----------------------
        GTPRXN_IN                       =>      GT0_GTPRXN_IN,
        GTPRXP_IN                       =>      GT0_GTPRXP_IN,
        ------------------- Receive Ports - RX Buffer Bypass Ports -----------------
        RXDLYEN_IN                      =>      GT0_RXDLYEN_IN,
        RXDLYSRESET_IN                  =>      GT0_RXDLYSRESET_IN,
        RXDLYSRESETDONE_OUT             =>      GT0_RXDLYSRESETDONE_OUT,
        RXPHALIGN_IN                    =>      GT0_RXPHALIGN_IN,
        RXPHALIGNDONE_OUT               =>      GT0_RXPHALIGNDONE_OUT,
        RXPHALIGNEN_IN                  =>      GT0_RXPHALIGNEN_IN,
        RXPHDLYRESET_IN                 =>      GT0_RXPHDLYRESET_IN,
        RXPHMONITOR_OUT                 =>      GT0_RXPHMONITOR_OUT,
        RXPHSLIPMONITOR_OUT             =>      GT0_RXPHSLIPMONITOR_OUT,
        RXSYNCALLIN_IN                  =>      GT0_RXSYNCALLIN_IN,
        RXSYNCDONE_OUT                  =>      GT0_RXSYNCDONE_OUT,
        RXSYNCIN_IN                     =>      GT0_RXSYNCIN_IN,
        RXSYNCMODE_IN                   =>      GT0_RXSYNCMODE_IN,
        RXSYNCOUT_OUT                   =>      GT0_RXSYNCOUT_OUT,
        -------------- Receive Ports - RX Byte and Word Alignment Ports ------------
        RXSLIDE_IN                      =>      GT0_RXSLIDE_IN,
        -------------------- Receive Ports - RX Equailizer Ports -------------------
        RXLPMHFHOLD_IN                  =>      GT0_RXLPMHFHOLD_IN,
        RXLPMLFHOLD_IN                  =>      GT0_RXLPMLFHOLD_IN,
        --------------- Receive Ports - RX Fabric Output Control Ports -------------
        RXOUTCLK_OUT                    =>      GT0_RXOUTCLK_OUT,
        ------------- Receive Ports - RX Initialization and Reset Ports ------------
        GTRXRESET_IN                    =>      GT0_GTRXRESET_IN,
        -------------- Receive Ports -RX Initialization and Reset Ports ------------
        RXRESETDONE_OUT                 =>      GT0_RXRESETDONE_OUT,
        --------------------- TX Initialization and Reset Ports --------------------
        GTTXRESET_IN                    =>      GT0_GTTXRESET_IN,
        TXUSERRDY_IN                    =>      GT0_TXUSERRDY_IN,
        ------------------ Transmit Ports - FPGA TX Interface Ports ----------------
        TXDATA_IN                       =>      GT0_TXDATA_IN,
        TXUSRCLK_IN                     =>      GT0_TXUSRCLK_IN,
        TXUSRCLK2_IN                    =>      GT0_TXUSRCLK2_IN,
        ------------------ Transmit Ports - TX Buffer Bypass Ports -----------------
        TXDLYEN_IN                      =>      GT0_TXDLYEN_IN,
        TXDLYSRESET_IN                  =>      GT0_TXDLYSRESET_IN,
        TXDLYSRESETDONE_OUT             =>      GT0_TXDLYSRESETDONE_OUT,
        TXPHALIGN_IN                    =>      GT0_TXPHALIGN_IN,
        TXPHALIGNDONE_OUT               =>      GT0_TXPHALIGNDONE_OUT,
        TXPHALIGNEN_IN                  =>      GT0_TXPHALIGNEN_IN,
        TXPHDLYRESET_IN                 =>      GT0_TXPHDLYRESET_IN,
        TXPHINIT_IN                     =>      GT0_TXPHINIT_IN,
        TXPHINITDONE_OUT                =>      GT0_TXPHINITDONE_OUT,
        ------------ Transmit Ports - TX Buffer and Phase Alignment Ports ----------
        TXSYNCALLIN_IN                  =>      GT0_TXSYNCALLIN_IN,
        TXSYNCDONE_OUT                  =>      GT0_TXSYNCDONE_OUT,
        TXSYNCIN_IN                     =>      GT0_TXSYNCIN_IN,
        TXSYNCMODE_IN                   =>      GT0_TXSYNCMODE_IN,
        TXSYNCOUT_OUT                   =>      GT0_TXSYNCOUT_OUT,
        --------------- Transmit Ports - TX Configurable Driver Ports --------------
        GTPTXN_OUT                      =>      GT0_GTPTXN_OUT,
        GTPTXP_OUT                      =>      GT0_GTPTXP_OUT,
        ----------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
        TXOUTCLK_OUT                    =>      GT0_TXOUTCLK_OUT,
        TXOUTCLKFABRIC_OUT              =>      GT0_TXOUTCLKFABRIC_OUT,
        TXOUTCLKPCS_OUT                 =>      GT0_TXOUTCLKPCS_OUT,
        ------------- Transmit Ports - TX Initialization and Reset Ports -----------
        TXRESETDONE_OUT                 =>      GT0_TXRESETDONE_OUT

    );

    --_________________________________________________________________________
    --_________________________________________________________________________
    --_________________________GTPE2_COMMON____________________________________

    gtpe2_common_0_i : GTPE2_COMMON
    generic map
    (
            -- Simulation attributes
            SIM_RESET_SPEEDUP    => WRAPPER_SIM_GTRESET_SPEEDUP,
            SIM_PLL0REFCLK_SEL   => ("001"),
            SIM_PLL1REFCLK_SEL   => ("001"),
            SIM_VERSION          => ("1.0"),

            PLL0_FBDIV           => PLL0_FBDIV_IN     ,
	    PLL0_FBDIV_45        => PLL0_FBDIV_45_IN  ,
	    PLL0_REFCLK_DIV      => PLL0_REFCLK_DIV_IN,
	    PLL1_FBDIV           => PLL1_FBDIV_IN     ,
	    PLL1_FBDIV_45        => PLL1_FBDIV_45_IN  ,
	    PLL1_REFCLK_DIV      => PLL1_REFCLK_DIV_IN,


       ------------------COMMON BLOCK Attributes---------------
        BIAS_CFG                                =>     (x"0000000000050001"),
        COMMON_CFG                              =>     (x"00000000"),

       ----------------------------PLL Attributes----------------------------
        PLL0_CFG                                =>     (x"01F03DC"),
        PLL0_DMON_CFG                           =>     ('0'),
        PLL0_INIT_CFG                           =>     (x"00001E"),
        PLL0_LOCK_CFG                           =>     (x"1E8"),
        PLL1_CFG                                =>     (x"01F03DC"),
        PLL1_DMON_CFG                           =>     ('0'),
        PLL1_INIT_CFG                           =>     (x"00001E"),
        PLL1_LOCK_CFG                           =>     (x"1E8"),
        PLL_CLKOUT_CFG                          =>     (x"00"),

       ----------------------------Reserved Attributes----------------------------
        RSVD_ATTR0                              =>     (x"0000"),
        RSVD_ATTR1                              =>     (x"0000")


    )
    port map
    (
	     DMONITOROUT             => open,
        ------------- Common Block  - Dynamic Reconfiguration Port (DRP) -----------
        DRPADDR                         =>      tied_to_ground_vec_i(7 downto 0),
        DRPCLK                          =>      tied_to_ground_i,
        DRPDI                           =>      tied_to_ground_vec_i(15 downto 0),
        DRPDO                           =>      open,
        DRPEN                           =>      tied_to_ground_i,
        DRPRDY                          =>      open,
        DRPWE                           =>      tied_to_ground_i,
        ----------------- Common Block - GTPE2_COMMON Clocking Ports ---------------
        GTEASTREFCLK0                   =>      tied_to_ground_i,
        GTEASTREFCLK1                   =>      tied_to_ground_i,
        GTGREFCLK1                      =>      tied_to_ground_i,
        GTREFCLK0                       =>      GT0_GTREFCLK0_IN,
        GTREFCLK1                       =>      tied_to_ground_i,
        GTWESTREFCLK0                   =>      tied_to_ground_i,
        GTWESTREFCLK1                   =>      tied_to_ground_i,
        PLL0OUTCLK                      =>      gt0_pll0outclk_i,
        PLL0OUTREFCLK                   =>      gt0_pll0outrefclk_i,
        PLL1OUTCLK                      =>      gt0_pll1outclk_i,
        PLL1OUTREFCLK                   =>      gt0_pll1outrefclk_i,
        -------------------------- Common Block - PLL Ports ------------------------
        PLL0FBCLKLOST                   =>      open,
        PLL0LOCK                        =>      GT0_PLL0LOCK_OUT,
        PLL0LOCKDETCLK                  =>      tied_to_ground_i,
        PLL0LOCKEN                      =>      tied_to_vcc_i,
        PLL0PD                          =>      tied_to_ground_i,
        PLL0REFCLKLOST                  =>      GT0_PLL0REFCLKLOST_OUT,
        PLL0REFCLKSEL                   =>      "001",
        PLL0RESET                       =>      GT0_PLL0RESET_IN,
        PLL1FBCLKLOST                   =>      open,
        PLL1LOCK                        =>      open,
        PLL1LOCKDETCLK                  =>      tied_to_ground_i,
        PLL1LOCKEN                      =>      tied_to_vcc_i,
        PLL1PD                          =>      '1',
        PLL1REFCLKLOST                  =>      open,
        PLL1REFCLKSEL                   =>      "010",
        PLL1RESET                       =>      GT0_PLL0RESET_IN,
        ---------------------------- Common Block - Ports --------------------------
        BGRCALOVRDENB                   =>      tied_to_vcc_i,
        GTGREFCLK0                      =>      tied_to_ground_i,
        PLLRSVD1                        =>      "0000000000000000",
        PLLRSVD2                        =>      "00000",
        REFCLKOUTMONITOR0               =>      open,
        REFCLKOUTMONITOR1               =>      open,
        ------------------------ Common Block - RX AFE Ports -----------------------
        PMARSVDOUT                      =>      open,
        --------------------------------- QPLL Ports -------------------------------
        BGBYPASSB                       =>      tied_to_vcc_i,
        BGMONITORENB                    =>      tied_to_vcc_i,
        BGPDB                           =>      tied_to_vcc_i,
        BGRCALOVRD                      =>      "00000",
        PMARSVD                         =>      "00000000",
        RCALENB                         =>      tied_to_vcc_i

    );


end RTL;
