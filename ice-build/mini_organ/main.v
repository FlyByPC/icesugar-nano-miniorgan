// Code generated by Icestudio 0.9.0

`default_nettype none

//---- Top entity
module main #(
 parameter v2c7104 = 261,
 parameter v5fd494 = 293,
 parameter v7c6ee7 = 329,
 parameter vba020e = 349,
 parameter va00dbf = 391,
 parameter v6be366 = 440,
 parameter v6fbd90 = 494,
 parameter v0f4558 = 522
) (
 input [7:0] vd4e15e,
 input vclk,
 output vaad153
);
 localparam p1 = vba020e;
 localparam p2 = v6be366;
 localparam p3 = v6fbd90;
 localparam p4 = v0f4558;
 localparam p6 = va00dbf;
 localparam p7 = v7c6ee7;
 localparam p8 = v5fd494;
 localparam p9 = v2c7104;
 wire [0:7] w0;
 wire w5;
 wire w10;
 wire w11;
 wire w12;
 wire w13;
 wire w14;
 wire w15;
 wire w16;
 wire w17;
 wire w18;
 wire w19;
 wire w20;
 wire w21;
 wire w22;
 wire w23;
 wire w24;
 wire w25;
 assign w0 = vd4e15e;
 assign vaad153 = w5;
 assign w18 = vclk;
 assign w19 = vclk;
 assign w20 = vclk;
 assign w21 = vclk;
 assign w22 = vclk;
 assign w23 = vclk;
 assign w24 = vclk;
 assign w25 = vclk;
 assign w19 = w18;
 assign w20 = w18;
 assign w20 = w19;
 assign w21 = w18;
 assign w21 = w19;
 assign w21 = w20;
 assign w22 = w18;
 assign w22 = w19;
 assign w22 = w20;
 assign w22 = w21;
 assign w23 = w18;
 assign w23 = w19;
 assign w23 = w20;
 assign w23 = w21;
 assign w23 = w22;
 assign w24 = w18;
 assign w24 = w19;
 assign w24 = w20;
 assign w24 = w21;
 assign w24 = w22;
 assign w24 = w23;
 assign w25 = w18;
 assign w25 = w19;
 assign w25 = w20;
 assign w25 = w21;
 assign w25 = w22;
 assign w25 = w23;
 assign w25 = w24;
 main_v55c246 v55c246 (
  .notes(w0),
  .tone(w5),
  .N7(w10),
  .N6(w11),
  .N0(w12),
  .N1(w13),
  .N2(w14),
  .N3(w15),
  .N4(w16),
  .N5(w17)
 );
 v435b29 #(
  .v100e1b(p9)
 ) v248db1 (
  .v2efea4(w12),
  .v0daa9e(w18)
 );
 v435b29 #(
  .v100e1b(p8)
 ) v5d1ef0 (
  .v2efea4(w13),
  .v0daa9e(w19)
 );
 v435b29 #(
  .v100e1b(p7)
 ) v380724 (
  .v2efea4(w14),
  .v0daa9e(w20)
 );
 v435b29 #(
  .v100e1b(p1)
 ) v5432d8 (
  .v2efea4(w15),
  .v0daa9e(w21)
 );
 v435b29 #(
  .v100e1b(p6)
 ) veb1a02 (
  .v2efea4(w16),
  .v0daa9e(w22)
 );
 v435b29 #(
  .v100e1b(p2)
 ) vcd88d7 (
  .v2efea4(w17),
  .v0daa9e(w23)
 );
 v435b29 #(
  .v100e1b(p3)
 ) v105a46 (
  .v2efea4(w11),
  .v0daa9e(w24)
 );
 v435b29 #(
  .v100e1b(p4)
 ) vde7297 (
  .v2efea4(w10),
  .v0daa9e(w25)
 );
endmodule

//---- Top entity
module v435b29 #(
 parameter v100e1b = 440
) (
 input v0daa9e,
 output v2efea4
);
 localparam p2 = v100e1b;
 wire w0;
 wire w1;
 assign v2efea4 = w0;
 assign w1 = v0daa9e;
 v435b29_vac7386 #(
  .FREQ(p2)
 ) vac7386 (
  .clk_out(w0),
  .clk_in(w1)
 );
endmodule

//---------------------------------------------------
//-- PrescalerN
//-- - - - - - - - - - - - - - - - - - - - - - - - --
//-- Parametric N-bits prescaler
//---------------------------------------------------

module v435b29_vac7386 #(
 parameter FREQ = 0
) (
 input clk_in,
 output clk_out
);
 //Produces the requested frequency,
 //from an input clock of 12MHz.
 
 //-- divisor register
 reg [22:0] divcounter;
 reg ff;
 
 localparam clockfreq=12000000; //12MHz
 
 //-- N bit counter
 always @(posedge clk_in) begin
   divcounter <= divcounter + FREQ;
   if (divcounter >= (clockfreq/2)) begin
     //divcounter <= divcounter - 6000000; //More accurate?
     divcounter <= 0;
     ff <= ~ff;
     end
   end
 
 //-- Use the most significant bit as output
 assign clk_out = ff;
 
endmodule

module main_v55c246 (
 input [7:0] notes,
 input N7,
 input N6,
 input N5,
 input N4,
 input N3,
 input N2,
 input N1,
 input N0,
 output tone
);
 reg[3:0] theTone;
 reg[7:0] notereg;
 reg[3:0] theCount;
 
 always @ (*) begin
   theCount = $countones(notes);
   notereg = {N7,N6,N5,N4,N3,N2,N1,N0} & notes;
   theTone = $countones(notereg);
   end
   
 assign tone = (theTone*2>theCount);  
endmodule
