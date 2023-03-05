// Verilog test fixture created from schematic D:\ISEcode\MyLATCHS\D_FLIPFLOP.sch - Fri Nov 04 20:49:26 2022

`timescale 1ns / 1ps

module D_FLIPFLOP_D_FLIPFLOP_sch_tb();

// Inputs
   reg S;
   reg R;
   reg C;
   reg D;

// Output
   wire QN;
   wire Q;

// Bidirs

// Instantiate the UUT
   D_FLIPFLOP UUT (
		.QN(QN), 
		.Q(Q), 
		.S(S), 
		.R(R), 
		.C(C), 
		.D(D)
   );
// Initialize Inputs
   
       initial begin
		S = 0;
		R = 1;
      #10;
      S = 1;
      R = 1;
       end
      always  begin
         D=0;#150;
         D=1;#150;
      end
      always begin
         C=0;#50;
         C=1;#50;
      end
   
endmodule
