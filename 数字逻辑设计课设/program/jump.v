`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:06:19 12/30/2023 
// Design Name: 
// Module Name:    jump 
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
module jump(
	input 	[1:0] jumpstate,
	input 	clk,
	input 	hnow,
	output reg  [1:0] jumps,
	output reg  h
    );
		
		
	 always@(posedge clk)begin
		if(jumpstate == 2'b00)begin
			h <= hnow;
			end
		else if(jumpstate == 2'b01)begin
			if(hnow == 200)begin
				jumps <= 2'b10;
				end
			else if(hnow < 200)begin
				h <= hnow + 50;
				end
			end
		else if(jumpstate == 2'b10)begin
			if(hnow == 0)begin
				jumps <= 0;
				end
			else if(hnow > 0)begin
				h <= hnow - 50;
				end
			end
		end
endmodule
