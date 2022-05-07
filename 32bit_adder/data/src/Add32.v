module fastAdder_4(
  input[3:0] A,
  input[3:0] B,
  input C0_in,
  output[3:0] S,
  output G,//G3
  output P,//P3
  output C2_out////the carry out of the third bit of adder, just for for judging Overflow or not
);
wire[3:0] g,p;
wire[3:0] c;
assign c[0]=C0_in;
assign p=A^B;
assign g=A&B;
assign c[1]=g[0]|(p[0]&c[0]);
assign c[2]=g[1]|(p[1]&(g[0]|(p[0]&c[0])));
assign c[3]=g[2]|(p[2]&(g[1]|(p[1]&(g[0]|(p[0]&c[0])))));
assign S=p^c[3:0];

assign G=g[3]|(p[3]&(g[2]|(p[2]&(g[1]|(p[1]&g[0])))));//the last carry out
assign P=p[3]&p[2]&p[1]&p[0];
assign C2_out=c[3];
endmodule


module Carry_Generation(//(G,P)=(G1,P1) dot ((G0,P0)=(G1+G0P0,P1P0)
input [1:0] G,
input [1:0] P,
input Ci,
output Go,
output Po,
output Co
);
assign Go=G[1]|(P[1]&G[0]);
assign Po=P[1]&P[0];
assign Co=G[0]|(P[0]&Ci);//(CO,0)=(G,P) dot ((Ci,0)
endmodule


module add_8(//
input [7:0] A,
input[7:0] B,
input  Ci,
output [7:0]S,
output G,
output P,
output C8in
);
wire [1:0] g,p;
wire c1;
wire C4in;
fastAdder_4   A0(A[3:0],B[3:0],Ci,S[3:0],g[0],p[0],C4in);
Carry_Generation  CC(g,p,Ci,G,P,c1);
fastAdder_4    A1(A[7:4],B[7:4],c1,S[7:4],g[1],p[1],C8in);
endmodule

module add_16(
input [15:0] A,
input[15:0] B,
input  Ci,
output [15:0]S,
output G,
output P,
output C16in
);
wire [1:0] g,p;
wire c1;
wire C8in;
add_8   A0(A[7:0],B[7:0],Ci,S[7:0],g[0],p[0],C8in);
Carry_Generation  CC(g,p,Ci,G,P,c1);
add_8     A1(A[15:8],B[15:8],c1,S[15:8],g[1],p[1],C16in);
endmodule

module add_32(
input [31:0] A,
input[31:0] B,
input  Ci,
output [31:0]S,
output G,
output P,
output C32in
);
wire [1:0] g,p;
wire c1;
wire C16in;
add_16  A0(A[15:0],B[15:0],Ci,S[15:0],g[0],p[0],C16in);
Carry_Generation  CC(g,p,Ci,G,P,c1);
add_16     A1(A[31:16],B[31:16],c1,S[31:16],g[1],p[1],C32in);
endmodule

module Add32(
output  Overflow,
output [31:0] result,
input  [31:0] A,
input  [31:0] B,
input isSub,//if A-B ,then isSub=1, else isSub=0
input isSign
);
wire [31:0] Btemp;
wire g,p,Ci,C31_out;
wire C31_in;
assign Btemp=isSub?~B:B;//if A-B ,the -B=~B+1
assign Ci=isSub;
assign C31_out=g|(p&isSub);
add_32 tree_add32(A,Btemp,Ci,result,g,p,C31_in);//This pin is deliberately brought out just for judging Overflow or not
assign Overflow=isSign?(C31_out^C31_in):(C31_out^isSub);
endmodule
