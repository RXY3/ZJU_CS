`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:54:23 12/31/2023 
// Design Name: 
// Module Name:    state_decate 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module state_decate(
	input wire clr,
	input wire start_game,
	input clk,
	output reg [1:0]state
    );

	wire start_pb;
	wire clr_pb;

	pbdebounce m1000(clk,start_game,start_pb);
	pbdebounce k10(clk,clr,clr_pb);
	
	always @(posedge start_pb or posedge clr_pb)begin
		if(clr_pb) state <= 0;
		else state <= state + 1'b1;
	end

endmodule
