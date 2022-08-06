`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/26/2018 12:43:09 PM
// Design Name: 
// Module Name: dna_reader
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


module dna_reader(
    input clk,
    output ready,
    output [31:0] dna_ls,
    output [31:0] dna_ms);
    
    // Storage
    reg ready_w = 0;
    reg [63:0] dna_read = 0;
    
    // Map output ports
    assign ready = ready_w;
    assign dna_ls = dna_read[31:0];
    assign dna_ms = dna_read[63:32];
    
    // DNA port wires
    wire DNAP_DOUT;
    reg DNAP_READ = 1;
    reg DNAP_SHIFT = 0;
    
    // DNA_PORT: Device DNA Access Port
    //           Artix-7
    // Xilinx HDL Language Template, version 2018.2
    
    DNA_PORT #(
       .SIM_DNA_VALUE(57'h000000000000000)  // Specifies a sample 57-bit DNA value for simulation
    )
    DNA_PORT_inst (
       .DOUT(DNAP_DOUT),   // 1-bit output: DNA output data.
       .CLK(clk),          // 1-bit input: Clock input.
       .DIN(0),            // 1-bit input: User data input pin.
       .READ(DNAP_READ),   // 1-bit input: Active high load DNA, active low read input.
       .SHIFT(DNAP_SHIFT)  // 1-bit input: Active high shift enable input.
    );
    // End of DNA_PORT_inst instantiation
    
    // local stoarge
    
    
    reg [31:0] count = 0;
    
    // Note- do this logic on the opposite edge that DNA port is active
    always @(negedge clk)
    if (0 == ready_w)
    begin
        count <= count+1;
        if (count == 1)
            begin
                DNAP_READ <= 0;
                DNAP_SHIFT <= 1;
            end
        else if (count < (66-8)) // 56 bits
            begin
                dna_read <= (dna_read << 1) | DNAP_DOUT;
            end
        else
            begin
            // Done- all bits shifted out
            ready_w <= 1;
            end 
    end
endmodule
