// Verilog test fixture created from schematic D:\ISEcode\MyLATCHS\MS_FLIPFLOP.sch - Fri Nov 04 20:36:05 2022

`timescale 1ns / 1ps

module MS_FLIPFLOP_MS_FLIPFLOP_sch_tb();

// Inputs
   reg R;
   reg S;
   reg C;

// Output
   wire Y;
   wire Q;
   wire Q1;

// Bidirs

// Instantiate the UUT
   MS_FLIPFLOP UUT (
		.R(R), 
		.S(S), 
		.C(C), 
		.Y(Y), 
		.Q(Q), 
		.Q1(Q1)
   );
// Initialize Inputs

       initial begin
      //基本功能
		C = 1;S=1;R=0;#50;
      C = 0;S=1;R=0;#50;
      C = 1;S=0;R=1;#50;
      C = 0;S=1;R=0;#50;
      C = 1;S=1;R=0;#50;
      C = 0;S=1;R=0;#50;
      //一次性采样
      C = 1;S=0;R=1;#10;
      S=1;R=0;#5;
      S=0;R=1;#10;
      S=1;R=0;#5;
      S=0;R=1;#20;
      C=0;#50;
      C=1;S=1;R=0;#50;

       end;
endmodule
