`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:02:24 12/29/2023 
// Design Name: 
// Module Name:    velocity 
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
module velocity(
	input wire btn,
	input wire clk,
	output reg v
    );
	
	wire btn_pb;
	
	pbdebounce m100(clk, btn, btn_pb);
	always @(posedge clk)begin
		if(v < 10'd4 && btn_pb)
			v <= v + 10'd1;
		else if(v >= 10'd4 && btn_pb)
			v<= 0;
		end

endmodule
