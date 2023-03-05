// Verilog test fixture created from schematic D:\ISEcode\MyLATCHS\CSR_LATCH.sch - Fri Nov 04 20:04:42 2022

`timescale 1ns / 1ps

module CSR_LATCH_CSR_LATCH_sch_tb();

// Inputs
   reg C;
   reg S;
   reg R;

// Output
   wire Q;
   wire Q1;

// Bidirs

// Instantiate the UUT
   CSR_LATCH UUT (
		.Q(Q), 
		.Q1(Q1), 
		.C(C), 
		.S(S), 
		.R(R)
   );
// Initialize Inputs
   
       initial begin
      C = 0;S = 1;R = 1;#50;
      C = 1;S = 1;R = 0;#50;
      C = 0;#50;
      C = 1;R = 1;S = 0;#50;
      C = 0;#50

      //空翻现象
      C = 1;S = 0;R = 1;#10;
      S = 0;R = 0;#5;
      S = 1;R = 0;#10;
      S = 0;R = 0;#5;
      R = 1;S = 0;#20;
      C = 0;#50;
      C = 1;S = 1;R = 0;#50;
      C = 0;

       end
   
endmodule
