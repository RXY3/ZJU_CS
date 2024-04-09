`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:23:33 12/30/2023 
// Design Name: 
// Module Name:    colli 
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
module colli(
		clk,col_addr,row_addr,dinah,dinaw,v0,t,w,h,gameover
    );
input wire clk;
input wire col_addr;
input wire row_addr;
input wire dinah;
input wire dinaw;
input v0;
input t;
input w;
input h;
output reg gameover;

reg a;
 always@(posedge clk)begin
 if(col_addr>=250 - dinaw&&col_addr<=250 &&row_addr>=400 - dinah&&row_addr<=460 - dinah)
 begin
	if(col_addr>=3'd639 - v0 * t - w&&col_addr<=3'd639 - v0 * t &&row_addr>=3'd400 - h&&row_addr<=3'd400)
				 gameover<=1;
				 end
			end
	

endmodule
