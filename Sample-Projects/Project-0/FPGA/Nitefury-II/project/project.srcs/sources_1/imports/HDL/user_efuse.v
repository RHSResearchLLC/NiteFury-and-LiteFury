`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2018 10:24:51 AM
// Design Name: 
// Module Name: user_efuse
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module user_efuse(VAL);

    output [31:0] VAL;
    
    wire [31:0] EFUSEUSR;
    
    EFUSE_USR #(
                  .SIM_EFUSE_VALUE(32'h00000000)  // Value of the 32-bit non-volatile value used in simulation
               )
               EFUSE_USR_inst (
                  .EFUSEUSR(EFUSEUSR)  // 32-bit output: User eFUSE register value output
               );
     
    assign VAL = EFUSEUSR;
endmodule


