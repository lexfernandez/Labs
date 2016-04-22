////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: SCounter_Main_synthesis.v
// /___/   /\     Timestamp: Sun Dec 13 21:24:38 2015
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim SCounter_Main.ngc SCounter_Main_synthesis.v 
// Device	: xa3s500e-4-ftg256
// Input file	: SCounter_Main.ngc
// Output file	: C:\Users\Alex\Documents\Labs\Clock\netgen\synthesis\SCounter_Main_synthesis.v
// # of Modules	: 1
// Design Name	: SCounter_Main
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

module SCounter_Main (
  reset, resetclk, segments
);
  input reset;
  input resetclk;
  output [6 : 0] segments;
  wire segments_5_OBUF_8;
  wire [1 : 1] count;
  GND   XST_GND (
    .G(count[1])
  );
  VCC   XST_VCC (
    .P(segments_5_OBUF_8)
  );
  OBUF   segments_6_OBUF (
    .I(count[1]),
    .O(segments[6])
  );
  OBUF   segments_5_OBUF (
    .I(segments_5_OBUF_8),
    .O(segments[5])
  );
  OBUF   segments_4_OBUF (
    .I(segments_5_OBUF_8),
    .O(segments[4])
  );
  OBUF   segments_3_OBUF (
    .I(segments_5_OBUF_8),
    .O(segments[3])
  );
  OBUF   segments_2_OBUF (
    .I(segments_5_OBUF_8),
    .O(segments[2])
  );
  OBUF   segments_1_OBUF (
    .I(segments_5_OBUF_8),
    .O(segments[1])
  );
  OBUF   segments_0_OBUF (
    .I(segments_5_OBUF_8),
    .O(segments[0])
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

