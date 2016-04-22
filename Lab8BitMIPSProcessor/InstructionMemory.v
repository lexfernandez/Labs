`timescale 1ns / 1ps

module InstructionMemory(
    input [7:0] address,
    output reg [15:0] data
);

    always @ (address)
    begin
        case (address)
				8'h00: data = 16'h0000;
            8'h01: data = 16'h4806;
            8'h02: data = 16'h4A04;
            8'h03: data = 16'h4C02;
            8'h04: data = 16'h4100;
            8'h05: data = 16'h4C04;
            8'h06: data = 16'h4300;
            8'h07: data = 16'h4C06;
            8'h08: data = 16'h0880;
            8'h09: data = 16'h4100;
            8'h0A: data = 16'h3900;
            8'h0B: data = 16'h4A00;
            8'h0C: data = 16'h6080;
            8'h0D: data = 16'h6888;
            8'h0E: data = 16'h5802;
            8'h0F: data = 16'h4100;
            8'h10: data = 16'h8850;
            8'h11: data = 16'h3D00;
            default: data = 16'h0000;
        endcase
    end
endmodule
