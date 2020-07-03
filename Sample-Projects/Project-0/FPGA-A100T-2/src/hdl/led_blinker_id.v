`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2018 09:33:27 PM
// Design Name: 
// Module Name: led_blinker_id
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
						    

module led_blinker_id(
    input clk,
    input [1:0] state,
	output led
    );
    
    parameter DIVIDER = 26;

	reg [DIVIDER:0] counter;
	reg led_w;
	reg [1:0] state_r;

	assign led = ~led_w;
	`define FAST_BIT counter[DIVIDER-4:DIVIDER-4]     // full speed
	`define HALF_BIT counter[DIVIDER-3:DIVIDER-3]     // 1/2 speed
	`define EIGTH_BIT counter[DIVIDER-1:DIVIDER-1] 	  // 1/8 speed
	`define SXTNTH_BIT counter[DIVIDER:DIVIDER] 	  // 1/16 speed

	always @(posedge clk)
	begin
		counter <= counter + 1;
		state_r <= state;
		
		if (0 == state_r)
		   led_w <= `HALF_BIT & `SXTNTH_BIT; 	    // 4 on, 4 off
		else if (1 == state_r)
		   led_w <= `HALF_BIT & `EIGTH_BIT; 	    // 2 on, 2 off
		else if (2 == state_r)
		   led_w <= `FAST_BIT; 	      		        // Alert: fastest blink
		else
			led_w <= 0;
	end

endmodule
