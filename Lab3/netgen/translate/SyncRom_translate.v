////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: SyncRom_translate.v
// /___/   /\     Timestamp: Sun Oct 25 10:15:23 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim SyncRom.ngd SyncRom_translate.v 
// Device	: xa3s500eftg256-4
// Input file	: SyncRom.ngd
// Output file	: C:\Users\Alex\Documents\Labs\Lab3\netgen\translate\SyncRom_translate.v
// # of Modules	: 1
// Design Name	: SyncRom
// Xilinx        : C:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module SyncRom (
  clk, data, address
);
  input clk;
  output [3 : 0] data;
  input [3 : 0] address;
  wire Mrom_rdata_mux0000;
  wire Mrom_rdata_mux00001;
  wire Mrom_rdata_mux00002;
  wire Mrom_rdata_mux00003;
  wire clk_BUFGP;
  wire \clk_BUFGP/IBUFG_2 ;
  wire VCC;
  wire GND;
  wire [3 : 0] rdata;
  X_FF #(
    .INIT ( 1'b0 ))
  rdata_0 (
    .CLK(clk_BUFGP),
    .I(Mrom_rdata_mux0000),
    .O(rdata[0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  rdata_1 (
    .CLK(clk_BUFGP),
    .I(Mrom_rdata_mux00001),
    .O(rdata[1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  rdata_2 (
    .CLK(clk_BUFGP),
    .I(Mrom_rdata_mux00002),
    .O(rdata[2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  rdata_3 (
    .CLK(clk_BUFGP),
    .I(Mrom_rdata_mux00003),
    .O(rdata[3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_BUF   address_3_IBUF (
    .I(address[3]),
    .O(Mrom_rdata_mux00003)
  );
  X_BUF   address_2_IBUF (
    .I(address[2]),
    .O(Mrom_rdata_mux00002)
  );
  X_BUF   address_1_IBUF (
    .I(address[1]),
    .O(Mrom_rdata_mux00001)
  );
  X_BUF   address_0_IBUF (
    .I(address[0]),
    .O(Mrom_rdata_mux0000)
  );
  X_IPAD   \address<0>  (
    .PAD(address[0])
  );
  X_IPAD   \address<1>  (
    .PAD(address[1])
  );
  X_IPAD   \address<2>  (
    .PAD(address[2])
  );
  X_IPAD   \address<3>  (
    .PAD(address[3])
  );
  X_IPAD   clk_20 (
    .PAD(clk)
  );
  X_OPAD   \data<0>  (
    .PAD(data[0])
  );
  X_OPAD   \data<1>  (
    .PAD(data[1])
  );
  X_OPAD   \data<2>  (
    .PAD(data[2])
  );
  X_OPAD   \data<3>  (
    .PAD(data[3])
  );
  X_CKBUF   \clk_BUFGP/BUFG  (
    .I(\clk_BUFGP/IBUFG_2 ),
    .O(clk_BUFGP)
  );
  X_CKBUF   \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk_BUFGP/IBUFG_2 )
  );
  X_OBUF   data_0_OBUF (
    .I(rdata[0]),
    .O(data[0])
  );
  X_OBUF   data_1_OBUF (
    .I(rdata[1]),
    .O(data[1])
  );
  X_OBUF   data_2_OBUF (
    .I(rdata[2]),
    .O(data[2])
  );
  X_OBUF   data_3_OBUF (
    .I(rdata[3]),
    .O(data[3])
  );
  X_ONE   NlwBlock_SyncRom_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_SyncRom_GND (
    .O(GND)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

