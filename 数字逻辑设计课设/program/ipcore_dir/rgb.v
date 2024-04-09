// file: rgb.v
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
// User entered comments
//----------------------------------------------------------------------------
// None
//----------------------------------------------------------------------------

`timescale 1ps/1ps

(* CORE_GENERATION_INFO = "rgb,selectio_wiz_v4_1,{component_name=rgb,bus_dir=INPUTS,bus_sig_type=SINGLE,bus_io_std=LVCMOS18,use_serialization=false,use_phase_detector=false,serialization_factor=4,enable_bitslip=false,enable_train=false,system_data_width=1,bus_in_delay=NONE,bus_out_delay=NONE,clk_sig_type=SINGLE,clk_io_std=LVCMOS18,clk_buf=BUFIO2,active_edge=RISING,clk_delay=NONE,v6_bus_in_delay=NONE,v6_bus_out_delay=NONE,v6_clk_buf=BUFIO,v6_active_edge=SDR,v6_ddr_alignment=SAME_EDGE_PIPELINED,v6_oddr_alignment=SAME_EDGE,ddr_alignment=C0,v6_interface_type=NETWORKING,interface_type=NETWORKING,v6_bus_in_tap=0,v6_bus_out_tap=0,v6_clk_io_std=LVCMOS18,v6_clk_sig_type=SINGLE}" *)

module rgb
   // width of the data for the system
 #(parameter sys_w = 1,
   // width of the data for the device
   parameter dev_w = 1)
 (
  // From the system into the device
  input  [sys_w-1:0] DATA_IN_FROM_PINS,
  output [dev_w-1:0] DATA_IN_TO_DEVICE,
  input              CLK_IN,        // Single ended clock from IOB
  output             CLK_OUT,
  input              IO_RESET);
  // Signal declarations
  ////------------------------------
  wire               clock_enable = 1'b1;
  // After the buffer
  wire   [sys_w-1:0] data_in_from_pins_int;
  // Between the delay and serdes
  wire [sys_w-1:0]  data_in_from_pins_delay;
  // Create the clock logic

  IBUFG
    #(.IOSTANDARD ("LVCMOS18"))
   ibufg_clk_inst
     (.I          (CLK_IN),
      .O          (clk_in_int));

// High Speed BUFIO clock buffer
 BUFIO bufio_inst
   (.O(clk_in_int_buf),
    .I(clk_in_int));

  
   // BUFR generates the slow clock
   BUFR
    #(.SIM_DEVICE("7SERIES"),
    .BUFR_DIVIDE("BYPASS"))
    clkout_buf_inst
    (.O (clk_div),
     .CE(),
     .CLR(),
     .I (clk_in_int));

   assign CLK_OUT = clk_div; // This is regional clock;

  // We have multiple bits- step over every bit, instantiating the required elements
  genvar pin_count;
  generate for (pin_count = 0; pin_count < sys_w; pin_count = pin_count + 1) begin: pins
    // Instantiate the buffers
    ////------------------------------
    // Instantiate a buffer for every bit of the data bus
    IBUF
      #(.IOSTANDARD ("LVCMOS18"))
     ibuf_inst
       (.I          (DATA_IN_FROM_PINS    [pin_count]),
        .O          (data_in_from_pins_int[pin_count]));

    // Pass through the delay
    ////-------------------------------
   assign data_in_from_pins_delay[pin_count] = data_in_from_pins_int[pin_count];
 
    // Connect the delayed data to the fabric
    ////--------------------------------------

    // Pack the registers into the IOB

    wire data_in_to_device_int;
    (* IOB = "true" *)
    FDRE fdre_in_inst
      (.D              (data_in_from_pins_delay[pin_count]),
       .C              (clk_div),
       .CE             (clock_enable),
       .R              (IO_RESET),
       .Q              (data_in_to_device_int)
      );
    assign DATA_IN_TO_DEVICE[pin_count] = data_in_to_device_int;
  end
  endgenerate

endmodule
