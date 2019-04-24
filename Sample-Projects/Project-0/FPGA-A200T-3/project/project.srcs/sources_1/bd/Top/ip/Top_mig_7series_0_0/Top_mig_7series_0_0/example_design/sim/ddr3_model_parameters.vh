/****************************************************************************************
*
*   Disclaimer   This software code and all associated documentation, comments or other
*  of Warranty:  information (collectively "Software") is provided "AS IS" without
*                warranty of any kind. MICRON TECHNOLOGY, INC. ("MTI") EXPRESSLY
*                DISCLAIMS ALL WARRANTIES EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED
*                TO, NONINFRINGEMENT OF THIRD PARTY RIGHTS, AND ANY IMPLIED WARRANTIES
*                OF MERCHANTABILITY OR FITNESS FOR ANY PARTICULAR PURPOSE. MTI DOES NOT
*                WARRANT THAT THE SOFTWARE WILL MEET YOUR REQUIREMENTS, OR THAT THE
*                OPERATION OF THE SOFTWARE WILL BE UNINTERRUPTED OR ERROR-FREE.
*                FURTHERMORE, MTI DOES NOT MAKE ANY REPRESENTATIONS REGARDING THE USE OR
*                THE RESULTS OF THE USE OF THE SOFTWARE IN TERMS OF ITS CORRECTNESS,
*                ACCURACY, RELIABILITY, OR OTHERWISE. THE ENTIRE RISK ARISING OUT OF USE
*                OR PERFORMANCE OF THE SOFTWARE REMAINS WITH YOU. IN NO EVENT SHALL MTI,
*                ITS AFFILIATED COMPANIES OR THEIR SUPPLIERS BE LIABLE FOR ANY DIRECT,
*                INDIRECT, CONSEQUENTIAL, INCIDENTAL, OR SPECIAL DAMAGES (INCLUDING,
*                WITHOUT LIMITATION, DAMAGES FOR LOSS OF PROFITS, BUSINESS INTERRUPTION,
*                OR LOSS OF INFORMATION) ARISING OUT OF YOUR USE OF OR INABILITY TO USE
*                THE SOFTWARE, EVEN IF MTI HAS BEEN ADVISED OF THE POSSIBILITY OF SUCH
*                DAMAGES. Because some jurisdictions prohibit the exclusion or
*                limitation of liability for consequential or incidental damages, the
*                above limitation may not apply to you.
*
*                Copyright 2003 Micron Technology, Inc. All rights reserved.
*
****************************************************************************************/

    // Parameters current with V58B datasheet rev 1.4

    // Timing parameters based on Speed Grade

                                          // SYMBOL     UNITS DESCRIPTION
                                          // ------     ----- -----------
`define custom_part                       // sg094E is equivelant to the JEDEC DDR3-2133 (13-13-13) speed bin
`define sg                                // sg15E is equivelant to the JEDEC DDR3-1333H (9-9-9) speed bin
    parameter TCK_MIN          =    1250; // tCK        ps    Minimum Clock Cycle Time
    parameter TJIT_PER         =      70; // tJIT(per)  ps    Period JItter
    parameter TJIT_CC          =     60; // tJIT(cc)   ps    Cycle to Cycle jitter
    parameter TERR_2PER        =     103; // tERR(2per) ps    Accumulated Error (2-cycle)
    parameter TERR_3PER        =     122; // tERR(3per) ps    Accumulated Error (3-cycle)
    parameter TERR_4PER        =     136; // tERR(4per) ps    Accumulated Error (4-cycle)
    parameter TERR_5PER        =     147; // tERR(5per) ps    Accumulated Error (5-cycle)
    parameter TERR_6PER        =     155; // tERR(6per) ps    Accumulated Error (6-cycle)
    parameter TERR_7PER        =     163; // tERR(7per) ps    Accumulated Error (7-cycle)
    parameter TERR_8PER        =     169; // tERR(8per) ps    Accumulated Error (8-cycle)
    parameter TERR_9PER        =     175; // tERR(9per) ps    Accumulated Error (9-cycle)
    parameter TERR_10PER       =     180; // tERR(10per)ps    Accumulated Error (10-cycle)
    parameter TERR_11PER       =     184; // tERR(11per)ps    Accumulated Error (11-cycle)
    parameter TERR_12PER       =     188; // tERR(12per)ps    Accumulated Error (12-cycle)
    parameter TDS              =      10; // tDS        ps    DQ and DM input setup time relative to DQS
    parameter TDH              =      45; // tDH        ps    DQ and DM input hold time relative to DQS
    parameter TDQSQ            =     100; // tDQSQ      ps    DQS-DQ skew, DQS to last DQ valid, per group, per access
    parameter TDQSS            =    0.27; // tDQSS      tCK   Rising clock edge to DQS/DQS# latching transition
    parameter TDSS             =    0.18; // tDSS       tCK   DQS falling edge to CLK rising (setup time)
    parameter TDSH             =    0.18; // tDSH       tCK   DQS falling edge from CLK rising (hold time)
    parameter TDQSCK           =     225; // tDQSCK     ps    DQS output access time from CK/CK#
    parameter TQSH             =    0.4; // tQSH       tCK   DQS Output High Pulse Width
    parameter TQSL             =    0.4; // tQSL       tCK   DQS Output Low Pulse Width
    parameter TDIPW            =     360; // tDIPW      ps    DQ and DM input Pulse Width
    parameter TIPW             =     560; // tIPW       ps    Control and Address input Pulse Width
    parameter TIS              =     170; // tIS        ps    Input Setup Time
    parameter TIH              =     120; // tIH        ps    Input Hold Time
    parameter TRAS_MIN         =   35000; // tRAS       ps    Minimum Active to Precharge command time
    parameter TRC              =   48750; // tRC        ps    Active to Active/Auto Refresh command time
    parameter TRCD             =   13750; // tRCD       ps    Active to Read/Write command time
    parameter TRP              =   13750; // tRP        ps    Precharge command period
    parameter TXP              =    6000; // tXP        ps    Exit power down to a valid command
    parameter TCKE             =    5000; // tCKE       ps    CKE minimum high or low pulse width
    parameter TAON             =     225; // tAON       ps    RTT turn-on from ODTLon reference
    parameter TWLS             =     165; // tWLS       ps    Setup time for tDQS flop
    parameter TWLH             =     165; // tWLH       ps    Hold time of tDQS flop
    parameter TWLO             =    7.5; // tWLO       ps    Write levelization output delay
    parameter TAA_MIN          =   13750; // TAA        ps    Internal READ command to first data
    parameter CL_TIME          =   13750; // CL         ps    Minimum CAS Latency

    parameter TDQSCK_DLLDIS    =  TDQSCK; // tDQSCK     ps    for DLLDIS mode, timing not guaranteed

`define custom_part_width
    parameter TRRD             =    7500; // tRRD       ps     Active bank a to Active bank b command time
    parameter TFAW             =   40000; // tFAW       ps     Four Bank Activate window

    // Timing Parameters

    // Mode Register
    parameter CL_MIN           =       5; // CL         tCK   Minimum CAS Latency
    parameter CL_MAX           =      14; // CL         tCK   Maximum CAS Latency
    parameter AL_MIN           =       0; // AL         tCK   Minimum Additive Latency
    parameter AL_MAX           =       2; // AL         tCK   Maximum Additive Latency
    parameter WR_MIN           =       5; // WR         tCK   Minimum Write Recovery
    parameter WR_MAX           =      16; // WR         tCK   Maximum Write Recovery
    parameter BL_MIN           =       4; // BL         tCK   Minimum Burst Length
    parameter BL_MAX           =       8; // BL         tCK   Minimum Burst Length
    parameter CWL_MIN          =       5; // CWL        tCK   Minimum CAS Write Latency
    parameter CWL_MAX          =      10; // CWL        tCK   Maximum CAS Write Latency

    // Clock
    parameter TCK_MAX          =    3300; // tCK        ps    Maximum Clock Cycle Time
    parameter TCH_AVG_MIN      =    0.47; // tCH        tCK   Minimum Clock High-Level Pulse Width
    parameter TCL_AVG_MIN      =    0.47; // tCL        tCK   Minimum Clock Low-Level Pulse Width
    parameter TCH_AVG_MAX      =    0.53; // tCH        tCK   Maximum Clock High-Level Pulse Width
    parameter TCL_AVG_MAX      =    0.53; // tCL        tCK   Maximum Clock Low-Level Pulse Width
    parameter TCH_ABS_MIN      =    0.43; // tCH        tCK   Minimum Clock High-Level Pulse Width
    parameter TCL_ABS_MIN      =    0.43; // tCL        tCK   Maximum Clock Low-Level Pulse Width
    parameter TCKE_TCK         =       3; // tCKE       tCK   CKE minimum high or low pulse width
    parameter TAA_MAX          =   20000; // TAA        ps    Internal READ command to first data

    // Data OUT
    parameter TQH              =    0.38; // tQH        ps    DQ output hold time from DQS, DQS#
    // Data Strobe OUT
    parameter TRPRE            =    0.90; // tRPRE      tCK   DQS Read Preamble
    parameter TRPST            =    0.30; // tRPST      tCK   DQS Read Postamble
    // Data Strobe IN
    parameter TDQSH            =    0.45; // tDQSH      tCK   DQS input High Pulse Width
    parameter TDQSL            =    0.45; // tDQSL      tCK   DQS input Low Pulse Width
    parameter TWPRE            =    0.90; // tWPRE      tCK   DQS Write Preamble
    parameter TWPST            =    0.30; // tWPST      tCK   DQS Write Postamble
    // Command and Address
    integer TZQCS; // tZQCS      tCK   ZQ Cal (Short) time
    integer TZQINIT            =  max(512, ceil(640000/TCK_MIN)); // tZQinit    tCK   ZQ Cal (Long) time
    integer TZQOPER            =  max(256, ceil(320000/TCK_MIN)); // tZQoper    tCK   ZQ Cal (Long) time
    parameter TCCD             =       4; // tCCD       tCK   Cas to Cas command delay
    parameter TCCD_DG          =       2; // tCCD_DG    tCK   Cas to Cas command delay to different group
    parameter TRAS_MAX         =    60e9; // tRAS       ps    Maximum Active to Precharge command time
    parameter TWR              =   15000; // tWR        ps    Write recovery time
    parameter TMRD             =       4; // tMRD       tCK   Load Mode Register command cycle time
    parameter TMOD             =   15000; // tMOD       ps    LOAD MODE to non-LOAD MODE command cycle time
    parameter TMOD_TCK         =      12; // tMOD       tCK   LOAD MODE to non-LOAD MODE command cycle time
    parameter TRRD_TCK         =       4; // tRRD       tCK   Active bank a to Active bank b command time
    parameter TRRD_DG          =    3000; // tRRD_DG    ps     Active bank a to Active bank b command time to different group
    parameter TRRD_DG_TCK      =       2; // tRRD_DG    tCK   Active bank a to Active bank b command time to different group
    parameter TRTP             =    7500; // tRTP       ps    Read to Precharge command delay
    parameter TRTP_TCK         =       4; // tRTP       tCK   Read to Precharge command delay
    parameter TWTR             =    7500; // tWTR       ps    Write to Read command delay
    parameter TWTR_DG          =    3750; // tWTR_DG    ps    Write to Read command delay to different group
    parameter TWTR_TCK         =       4; // tWTR       tCK   Write to Read command delay
    parameter TWTR_DG_TCK      =       2; // tWTR_DG    tCK   Write to Read command delay to different group
    parameter TDLLK            =     512; // tDLLK      tCK   DLL locking time
    // Refresh - 1Gb
    parameter TRFC_MIN         =  260000; // tRFC       ps    Refresh to Refresh Command interval minimum value
    parameter TRFC_MAX         =70200000; // tRFC       ps    Refresh to Refresh Command Interval maximum value
    // Power Down
    parameter TXP_TCK          =       3; // tXP        tCK   Exit power down to a valid command
    parameter TXPDLL           =   24000; // tXPDLL     ps    Exit precharge power down to READ or WRITE command (DLL-off mode)
    parameter TXPDLL_TCK       =      10; // tXPDLL     tCK   Exit precharge power down to READ or WRITE command (DLL-off mode)
    parameter TACTPDEN         =       1; // tACTPDEN   tCK   Timing of last ACT command to power down entry
    parameter TPRPDEN          =       1; // tPREPDEN   tCK   Timing of last PRE command to power down entry
    parameter TREFPDEN         =       1; // tARPDEN    tCK   Timing of last REFRESH command to power down entry
    parameter TCPDED           =       1; // tCPDED     tCK   Command pass disable/enable delay
    parameter TPD_MAX          =TRFC_MAX; // tPD        ps    Power-down entry-to-exit timing
    parameter TXPR             =  270000; // tXPR       ps    Exit Reset from CKE assertion to a valid command
    parameter TXPR_TCK         =       5; // tXPR       tCK   Exit Reset from CKE assertion to a valid command
    // Self Refresh
    parameter TXS              =  270000; // tXS        ps    Exit self refesh to a non-read or write command
    parameter TXS_TCK          =       5; // tXS        tCK   Exit self refesh to a non-read or write command
    parameter TXSDLL           =   TDLLK; // tXSRD      tCK   Exit self refresh to a read or write command
    parameter TISXR            =     TIS; // tISXR      ps    CKE setup time during self refresh exit.
    parameter TCKSRE           =   10000; // tCKSRE     ps    Valid Clock requirement after self refresh entry (SRE)
    parameter TCKSRE_TCK       =       5; // tCKSRE     tCK   Valid Clock requirement after self refresh entry (SRE)
    parameter TCKSRX           =   10000; // tCKSRX     ps    Valid Clock requirement prior to self refresh exit (SRX)
    parameter TCKSRX_TCK       =       5; // tCKSRX     tCK   Valid Clock requirement prior to self refresh exit (SRX)
    parameter TCKESR_TCK       =       4; // tCKESR     tCK   Minimum CKE low width for Self Refresh entry to exit timing
    // ODT
    parameter TAOF             =     0.7; // tAOF       tCK   RTT turn-off from ODTLoff reference
    parameter TAONPD           =    8500; // tAONPD     ps    Asynchronous RTT turn-on delay (Power-Down with DLL frozen)
    parameter TAOFPD           =    8500; // tAONPD     ps    Asynchronous RTT turn-off delay (Power-Down with DLL frozen)
    parameter ODTH4            =       4; // ODTH4      tCK   ODT minimum HIGH time after ODT assertion or write (BL4)
    parameter ODTH8            =       6; // ODTH8      tCK   ODT minimum HIGH time after write (BL8)
    parameter TADC             =     0.7; // tADC       tCK   RTT dynamic change skew
    // Write Levelization
    parameter TWLMRD           =      40; // tWLMRD     tCK   First DQS pulse rising edge after tDQSS margining mode is programmed
    parameter TWLDQSEN         =      25; // tWLDQSEN   tCK   DQS/DQS delay after tDQSS margining mode is programmed
    parameter TWLOE            =    2000; // tWLOE      ps    Write levelization output error

    // Size Parameters based on Part Width

`define custom_part_width
    parameter DM_BITS          =       2; // Set this parameter to control how many Data Mask bits are used
    parameter ADDR_BITS        =      16; // MAX Address Bits
    parameter ROW_BITS         =      16; // Set this parameter to control how many Address bits are used
    parameter COL_BITS         =      10; // Set this parameter to control how many Column bits are used
    parameter DQ_BITS          =       16; // Set this parameter to control how many Data bits are used       **Same as part bit width**
    parameter DQS_BITS         =       2; // Set this parameter to control how many Dqs bits are used

    // Size Parameters
    parameter BA_BITS          =       3; // Set this parmaeter to control how many Bank Address bits are used
    parameter MEM_BITS         =      10; // Set this parameter to control how many write data bursts can be stored in memory.  The default is 2^10=1024.
    parameter AP               =      10; // the address bit that controls auto-precharge and precharge-all
    parameter BC               =      12; // the address bit that controls burst chop
    parameter BL_BITS          =       3; // the number of bits required to count to BL_MAX
    parameter BO_BITS          =       2; // the number of Burst Order Bits

`ifdef QUAD_RANK
    `define DUAL_RANK // also define DUAL_RANK
    parameter CS_BITS          =       4; // Number of Chip Select Bits
    parameter RANKS            =       4; // Number of Chip Selects
`else `ifdef DUAL_RANK
    parameter CS_BITS          =       2; // Number of Chip Select Bits
    parameter RANKS            =       2; // Number of Chip Selects
`else
    parameter CS_BITS          =       1; // Number of Chip Select Bits
    parameter RANKS            =       1; // Number of Chip Selects
`endif `endif

    // Simulation parameters
    parameter RZQ              =     240; // termination resistance
    parameter PRE_DEF_PAT      =   8'hAA; // value returned during mpr pre-defined pattern readout
    parameter STOP_ON_ERROR    =       1; // If set to 1, the model will halt on command sequence/major errors
    parameter DEBUG            =       1; // Turn on Debug messages
    parameter BUS_DELAY        =       0; // delay in nanoseconds
    parameter RANDOM_OUT_DELAY =       0; // If set to 1, the model will put a random amount of delay on DQ/DQS during reads
    parameter RANDOM_SEED      =   31913; //seed value for random generator.

    parameter RDQSEN_PRE       =       2; // DQS driving time prior to first read strobe
    parameter RDQSEN_PST       =       1; // DQS driving time after last read strobe
    parameter RDQS_PRE         =       2; // DQS low time prior to first read strobe
    parameter RDQS_PST         =       1; // DQS low time after last read strobe
    parameter RDQEN_PRE        =       0; // DQ/DM driving time prior to first read data
    parameter RDQEN_PST        =       0; // DQ/DM driving time after last read data
    parameter WDQS_PRE         =       2; // DQS half clock periods prior to first write strobe
    parameter WDQS_PST         =       1; // DQS half clock periods after last write strobe

// check for legal cas latency based on the cas write latency
function valid_cl;
    input [3:0] cl;
    input [3:0] cwl;

    case ({cwl, cl})
`ifdef sg093
        {4'd5, 4'd5 },
        {4'd5, 4'd6 },
        {4'd6, 4'd7 },
        {4'd6, 4'd8 },
        {4'd7, 4'd9 },
        {4'd7, 4'd10},
        {4'd8, 4'd11},
        {4'd9, 4'd13},
        {4'd10, 4'd14}: valid_cl = 1;
`else `ifdef sg093E
        {4'd5, 4'd5 },
        {4'd5, 4'd6 },
        {4'd6, 4'd7 },
        {4'd6, 4'd8 },
        {4'd7, 4'd9 },
        {4'd7, 4'd10},
        {4'd8, 4'd10},
        {4'd8, 4'd11},
        {4'd9, 4'd12},
        {4'd9, 4'd13},
        {4'd10, 4'd13},
        {4'd10, 4'd14}: valid_cl = 1;
`else `ifdef sg107F
        {4'd5, 4'd6 },
        {4'd6, 4'd7 },
        {4'd6, 4'd8 },
        {4'd7, 4'd9 },
        {4'd7, 4'd10},
        {4'd8, 4'd11},
        {4'd8, 4'd12},
        {4'd9, 4'd12},
        {4'd9, 4'd13},
        {4'd9, 4'd14}: valid_cl = 1;
`else `ifdef sg107E
        {4'd5, 4'd6 },
        {4'd6, 4'd8 },
        {4'd7, 4'd10},
        {4'd8, 4'd12},
        {4'd9, 4'd13},
        {4'd9, 4'd14}: valid_cl = 1;
`else `ifdef sg107
        {4'd5, 4'd5 },
        {4'd5, 4'd6 },
        {4'd6, 4'd7 },
        {4'd6, 4'd8 },
        {4'd7, 4'd9 },
        {4'd7, 4'd10},
        {4'd8, 4'd11},
        {4'd9, 4'd13}: valid_cl = 1;
`else `ifdef sg125F
        {4'd5, 4'd5 },
        {4'd5, 4'd6 },
        {4'd6, 4'd7 },
        {4'd6, 4'd8 },
        {4'd7, 4'd8 },
        {4'd7, 4'd9 },
        {4'd7, 4'd10},
        {4'd8, 4'd9 },
        {4'd8, 4'd10},
        {4'd8, 4'd11}: valid_cl = 1;
`else `ifdef sg125E
        {4'd5, 4'd5 },
        {4'd5, 4'd6 },
        {4'd6, 4'd7 },
        {4'd6, 4'd8 },
        {4'd7, 4'd9 },
        {4'd7, 4'd10},
        {4'd8, 4'd10},
        {4'd8, 4'd11}: valid_cl = 1;
`else `ifdef sg125
        {4'd5, 4'd5 },
        {4'd5, 4'd6 },
        {4'd6, 4'd7 },
        {4'd6, 4'd8 },
        {4'd7, 4'd9 },
        {4'd7, 4'd10},
        {4'd8, 4'd11}: valid_cl = 1;
`else `ifdef sg15E
        {4'd5, 4'd5 },
        {4'd5, 4'd6 },
        {4'd6, 4'd7 },
        {4'd6, 4'd8 },
        {4'd7, 4'd9 },
        {4'd7, 4'd10}: valid_cl = 1;
`else `ifdef sg15
        {4'd5, 4'd5 },
        {4'd5, 4'd6 },
        {4'd6, 4'd8 },
        {4'd7, 4'd10}: valid_cl = 1;
`else `ifdef sg187E
        {4'd5, 4'd5 },
        {4'd5, 4'd6 },
        {4'd6, 4'd7 },
        {4'd6, 4'd8 }: valid_cl = 1;
`else `ifdef sg187
        {4'd5, 4'd5 },
        {4'd5, 4'd6 },
        {4'd6, 4'd8 }: valid_cl = 1;
`else `ifdef sg25E
        {4'd5, 4'd5 },
        {4'd5, 4'd6 }: valid_cl = 1;
`else `ifdef sg25
        {4'd5, 4'd5 },
        {4'd5, 4'd6 }: valid_cl = 1;
`else `ifdef sg
        {4'd5, 4'd6 }: valid_cl = 1;
`endif `endif `endif `endif `endif `endif `endif `endif `endif  `endif `endif `endif `endif `endif `endif
        default : valid_cl = 0;
    endcase
endfunction

// find the minimum valid cas write latency
function [3:0] min_cwl;
    input period;
    real period;
    min_cwl = (period >= 2500.0) ? 5:
              (period >= 1875.0) ? 6:
              (period >= 1500.0) ? 7:
              (period >= 1250.0) ? 8:
              (period >= 1071.0) ? 9:
              10; // (period >= 938)
endfunction

// find the minimum valid cas latency
function [3:0] min_cl;
    input period;
    real period;
    reg [3:0] cwl;
    reg [3:0] cl;
    begin
        cwl = min_cwl(period);
        for (cl=CL_MAX; cl>=CL_MIN; cl=cl-1) begin
            if (valid_cl(cl, cwl)) begin
                min_cl = cl;
            end
        end
    end
endfunction
