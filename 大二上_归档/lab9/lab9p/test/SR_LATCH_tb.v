// Verilog test fixture created from schematic D:\ISEcode\MyLATCHS\SR_LATCH.sch - Fri Nov 04 19:56:15 2022

`timescale 1ns / 1ps

module SR_LATCH_SR_LATCH_sch_tb();

// Inputs
   reg S;
   reg R;

// Output
   wire Q;
   wire Q1;

// Bidirs

// Instantiate the UUT
   SR_LATCH UUT (
		.S(S), 
		.R(R), 
		.Q(Q), 
		.Q1(Q1)
   );
// Initialize Input
       initial begin
		S = 1;R = 1;#50;
      S = 0;R = 1;#50;
      S = 1;R = 1;#50;
      R = 0;S = 1;#50;
      S = 1;R = 1;#50;
      S = 0;R = 0;#50;
      S = 1;R = 1;#50;
      end;
endmodule
