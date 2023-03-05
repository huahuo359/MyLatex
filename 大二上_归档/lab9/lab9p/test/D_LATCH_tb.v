// Verilog test fixture created from schematic D:\ISEcode\MyLATCHS\D_LATCH.sch - Fri Nov 04 20:26:23 2022

`timescale 1ns / 1ps

module D_LATCH_D_LATCH_sch_tb();

// Inputs
   reg C;
   reg D;

// Output
   wire Q;
   wire Q1;

// Bidirs

// Instantiate the UUT
   D_LATCH UUT (
		.Q(Q), 
		.Q1(Q1), 
		.C(C), 
		.D(D)
   );
// Initialize Inputs
   
       initial begin
		C = 1;D = 1;#50;
      C = 0;#50;
      C = 1;D = 0;#50;
      C = 0;#50;

      //空翻现象
      C = 1;D=1;#10;
      D=0;#5;
      D=1;#10;
      D=0;#5;
      D=1;#10;
      D=0;#5;
      D=1;#5;
      C=0;#50;
      C=1;D=0;#50;
      C=0;
       end;
endmodule
