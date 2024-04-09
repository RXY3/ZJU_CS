`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:28:16 12/31/2023
// Design Name:   jump
// Module Name:   D:/vga(1)/jump_sim.v
// Project Name:  vga
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: jump
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module jump_sim;

	// Inputs
	reg clk;
	// Bidirs
	reg [1:0] jumpstate;
	reg hnow;

	wire[1:0] jumpstate_wire;
	wire hnow_wire;
	// Instantiate the Unit Under Test (UUT)
	jump uut (
		.jumpstate(jumpstate_wire), 
		.clk(clk), 
		.hnow(hnow_wire)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		jumpstate = 0;
		hnow = 0;
		// Wait 100 ns for global reset to finish
		#100;
        jumpstate = 1;
		// Add stimulus here

	end
	always #10 clk = ~clk;
   assign  jumpstate_wire = (clk==1)?jumpstate:8'hzz;
	assign  hnow_wire = (clk==0)?hnow:8'hzz;
endmodule

