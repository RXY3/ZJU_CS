`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:10:11 12/30/2023
// Design Name:   Top
// Module Name:   D:/vga(1)/pb_sim.v
// Project Name:  vga
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Top
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pb_sim;

	// Inputs
	reg I_clk;
	reg I_rst_n;
	reg start_game;
	reg BTNX4;

	// Outputs
	wire [3:0] O_red;
	wire [3:0] O_green;
	wire [3:0] O_blue;
	wire O_hs;
	wire O_vs;

	// Instantiate the Unit Under Test (UUT)
	Top uut (
		.I_clk(I_clk), 
		.I_rst_n(I_rst_n), 
		.start_game(start_game), 
		.O_red(O_red), 
		.O_green(O_green), 
		.O_blue(O_blue), 
		.O_hs(O_hs), 
		.O_vs(O_vs), 
		.BTNX4(BTNX4)
	);


	integer i = 0;
	initial begin
		// Initialize Inputs
		I_clk = 0;
		I_rst_n = 0;
		start_game = 0;
		BTNX4 = 0;

		// Wait 100 ns for global reset to finish
		#10;
		I_rst_n = 1;
		#50;
		start_game = 1;
        
		// Add stimulus here
		for(i = 0;i < 100;i=i+1)begin
		I_clk = ~I_clk;
		end

	end
      
endmodule

