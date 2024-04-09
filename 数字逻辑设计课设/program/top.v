`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:45:50 12/29/2023 
// Design Name: 
// Module Name:    top 
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
module Top(
    input                   I_clk   , // ÏµÍ³50MHzÊ±ï¿½ï¿½
    input                   I_rst_n , // ÏµÍ³ï¿½ï¿½Î»
	 input 						 numshow,
	 /*input 						 clr,*/
	 /*input 						 mode,	*/  // ï¿½Ñ¶ï¿½Ñ¡ï¿½ï¿½
	 input  						 start_game,
	 input 						 jump,
	 //input 					    rst,
	 input 						mode,
	 output 						 BTNX4,
    output         [3:0]    O_red   , // VGAï¿½ï¿½É«ï¿½ï¿½ï¿½ï¿½
    output         [3:0]    O_green , // VGAï¿½ï¿½É«ï¿½ï¿½ï¿½ï¿½
    output         [3:0]    O_blue  , // VGAï¿½ï¿½É«ï¿½ï¿½ï¿½ï¿½
    output                  O_hs    , // VGAï¿½ï¿½Í¬ï¿½ï¿½ï¿½Åºï¿½
    output                  O_vs    ,
	 output wire [3:0] AN,
	 output wire [7:0] Segment// VGAï¿½ï¿½Í¬ï¿½ï¿½ï¿½Åºï¿½
	 /*output         [7:0]    SEGMENT,
	 output         [4:0]    AN*/
    );
	
    //ï¿½ï¿½ÆµÏµÍ³Ê±ï¿½Ó£ï¿½ï¿½ï¿½ï¿½ï¿½25MHZï¿½ï¿½Ê±ï¿½ï¿½
	wire R_clk_25M;
	wire[31:0] clk_div;
	clkdiv c0(.clk(I_clk), .rst(~I_rst_n), .clkdiv(clk_div));
	assign R_clk_25M  = clk_div[1];     
		
	reg [11:0] vga_data;//vgaï¿½ï¿½É«ï¿½ï¿½Ê¾
	wire [9:0] col_addr;//xï¿½ï¿½Öµ
	wire [8:0] row_addr;//yï¿½ï¿½Öµ
	parameter h = 66;
	parameter w = 39;
	parameter v0 = 9;
	parameter v1 = 18;
	reg [9:0] v = 9;
	reg [9:0] dinah = 0;
	parameter dinaw = 64;
	parameter h_dina = 30;
	parameter verticalvol = 50;
	
	parameter h_cl = 54;
	parameter w_cl = 104;

	reg  [0:0] state = 1'b0;
	wire start_pb;
	/*wire clr_pb;*/
	reg  [7:0]t;
	reg  [18:0] R_rom_addr; 
	wire [11:0] W_rom_data;//ÕÏ°­
	
	reg  [18:0] addr_backg; 
	wire [11:0] data_backg;//¿ªÊ¼±³¾°
	
	reg  [18:0] addr_dina; 
	wire [11:0] data_dina;//¿ÖÁú
	
	reg  [18:0] addr_cloud; 
	wire [11:0] data_cloud;//ÔÆ
	
	reg  [18:0] addr_fruit; 
	wire [11:0] data_fruit;//¹û×Ó
	
	reg  [18:0] addr_game; 
	wire [11:0] data_game;//ÓÎÏ·±³¾°
	
	reg  [18:0] addr_over; 
	wire [11:0] data_over;//ÓÎÏ·±³¾°
	
	reg  [18:0] addr_gameover; 
	wire [11:0] data_gameover;//ÓÎÏ·±³¾°
	
	
	reg flag1 = 0;
	reg flag2 = 0;
	reg [0:0] gameover1;
	reg [0:0] flag_of_grass = 1'b0;

	always @(posedge clk_div[20])begin
		if(t == 7'b1111110 || state != 1'b1 || Is_dead == 1'b1)begin
			t <= 0;
			flag_of_grass <= flag_of_grass + 1'b1;
			flag_random <= flag_random +1;
			if(flag_random == 5)begin
			flag_random <=0;
			end
			
			flag_of_fruit3 <= flag_of_fruit3 + 1'b1;
			if(flag_of_fruit3 == 5)begin
			flag_of_fruit3 <=0;
			end
		//	flag_ran <=1'b1;
			end
		else if(state == 1'b1 && Is_dead==1'b0 )
			t <= t + 1;
	end
	
	always @(posedge clk_div[29])begin
		if(mode == 1'b0)begin
			v <= v0;
			num_add <= 1;
		end
		else if(mode == 1'b1 && Is_dead == 1'b0)begin
		if(v < v1)begin
			v <= v+1;
		end
		num_add <=2;
		end
		else if(Is_dead == 1'b1)
		v <= v0;
	end


	
	assign BTNX4 = 0;
	pbdebounce m1000(clk_div[16],start_game,start_pb);
	pbdebounce m1010(clk_div[16],jump,jump_btn);
	/*pbdebounce k10(clk_div[16],clr,clr_pb);*/
	always @(posedge start_pb)begin
		state <= state + 1'b1;
	end

    vga vga_test(.vga_clk(R_clk_25M),.clrn(I_rst_n),.d_in(vga_data),.row_addr(row_addr),.col_addr(col_addr),.r(O_red),.g(O_green),.b(O_blue),.hs(O_hs),.vs(O_vs));
	
	
	reg [0:0] Is_dead;
	
		
	barrier barrier(
  .clka(R_clk_25M), // input clk_25MHZ
  .addra(R_rom_addr), // input [18 : 0] address
  .douta(W_rom_data) // output [11 : 0] data
	);
	
	start start(
  .clka(R_clk_25M), // input clk_25MHZ
  .addra(addr_backg), // input [18 : 0] address
  .douta(data_backg) // output [11 : 0] data
	);

	dino dino(
  .clka(R_clk_25M), // input clk_25MHZ
  .addra(addr_dina), // input [18 : 0] address
  .douta(data_dina) // output [11 : 0] data
	);
	
	cloud cloud(
  .clka(R_clk_25M), // input clk_25MHZ
  .addra(addr_cloud), // input [18 : 0] address
  .douta(data_cloud) // output [11 : 0] data
	);

	
	fruit fruit(
  .clka(R_clk_25M), // input clk_25MHZ
  .addra(addr_fruit), // input [18 : 0] address
  .douta(data_fruit) // output [11 : 0] data
	);
	
	playground playground(
  .clka(R_clk_25M), // input clk_25MHZ
  .addra(addr_game), // input [18 : 0] address
  .douta(data_game) // output [11 : 0] data
	);
	gameover0 gameover0(
  .clka(R_clk_25M), // input clk_25MHZ
  .addra(addr_gameover), // input [18 : 0] address
  .douta(data_gameover) // output [11 : 0] data
	);
	
	always @(posedge clk_div[20] ) begin
	if(Is_dead==0)begin
    if (jump_btn == 0 && flag2 == 0) begin
        flag1 <= 1;
    end

    if (flag1 == 1 && dinah < 180) begin
        dinah <= dinah + 10;
    end
    else if (flag1 == 1 && dinah >= 180) begin
        dinah <= dinah - 10;
        flag2 <= 1;
        flag1 <= 0;
    end
    else if (flag1 == 0 && flag2 == 1 && dinah > 0) begin
        dinah <= dinah - 10;
    end
    else if (dinah <= 0) begin
        flag2 <= 0;
    end
	 end
end

	 
	
	
	
	always@(posedge clk_div[1])begin
	if(col_addr>=250 - dinaw&&col_addr<=250 &&row_addr>=322 - dinah + h_dina&&row_addr<=400 - dinah+ h_dina)
		begin
			if(col_addr>=639 - v * t - w &&col_addr<=639 - v * t &&row_addr>=400 - h +h_dina&&row_addr<=400 + h_dina)begin
					 gameover1<=1'b1;
					 end
			else if(col_addr>=639 - v * t &&col_addr<=639 - v * t +w&&row_addr>=400 - h+ h_dina&&row_addr<=400 + h_dina&& flag_of_grass==1'b1)begin
					 gameover1<=1'b1;
					 end
			else gameover1<=1'b0;
		end
	else begin
	gameover1 <= 1'b0;
	end
	if(gameover1 == 1'b0 && state == 1'b0)
	Is_dead <= 1'b0;
	else if(gameover1 == 1'b1 && state == 1'b1)
	Is_dead <=1'b1;
	end
	
	
	//colli m102(clk_div[1],col_addr,row_addr,dinah,dinaw,v0,t,w,h,gameover);
		//col_addr>=leftofgr&&col_addr<=rightofgr&&row_addr>=upofgr&&row_addr<=downofgr
	 //ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
//	 assign W_rom_data[11:0] = 12'b0000_0000_0000;
//	 assign data_backg[11:0] = 12'b0000_1111_0000;
//	 assign data_dina[11:0] = 12'b1111_0000_0000;
//	 assign data_cloud[11:0] = 12'b0000_0000_0000;
//	 assign data_color[11:0] = 12'b1011_1001_1111;
//	 //assign data_fruit[11:0] = 12'b0000_1111_0000;
//	 //assign data_gameover[11:0] = 12'b0000_1100_1100;
	 
	 reg [15:0] num=0;
	 reg [15:0] max_num = 16'b0000_0000_0000_0000;
	 reg [15:0] true_num = 16'b0000_0000_0000_0000;
	 wire [15:0]disp1,disp2;
	 
	 assign disp1 = num;
	 assign disp2 = max_num;
	 
	always @(posedge clk_div[1])begin
		if(numshow == 1'b0)
			true_num <= disp1;
		else if(numshow == 1'b1)
			true_num <= disp2;
	end
		
	
	 always @(posedge clk_div[20])begin
		if(num > max_num)max_num <= num;
	end

	dispNUMBER l10(.clk(I_clk),.HEXS(true_num[15:0]),.LES(4'b0000),.points(4'b0000),.RST(1'b0),.AN(AN[3:0]),.Segment(Segment[7:0]));

	
	 reg [23:0] rand;
	 reg [23:0] rand1;
	 reg [9:0] flag_random = 0;

	 always @(posedge clk_div[20])begin
	if(Is_dead==0 && state == 1'b1)begin
	 	if(flag_random == 1'b0)begin
		rand <= 60;
		rand1 <= 90;
		fruit_x <= 10;
		fruit_y <= 10;
		end
		if(flag_random == 1'b1)begin
		rand <= 20;
		rand1 <= 110;
		fruit_x <=60;
		fruit_y <= 30;
		end
		if(flag_random == 2)begin
		rand <= 10;
		rand1 <= 150;
		fruit_x <= 30;
		fruit_y <= 50;
		end
		if(flag_random == 3)begin
		rand <= 40;
		rand1 <= 30;
		fruit_x <= 50;
		fruit_y <= 70;
		end
		if(flag_random == 4)begin
		rand <= 30;
		rand1 <= 150;
		fruit_x <= 10;
		fruit_y <= 50;
		end
		if(flag_random == 5)begin
		rand <= 70;
		rand1 <= 380;
		fruit_x <= 70;
		fruit_y <= 10;
		end
		end
	end
	 
	 //fruit
	reg [0:0] flag_of_fruit1 = 1'b1;
	reg [3:0] flag_of_fruit2 = 1'b0;
	reg [3:0] flag_of_fruit3 = 4'b0000;
	reg [4:0] flag_4 = 1'b0;
	reg [9:0] fruit_x = 0;
	reg [9:0] fruit_y = 0;
	reg [9:0] w_fruit = 30;
	reg [9:0] h_fruit = 30;
	reg [21:0] count = 22'b0;
	reg [3:0] num_add = 1;
	//fruit get
	always @(posedge clk_div[1])begin
		if(col_addr>=639 - v*t + fruit_x - w_fruit&&col_addr<=639 - v*t + fruit_x &&row_addr>=250 - h_fruit + fruit_y&&row_addr<=250 + fruit_y && flag_of_fruit1 == 1'b1)
			begin
				if(col_addr>=250 - dinaw&&col_addr<=250 &&row_addr>=322 - dinah + h_dina&&row_addr<=400 - dinah+ h_dina)
				begin
					flag_of_fruit1 <= 1'b0;
					flag_of_fruit2 <= 1'b1;
				end
			end
			count <= count + 1'b1;
		if(count == 22'b1111_1111_1111_1111_1111_111)begin
		if(state == 1'b0)num[15:0] <= 16'b0000_0000_0000_0000;
		else if(state == 1'b1 && Is_dead == 1'b0)num <= num + num_add;
		if(flag_of_fruit2 == 1'b1 )begin
		num <= num + 10;
		flag_of_fruit2 <= 1'b0;
		end
		count <= 22'b0;
	end
		if(flag_of_fruit3 == 4)begin
			flag_of_fruit1 <= 1'b1;
			flag_of_fruit2 <= 1'b0;
		end
	end


	always @(posedge R_clk_25M or negedge I_rst_n)
	begin
		if(!I_rst_n)
			R_rom_addr <= 19'd1;
		else if(col_addr>=639 - v * t - w&&col_addr<=639 - v * t &&row_addr>=400 - h+ h_dina&&row_addr<=400+ h_dina)
		begin 
            if(R_rom_addr == h*w)
				R_rom_addr <= 19'd1;
				else
					R_rom_addr <= (row_addr-400+h- h_dina)*w+col_addr-639+v*t+w;
		end
	else if(col_addr>=639 - v * t &&col_addr<=639 - v * t +w&&row_addr>=400 - h+ h_dina&&row_addr<=400 + h_dina&& flag_of_grass==1'b1)
		begin 
                if(R_rom_addr == h*w)
					R_rom_addr <= 19'd1;
				else
					R_rom_addr <= (row_addr-400+h - h_dina)*w+col_addr-639+v*t;
		end
	end
	
	always @(posedge R_clk_25M or negedge I_rst_n)
	begin
		if(!I_rst_n)
			addr_dina <= 19'd1;
		else if(col_addr>=250 - dinaw&&col_addr<=250 &&row_addr>=322 - dinah+ h_dina&&row_addr<=400 - dinah+ h_dina)
			begin //ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½testÍ¼ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ê¾
                if(addr_dina == dinaw * 78)
					addr_dina <= 19'd0;
				else
					addr_dina <= (row_addr-322+dinah- h_dina)*dinaw + col_addr-250+dinaw;
			end
	end
	
	always @(posedge R_clk_25M or negedge I_rst_n)
	begin
		if(!I_rst_n)
			addr_cloud <= 19'd1;
		else if(col_addr>=639 - v * t - w_cl + rand1 &&col_addr<=639 - v * t + rand1 &&row_addr>=50 - h_cl + rand &&row_addr<=50 + rand)
			begin //ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½testÍ¼ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ê¾
             if(addr_cloud == w_cl * h_cl)
					addr_cloud <= 19'd0;
				else
					addr_cloud <= (row_addr-50 +h_cl - rand)*w_cl + col_addr-639+v * t + w_cl - rand1;
			end
end
//	

	
	
//	
	
	
	
	
	always @(posedge R_clk_25M or negedge I_rst_n)
	begin
		if(!I_rst_n)
			addr_over <= 19'd0;
		else if(col_addr>=0&& col_addr<=639&&row_addr>=0&&row_addr<=479) //ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ç±ï¿½ï¿½ï¿½Í¼È«ï¿½ï¿½ï¿½ï¿½ï¿½
					addr_over <= row_addr*640+col_addr;
			
	end
	always @(posedge R_clk_25M or negedge I_rst_n)
	begin
		if(!I_rst_n)
			addr_backg <= 19'd1;
		else if(col_addr>=0&& col_addr<=639&&row_addr>=0&&row_addr<=479) //ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ç±ï¿½ï¿½ï¿½Í¼È«ï¿½ï¿½ï¿½ï¿½ï¿½
					addr_backg <= row_addr*640+col_addr;
			
	end
	
	always @(posedge R_clk_25M or negedge I_rst_n)
	begin
		if(!I_rst_n)
			addr_fruit <= 19'd1;
		else if(col_addr>=639 - v*t + fruit_x - w_fruit&&col_addr<=639 - v*t + fruit_x &&row_addr>=250 - h_fruit + fruit_y&&row_addr<=250 + fruit_y && flag_of_fruit1 == 1'b1)
			begin //ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½testÍ¼ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ê¾
                if(addr_dina == 30*30)
					addr_fruit <= 19'd1;
				else
					addr_fruit <= (row_addr-250 + h_fruit - fruit_y)*30 + col_addr-639 + v*t - fruit_x + w_fruit;
			end
	end
	
	always @(posedge R_clk_25M or negedge I_rst_n)
	begin
		if(!I_rst_n)
			addr_game <= 19'd0;
		else if(col_addr>=0&& col_addr<=639&&row_addr>=0&&row_addr<=479) //ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ç±ï¿½ï¿½ï¿½Í¼È«ï¿½ï¿½ï¿½ï¿½ï¿½
					addr_game <= row_addr*640+col_addr;
		
	end
	
	
	always @(posedge R_clk_25M or negedge I_rst_n)
	begin
		if(!I_rst_n)
			addr_gameover <= 19'd0;
		else if(col_addr>=320-100&&col_addr<=320+100 &&row_addr>=240-50&&row_addr<=240+50) //ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ç±ï¿½ï¿½ï¿½Í¼È«ï¿½ï¿½ï¿½ï¿½ï¿½
					addr_gameover <= (row_addr-190)*200+col_addr-220;
	end

	always @(posedge R_clk_25M or negedge I_rst_n)
	begin
		case(state)
		1'b0:begin
			if(!I_rst_n)
				vga_data<=12'b0;
			else
				vga_data<=data_backg[11:0];
				end
		1'b1:begin
			//case(Is_dead)
			//1'b0:begin
					if(!I_rst_n)
						vga_data<=12'b0;
					else if(col_addr>=320-100&&col_addr<=320+100 &&row_addr>=240-50&&row_addr<=240+50 && Is_dead==1'b1)begin 
						vga_data <= data_gameover;
						end
					else if(col_addr>=639 - v * t - w&&col_addr<=639 - v * t &&row_addr>=400 - h+ h_dina&&row_addr<=400+ h_dina)
						begin
						vga_data<=W_rom_data[11:0];
						end
					else if(col_addr>=639 - v * t &&col_addr<=639 - v * t +w&&row_addr>=400 - h+ h_dina&&row_addr<=400+ h_dina && flag_of_grass==1'b1)
						begin
						vga_data<=W_rom_data[11:0];
						end
					else if(col_addr>=250 - dinaw&&col_addr<=250 &&row_addr>=322 - dinah + h_dina&&row_addr<=400 - dinah + h_dina)
						vga_data<=data_dina[11:0];
					else if(col_addr>=639 - v * t - w_cl + rand1 &&col_addr<=639 - v * t + rand1 &&row_addr>=50 - h_cl + rand &&row_addr<=50 + rand)
						begin
						vga_data<=data_cloud[11:0];
						end
					else if(col_addr>=639 - v*t + fruit_x - w_fruit&&col_addr<=639 - v*t + fruit_x &&row_addr>=250 - h_fruit + fruit_y&&row_addr<=250 + fruit_y && flag_of_fruit1 == 1'b1)
						begin
						vga_data<=data_fruit[11:0];
						end
					
					
						//Instantiation is not allowed in sequential area except checker instantiation
					
					else begin		
						
						vga_data<=data_game;
					end
					
				//1'b1:
				//begin 
				//	vga_data<=data_over;
				//end
				
			//endcase
			end
		/*2'b10:begin
			vga_data<=12'b0000_0000_1111;
			end*/
			endcase
	end
	
endmodule