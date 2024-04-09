// file: rgb_exdes.v
// (c) Copyright 2009 - 2011 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.

//----------------------------------------------------------------------------
// SelectIO wizard example design
//----------------------------------------------------------------------------
// This example design instantiates the IO circuitry
//----------------------------------------------------------------------------

`timescale 1ps/1ps

module rgb_exdes
   // Clock -> q modeling delay
 #(
   // width of the data for the system
   parameter sys_w = 1,
   // width of the data for the device
   parameter dev_w = 1)
  (
   output     [1:0]       PATTERN_COMPLETED_OUT,
   // From the system into the device
   input      [sys_w-1:0] DATA_IN_FROM_PINS,
   output [sys_w-1:0] DATA_OUT_TO_PINS,
   output  CLK_TO_PINS_FWD,
  
   input                  CLK_IN,
   input                  CLK_IN_FWD,
   input                  CLK_RESET,
   input                  IO_RESET);


   localparam             num_serial_bits = dev_w/sys_w;
   wire        clkin1;

   reg  [sys_w-1:0]  count_out;
   reg  [sys_w-1:0]  count_out1;
   reg  [sys_w-1:0]  count_out2;
   reg [num_serial_bits-1:0] local_counter;

   wire [dev_w-1:0]       data_in_to_device;
   reg [dev_w-1:0]       data_in_to_device_int2;
   reg [dev_w-1:0]       data_in_to_device_int3;

   wire  [dev_w-1:0]       data_out_from_device;
     wire   [sys_w-1:0] data_out_to_pins_predelay;
   wire        clock_enable = 1'b1;

   wire                   clk_out;
   wire                    clk_fwd_out;
   wire [15:0] do_unused;
   wire        drdy_unused;
   wire        psdone_unused;
   wire        clkfbout;
   wire        clkfbout_buf;
   wire        clkfboutb_unused;
   wire        clkout0b_unused;
   wire        clkout1b_unused;
   wire        clkout2_unused;
   wire        clkout2b_unused;
   wire        clkout3_unused;
   wire        clkout3b_unused;
   wire        clkout4_unused;
   wire        clkout5_unused;
   wire        clkout6_unused;
   wire        clkfbstopped_unused;
   wire        clkinstopped_unused;
   wire        clk_in_pll;
   (* KEEP = "TRUE" *) wire        clk_div_in_int;
   wire        clk_div_in;
//   wire        clkin1;
   wire        clkout1_unused;

   reg rst_sync;
   reg rst_sync_int;
   reg rst_sync_int1;
   reg rst_sync_int2;
   reg rst_sync_int3;
   reg rst_sync_int4;
   reg rst_sync_int5;
   reg rst_sync_int6;
 
   reg rst_sync_d;
   reg rst_sync_int_d;
   reg rst_sync_int1_d;
   reg rst_sync_int2_d;
   reg rst_sync_int3_d;
   reg rst_sync_int4_d;
   reg rst_sync_int5_d;
   reg rst_sync_int6_d;
   reg [1:0] pattern_completed = 2'b00;
   reg start_check;


  IBUFG clkin_in_buf
   (.O (clkin1),
    .I (CLK_IN)
     );

  MMCME2_ADV
  #(.BANDWIDTH            ("OPTIMIZED"),
    .CLKOUT4_CASCADE      ("FALSE"),
    .COMPENSATION         ("ZHOLD"),
    .STARTUP_WAIT         ("FALSE"),
    .DIVCLK_DIVIDE        (1),
    .CLKFBOUT_MULT_F      (10.000),
    .CLKFBOUT_PHASE       (0.000),
    .CLKFBOUT_USE_FINE_PS ("FALSE"),
    .CLKOUT0_DIVIDE_F     (10.000),
    .CLKOUT0_PHASE        (0.000),
    .CLKOUT0_DUTY_CYCLE   (0.500),
    .CLKOUT0_USE_FINE_PS  ("FALSE"),

//    .CLKOUT1_DIVIDE       (10),
//    .CLKOUT1_PHASE        (0.000),
//    .CLKOUT1_DUTY_CYCLE   (0.500),
    .CLKOUT1_USE_FINE_PS  ("FALSE"),
    .CLKIN1_PERIOD        (10.0),
    .REF_JITTER1          (0.010))
  mmcm_adv_inst
    // Output clocks
   (.CLKFBOUT            (clkfbout),
    .CLKFBOUTB           (clkfboutb_unused),
    .CLKOUT0             (clkout0),
    .CLKOUT0B            (clkout0b_unused),
    .CLKOUT1             (clkout1_unused),
    .CLKOUT1B            (clkout1b_unused),
    .CLKOUT2             (clkout2_unused),
    .CLKOUT2B            (clkout2b_unused),
    .CLKOUT3             (clkout3_unused),
    .CLKOUT3B            (clkout3b_unused),
    .CLKOUT4             (clkout4_unused),
    .CLKOUT5             (clkout5_unused),
    .CLKOUT6             (clkout6_unused),
     // Input clock control
    .CLKFBIN             (clkfbout_buf),
    .CLKIN1              (clkin1),
    .CLKIN2              (1'b0),
     // Tied to always select the primary input clock
    .CLKINSEL            (1'b1),
    // Ports for dynamic reconfiguration
    .DADDR               (7'h0),
    .DCLK                (1'b0),
    .DEN                 (1'b0),
    .DI                  (16'h0),
    .DO                  (do_unused),
    .DRDY                (drdy_unused),
    .DWE                 (1'b0),
    // Ports for dynamic phase shift
    .PSCLK               (1'b0),
    .PSEN                (1'b0),
    .PSINCDEC            (1'b0),
    .PSDONE              (psdone_unused),
    // Other control and status signals
    .LOCKED              (locked),
    .CLKINSTOPPED        (clkinstopped_unused),
    .CLKFBSTOPPED        (clkfbstopped_unused),
    .PWRDWN              (1'b0),
    .RST                 (CLK_RESET));




  BUFG clkf_buf
   (.O (clkfbout_buf),
    .I (clkfbout));


  BUFG clkout1_buf
   (.O   (clk_in_pll),
    .I   (clkout0));



   always @(posedge clk_out or posedge IO_RESET) begin
   if (IO_RESET) begin
       rst_sync <= 1'b1;
       rst_sync_int <= 1'b1;
       rst_sync_int1 <= 1'b1;
       rst_sync_int2 <= 1'b1;
       rst_sync_int3 <= 1'b1;
       rst_sync_int4 <= 1'b1;
       rst_sync_int5 <= 1'b1;
       rst_sync_int6 <= 1'b1;
    end
   else begin
       rst_sync <= 1'b0;
       rst_sync_int <= rst_sync;
       rst_sync_int1 <= rst_sync_int;
       rst_sync_int2 <= rst_sync_int1;
       rst_sync_int3 <= rst_sync_int2;
       rst_sync_int4 <= rst_sync_int3;
       rst_sync_int5 <= rst_sync_int4;
       rst_sync_int6 <= rst_sync_int5;
   end
   end

   always @(posedge clk_in_pll or posedge IO_RESET) begin
   if (IO_RESET) begin
       rst_sync_d <= 1'b1;
       rst_sync_int_d <= 1'b1;
       rst_sync_int1_d <= 1'b1;
       rst_sync_int2_d <= 1'b1;
       rst_sync_int3_d <= 1'b1;
       rst_sync_int4_d <= 1'b1;
       rst_sync_int5_d <= 1'b1;
       rst_sync_int6_d <= 1'b1;
    end
   else begin
       rst_sync_d <= 1'b0;
       rst_sync_int_d <= rst_sync_d;
       rst_sync_int1_d <= rst_sync_int_d;
       rst_sync_int2_d <= rst_sync_int1_d;
       rst_sync_int3_d <= rst_sync_int2_d;
       rst_sync_int4_d <= rst_sync_int3_d;
       rst_sync_int5_d <= rst_sync_int4_d;
       rst_sync_int6_d <= rst_sync_int5_d;
   end
   end




   always @(posedge clk_in_pll) begin
   if (rst_sync_int6_d) begin
     count_out <= 0;
     end
   else if (locked) begin
     count_out <= count_out + 1'b1;
     end
   end




   always @(posedge clk_in_pll) begin
   if (rst_sync_int6_d) begin
     count_out1 <= 0;
     count_out2 <= 0;
   end
   else  begin
     count_out1 <= count_out;
     count_out2 <= count_out1;
   end
end

       assign data_out_from_device = count_out2;


   always @(posedge clk_out) begin
   if (rst_sync_int6) 
       pattern_completed <= 2'b00;

   else begin
 
     if (&data_in_to_device_int3) begin
       pattern_completed <= 2'b11;
     end
   end
  end

   always @(posedge clk_out) begin
   if (rst_sync_int6) begin
 
     data_in_to_device_int2 <= 0;
     data_in_to_device_int3 <= 0;
   end
   else begin
     data_in_to_device_int2 <= data_in_to_device;
     data_in_to_device_int3 <= data_in_to_device_int2;
   end
   end




  assign PATTERN_COMPLETED_OUT =  pattern_completed;







genvar pin_count;
  generate for (pin_count = 0; pin_count < sys_w; pin_count = pin_count + 1) begin: pins
    // Instantiate the buffers
    ////------------------------------
OBUF
      #(.IOSTANDARD ("LVCMOS18"))
     obuf_inst
       (.O          (DATA_OUT_TO_PINS    [pin_count]),
        .I          (data_out_to_pins_predelay[pin_count]));
    wire data_out_from_device_q;
    (* IOB = "true" *)
    FDRE fdre_out_inst
      (.D              (data_out_from_device[pin_count]),
       .C              (clk_in_pll),
       .CE             (clock_enable),
       .R              (IO_RESET),
       .Q              (data_out_from_device_q)
      );
    assign data_out_to_pins_predelay[pin_count] = data_out_from_device_q;
end
endgenerate

    ODDR
     #(.DDR_CLK_EDGE   ("SAME_EDGE"), //"OPPOSITE_EDGE" "SAME_EDGE"
       .INIT           (1'b0),
       .SRTYPE         ("ASYNC"))
     oddr_inst
      (.D1             (1'b1),
       .D2             (1'b0),
       .C              (clk_in_pll),
       .CE             (locked),
       .Q              (clk_fwd_out),
       .R              (CLK_RESET),
       .S              (1'b0));
 // Clock Output Buffer
    OBUF
      #(.IOSTANDARD ("LVCMOS18"))
     obuf_inst
       (.O          (CLK_TO_PINS_FWD),
        .I          (clk_fwd_out));
 
   // Instantiate the IO design
   rgb io_inst
    (
     // From the system into the device
     .DATA_IN_FROM_PINS       (DATA_IN_FROM_PINS),
     .DATA_IN_TO_DEVICE       (data_in_to_device),
     .CLK_IN                  (CLK_IN_FWD),
     .CLK_OUT                 (clk_out),
     .IO_RESET                (rst_sync_int));

endmodule
