`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2018 09:33:27 PM
// Design Name: 
// Module Name: CodeBlinker
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: Blinks LED based on value, and also keeps LED on for a minimum time if the OK signal flickers
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


// !OK: On solid
// When OK goes high:
// (stays on dim for certain time)
// (blinks based on code)
// ('.' indicates some delay; '..' is twice the delay) 
// 0: dim .... off
// 1: dim .... off .. on . off .. on . off .. [forever]
// 2: dim .... off .. on . off. on. off .. on . off. on. off .. [forever] 
						    

module CodeBlinker(
    input clk,
	input ok,
	input [2:0] code,
	output reg led
    );

	// If we know the input clock, we can use reasonable rates for LED blinking
	parameter IN_CLK_MHZ = 32'd100;


	// Defines
	localparam LED_ON = 1'b0;
	localparam LED_OFF = 1'b1;


    // Default values for outputs
	initial led = LED_ON;

	// Declare states
	localparam S_NOK = 0;     	// ok input is false- LED is ON
	localparam S_OFF = 1;	 	// Displaying code- off time
	localparam S_ON = 2;      	// Displaying code- on time
	localparam S_CYCLEWAIT = 3;  // Done displaying code- wait with LED off before repeating

	// Declare state register and other state variables
	reg	[2:0] state = S_NOK;
	reg [2:0] curCodeDisp = 0;

	// Divides incoming clock
	localparam BASE_DELAY = 32'd672000 * IN_CLK_MHZ;
	localparam DELAY_STRETCH = BASE_DELAY << 2; // Lower 2 bits must be 0 for LED to be on solid in state S_NOK
	localparam DELAY_BLINK = BASE_DELAY;
	localparam DELAY_CYCLE = BASE_DELAY << 1;
	reg signed [31:0] counter = DELAY_CYCLE;

	// Debouncing inputs
	reg s_ok;
	reg [2:0] s_code;


	// Output depends only on the state and the countdown counter
	always @(negedge clk)
	begin
		case (state)
			S_ON:
				led = LED_ON;

		    S_NOK:
				led = | counter[1:0]; // Only on 1/4 duty


			default:
				led = LED_OFF; 
		endcase
	end


	always @(posedge clk)
	begin
		s_ok <= ok;
		s_code <= code;
		if (!s_ok)
			begin
				state <= S_NOK;
				counter <= DELAY_STRETCH;
			end
		else
			begin
				if (counter > 0)
					counter <= counter - 1;
				else
					begin
						case (state)
							S_NOK: 
								begin
									state <= S_CYCLEWAIT;
								end

							S_OFF:
								begin
									counter <= DELAY_BLINK;
									curCodeDisp <= curCodeDisp - 1;

									if (0 == curCodeDisp)
										state <= S_CYCLEWAIT;
									else
										state <= S_ON;

								end

							S_ON:
								begin
									counter <= DELAY_BLINK;
									state <= S_OFF;
								end

							S_CYCLEWAIT: // Done blinking the code- capture the next code to blink here
								begin
									counter <= DELAY_CYCLE;
									state <= S_OFF;
									curCodeDisp <= s_code;
								end
						endcase

					end
			end
	end


endmodule
