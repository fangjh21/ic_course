/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP5-2
// Date      : Thu Apr 28 20:20:48 2022
/////////////////////////////////////////////////////////////


module URISC ( clk_PH1, clk_PH2, rst_n, RUN, CSMR, WRITE, RDMR, ADDRESS, 
        DATA_IN, DATA_OUT );
  output [7:0] ADDRESS;
  input [7:0] DATA_IN;
  output [7:0] DATA_OUT;
  input clk_PH1, clk_PH2, rst_n, RUN;
  output CSMR, WRITE, RDMR;
  wire   Z_reg, N_reg, N19, add_outn, N21, N23, N24, N25, N26, N27, N28, N29,
         N30, N33, N34, N35, N36, N37, N38, N39, N40, N44, N45, N46, N47, N48,
         N49, N50, N51, N53, N54, N55, N56, N57, N58, N59, N60,
         \intadd_0/A[5] , \intadd_0/A[4] , \intadd_0/A[3] , \intadd_0/A[2] ,
         \intadd_0/A[1] , \intadd_0/A[0] , \intadd_0/B[5] , \intadd_0/B[4] ,
         \intadd_0/B[3] , \intadd_0/B[2] , \intadd_0/B[1] , \intadd_0/B[0] ,
         \intadd_0/CI , \intadd_0/SUM[5] , \intadd_0/SUM[4] ,
         \intadd_0/SUM[3] , \intadd_0/SUM[2] , \intadd_0/SUM[1] ,
         \intadd_0/SUM[0] , \intadd_0/n6 , \intadd_0/n5 , \intadd_0/n4 ,
         \intadd_0/n3 , \intadd_0/n2 , \intadd_0/n1 , n65, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  wire   [7:0] PC_reg;
  wire   [7:0] R_reg;
  wire   [7:0] MDR_reg;
  assign CSMR = 1'b1;
  assign DATA_OUT[7] = add_outn;

  DFFSHQX1 \PC_reg_reg[0]  ( .D(N53), .CK(clk_PH1), .SN(rst_n), .Q(PC_reg[0])
         );
  DFFSHQX1 \current_state_reg[0]  ( .D(next_state[0]), .CK(clk_PH1), .SN(rst_n), .Q(current_state[0]) );
  DFFSHQX1 \current_state_reg[1]  ( .D(next_state[1]), .CK(clk_PH1), .SN(rst_n), .Q(current_state[1]) );
  DFFSHQX1 \current_state_reg[2]  ( .D(next_state[2]), .CK(clk_PH1), .SN(rst_n), .Q(current_state[2]) );
  DFFSHQX1 \current_state_reg[3]  ( .D(next_state[3]), .CK(clk_PH1), .SN(rst_n), .Q(current_state[3]) );
  DFFRHQX1 \PC_reg_reg[1]  ( .D(N54), .CK(clk_PH1), .RN(rst_n), .Q(PC_reg[1])
         );
  DFFRHQX1 \PC_reg_reg[2]  ( .D(N55), .CK(clk_PH1), .RN(rst_n), .Q(PC_reg[2])
         );
  DFFRHQX1 \PC_reg_reg[3]  ( .D(N56), .CK(clk_PH1), .RN(rst_n), .Q(PC_reg[3])
         );
  DFFRHQX1 \PC_reg_reg[4]  ( .D(N57), .CK(clk_PH1), .RN(rst_n), .Q(PC_reg[4])
         );
  DFFRHQX1 \PC_reg_reg[5]  ( .D(N58), .CK(clk_PH1), .RN(rst_n), .Q(PC_reg[5])
         );
  DFFRHQX1 \PC_reg_reg[6]  ( .D(N59), .CK(clk_PH1), .RN(rst_n), .Q(PC_reg[6])
         );
  DFFRHQX1 \PC_reg_reg[7]  ( .D(N60), .CK(clk_PH1), .RN(rst_n), .Q(PC_reg[7])
         );
  DFFRHQX1 N_reg_reg ( .D(N21), .CK(clk_PH1), .RN(rst_n), .Q(N_reg) );
  DFFRHQX1 Z_reg_reg ( .D(N19), .CK(clk_PH1), .RN(rst_n), .Q(Z_reg) );
  DFFRHQX1 \MDR_reg_reg[0]  ( .D(N33), .CK(clk_PH1), .RN(rst_n), .Q(MDR_reg[0]) );
  DFFRHQX1 \R_reg_reg[0]  ( .D(N23), .CK(clk_PH1), .RN(rst_n), .Q(R_reg[0]) );
  DFFRHQX1 \MDR_reg_reg[1]  ( .D(N34), .CK(clk_PH1), .RN(rst_n), .Q(MDR_reg[1]) );
  DFFRHQX1 \R_reg_reg[1]  ( .D(N24), .CK(clk_PH1), .RN(rst_n), .Q(R_reg[1]) );
  DFFRHQX1 \MDR_reg_reg[2]  ( .D(N35), .CK(clk_PH1), .RN(rst_n), .Q(MDR_reg[2]) );
  DFFRHQX1 \R_reg_reg[2]  ( .D(N25), .CK(clk_PH1), .RN(rst_n), .Q(R_reg[2]) );
  DFFRHQX1 \MDR_reg_reg[3]  ( .D(N36), .CK(clk_PH1), .RN(rst_n), .Q(MDR_reg[3]) );
  DFFRHQX1 \R_reg_reg[3]  ( .D(N26), .CK(clk_PH1), .RN(rst_n), .Q(R_reg[3]) );
  DFFRHQX1 \MDR_reg_reg[4]  ( .D(N37), .CK(clk_PH1), .RN(rst_n), .Q(MDR_reg[4]) );
  DFFRHQX1 \R_reg_reg[4]  ( .D(N27), .CK(clk_PH1), .RN(rst_n), .Q(R_reg[4]) );
  DFFRHQX1 \MDR_reg_reg[5]  ( .D(N38), .CK(clk_PH1), .RN(rst_n), .Q(MDR_reg[5]) );
  DFFRHQX1 \R_reg_reg[5]  ( .D(N28), .CK(clk_PH1), .RN(rst_n), .Q(R_reg[5]) );
  DFFRHQX1 \MDR_reg_reg[6]  ( .D(N39), .CK(clk_PH1), .RN(rst_n), .Q(MDR_reg[6]) );
  DFFRHQX1 \R_reg_reg[6]  ( .D(N29), .CK(clk_PH1), .RN(rst_n), .Q(R_reg[6]) );
  DFFRHQX1 \MDR_reg_reg[7]  ( .D(N40), .CK(clk_PH1), .RN(rst_n), .Q(MDR_reg[7]) );
  DFFRHQX1 \R_reg_reg[7]  ( .D(N30), .CK(clk_PH1), .RN(rst_n), .Q(R_reg[7]) );
  DFFRHQX1 \MAR_reg_reg[0]  ( .D(N44), .CK(clk_PH2), .RN(rst_n), .Q(ADDRESS[0]) );
  DFFRHQX1 \MAR_reg_reg[1]  ( .D(N45), .CK(clk_PH2), .RN(rst_n), .Q(ADDRESS[1]) );
  DFFRHQX1 \MAR_reg_reg[2]  ( .D(N46), .CK(clk_PH2), .RN(rst_n), .Q(ADDRESS[2]) );
  DFFRHQX1 \MAR_reg_reg[3]  ( .D(N47), .CK(clk_PH2), .RN(rst_n), .Q(ADDRESS[3]) );
  DFFRHQX1 \MAR_reg_reg[4]  ( .D(N48), .CK(clk_PH2), .RN(rst_n), .Q(ADDRESS[4]) );
  DFFRHQX1 \MAR_reg_reg[5]  ( .D(N49), .CK(clk_PH2), .RN(rst_n), .Q(ADDRESS[5]) );
  DFFRHQX1 \MAR_reg_reg[6]  ( .D(N50), .CK(clk_PH2), .RN(rst_n), .Q(ADDRESS[6]) );
  DFFRHQX1 \MAR_reg_reg[7]  ( .D(N51), .CK(clk_PH2), .RN(rst_n), .Q(ADDRESS[7]) );
  ADDFXL \intadd_0/U7  ( .A(\intadd_0/A[0] ), .B(\intadd_0/B[0] ), .CI(
        \intadd_0/CI ), .CO(\intadd_0/n6 ), .S(\intadd_0/SUM[0] ) );
  ADDFXL \intadd_0/U5  ( .A(\intadd_0/A[2] ), .B(\intadd_0/B[2] ), .CI(
        \intadd_0/n5 ), .CO(\intadd_0/n4 ), .S(\intadd_0/SUM[2] ) );
  ADDFXL \intadd_0/U6  ( .A(\intadd_0/A[1] ), .B(\intadd_0/B[1] ), .CI(
        \intadd_0/n6 ), .CO(\intadd_0/n5 ), .S(\intadd_0/SUM[1] ) );
  ADDFXL \intadd_0/U4  ( .A(\intadd_0/A[3] ), .B(\intadd_0/B[3] ), .CI(
        \intadd_0/n4 ), .CO(\intadd_0/n3 ), .S(\intadd_0/SUM[3] ) );
  ADDFXL \intadd_0/U2  ( .A(\intadd_0/A[5] ), .B(\intadd_0/B[5] ), .CI(
        \intadd_0/n2 ), .CO(\intadd_0/n1 ), .S(\intadd_0/SUM[5] ) );
  ADDFXL \intadd_0/U3  ( .A(\intadd_0/A[4] ), .B(\intadd_0/B[4] ), .CI(
        \intadd_0/n3 ), .CO(\intadd_0/n2 ), .S(\intadd_0/SUM[4] ) );
  INVX1 U125 ( .A(n66), .Y(N39) );
  INVX1 U126 ( .A(add_outn), .Y(n106) );
  INVX1 U127 ( .A(n67), .Y(N38) );
  INVX1 U128 ( .A(\intadd_0/SUM[5] ), .Y(DATA_OUT[6]) );
  INVX1 U129 ( .A(n74), .Y(N37) );
  INVX1 U130 ( .A(n73), .Y(N36) );
  INVX1 U131 ( .A(\intadd_0/SUM[4] ), .Y(DATA_OUT[5]) );
  INVX1 U132 ( .A(n69), .Y(N35) );
  INVX1 U133 ( .A(\intadd_0/SUM[2] ), .Y(DATA_OUT[3]) );
  INVX1 U134 ( .A(n68), .Y(N34) );
  INVX1 U135 ( .A(\intadd_0/SUM[1] ), .Y(DATA_OUT[2]) );
  INVX1 U136 ( .A(n72), .Y(N33) );
  INVX1 U137 ( .A(DATA_OUT[0]), .Y(n104) );
  INVX1 U138 ( .A(WRITE), .Y(n101) );
  INVX1 U139 ( .A(n75), .Y(n102) );
  INVX1 U140 ( .A(n96), .Y(n95) );
  AOI211X1 U141 ( .A0(n103), .A1(n117), .B0(n116), .C0(n75), .Y(n96) );
  AND2XL U142 ( .A(n70), .B(n80), .Y(n103) );
  AOI22XL U143 ( .A0(n96), .A1(PC_reg[0]), .B0(MDR_reg[0]), .B1(n95), .Y(n99)
         );
  NAND2XL U144 ( .A(n80), .B(n117), .Y(n65) );
  NAND2XL U145 ( .A(current_state[0]), .B(current_state[2]), .Y(n79) );
  AOI22XL U146 ( .A0(n96), .A1(PC_reg[5]), .B0(MDR_reg[5]), .B1(n95), .Y(
        \intadd_0/B[4] ) );
  INVX1 U147 ( .A(current_state[1]), .Y(n117) );
  NAND2XL U148 ( .A(WRITE), .B(add_outn), .Y(n100) );
  AOI22XL U149 ( .A0(n96), .A1(PC_reg[6]), .B0(MDR_reg[6]), .B1(n95), .Y(
        \intadd_0/B[5] ) );
  AOI22XL U150 ( .A0(n96), .A1(PC_reg[4]), .B0(MDR_reg[4]), .B1(n95), .Y(
        \intadd_0/B[3] ) );
  AOI22XL U151 ( .A0(n96), .A1(PC_reg[2]), .B0(MDR_reg[2]), .B1(n95), .Y(
        \intadd_0/B[1] ) );
  INVX1 U152 ( .A(current_state[2]), .Y(n87) );
  NAND4XL U153 ( .A(n102), .B(RUN), .C(n82), .D(n81), .Y(n119) );
  OAI2BB1XL U154 ( .A0N(N_reg), .A1N(n80), .B0(n120), .Y(n81) );
  AOI22XL U155 ( .A0(n78), .A1(Z_reg), .B0(n77), .B1(n76), .Y(n82) );
  AOI22XL U156 ( .A0(n103), .A1(current_state[1]), .B0(R_reg[0]), .B1(WRITE), 
        .Y(n71) );
  INVX1 U157 ( .A(\intadd_0/SUM[0] ), .Y(DATA_OUT[1]) );
  INVX1 U158 ( .A(\intadd_0/SUM[3] ), .Y(DATA_OUT[4]) );
  OAI2BB1XL U159 ( .A0N(n103), .A1N(n79), .B0(n94), .Y(RDMR) );
  NAND2XL U160 ( .A(n118), .B(n87), .Y(n70) );
  INVX1 U161 ( .A(current_state[3]), .Y(n80) );
  INVX1 U162 ( .A(n78), .Y(n94) );
  AOI22XL U163 ( .A0(n96), .A1(PC_reg[3]), .B0(MDR_reg[3]), .B1(n95), .Y(
        \intadd_0/B[2] ) );
  AOI22XL U164 ( .A0(n96), .A1(PC_reg[1]), .B0(MDR_reg[1]), .B1(n95), .Y(
        \intadd_0/CI ) );
  INVX1 U165 ( .A(current_state[0]), .Y(n118) );
  OAI2BB1XL U166 ( .A0N(current_state[1]), .A1N(n103), .B0(n102), .Y(n105) );
  AOI22XL U167 ( .A0(n96), .A1(PC_reg[7]), .B0(MDR_reg[7]), .B1(n95), .Y(n83)
         );
  OAI2BB1XL U168 ( .A0N(n116), .A1N(MDR_reg[7]), .B0(n115), .Y(N30) );
  NAND2XL U169 ( .A(R_reg[7]), .B(n114), .Y(n115) );
  NAND2XL U170 ( .A(n89), .B(n100), .Y(N40) );
  AOI22XL U171 ( .A0(MDR_reg[7]), .A1(n88), .B0(DATA_IN[7]), .B1(RDMR), .Y(n89) );
  OAI2BB1XL U172 ( .A0N(MDR_reg[6]), .A1N(n116), .B0(n113), .Y(N29) );
  NAND2XL U173 ( .A(R_reg[6]), .B(n114), .Y(n113) );
  OAI2BB1XL U174 ( .A0N(MDR_reg[5]), .A1N(n116), .B0(n112), .Y(N28) );
  NAND2XL U175 ( .A(R_reg[5]), .B(n114), .Y(n112) );
  OAI2BB1XL U176 ( .A0N(MDR_reg[4]), .A1N(n116), .B0(n111), .Y(N27) );
  NAND2XL U177 ( .A(R_reg[4]), .B(n114), .Y(n111) );
  OAI2BB1XL U178 ( .A0N(MDR_reg[3]), .A1N(n116), .B0(n110), .Y(N26) );
  NAND2XL U179 ( .A(R_reg[3]), .B(n114), .Y(n110) );
  OAI2BB1XL U180 ( .A0N(MDR_reg[2]), .A1N(n116), .B0(n109), .Y(N25) );
  NAND2XL U181 ( .A(R_reg[2]), .B(n114), .Y(n109) );
  OAI2BB1XL U182 ( .A0N(MDR_reg[1]), .A1N(n116), .B0(n108), .Y(N24) );
  NAND2XL U183 ( .A(R_reg[1]), .B(n114), .Y(n108) );
  OAI2BB1XL U184 ( .A0N(MDR_reg[0]), .A1N(n116), .B0(n107), .Y(N23) );
  NAND2XL U185 ( .A(R_reg[0]), .B(n114), .Y(n107) );
  OAI31XL U186 ( .A0(n94), .A1(n93), .A2(n92), .B0(n91), .Y(N19) );
  NAND2XL U187 ( .A(n94), .B(Z_reg), .Y(n91) );
  NAND2XL U188 ( .A(DATA_OUT[4]), .B(DATA_OUT[3]), .Y(n93) );
  NAND3XL U189 ( .A(add_outn), .B(n90), .C(DATA_OUT[0]), .Y(n92) );
  OAI2BB1XL U190 ( .A0N(N_reg), .A1N(n101), .B0(n100), .Y(N21) );
  NAND2XL U191 ( .A(current_state[0]), .B(current_state[1]), .Y(n86) );
  INVX1 U192 ( .A(n116), .Y(n114) );
  NOR2X1 U193 ( .A(n65), .B(n79), .Y(WRITE) );
  NOR2X1 U194 ( .A(n70), .B(n65), .Y(n78) );
  NOR2X1 U195 ( .A(WRITE), .B(RDMR), .Y(n88) );
  AOI222XL U196 ( .A0(DATA_OUT[6]), .A1(WRITE), .B0(n88), .B1(MDR_reg[6]), 
        .C0(RDMR), .C1(DATA_IN[6]), .Y(n66) );
  AOI222XL U197 ( .A0(DATA_OUT[5]), .A1(WRITE), .B0(n88), .B1(MDR_reg[5]), 
        .C0(RDMR), .C1(DATA_IN[5]), .Y(n67) );
  AOI222XL U198 ( .A0(DATA_OUT[1]), .A1(WRITE), .B0(n88), .B1(MDR_reg[1]), 
        .C0(RDMR), .C1(DATA_IN[1]), .Y(n68) );
  AOI222XL U199 ( .A0(DATA_OUT[2]), .A1(WRITE), .B0(n88), .B1(MDR_reg[2]), 
        .C0(RDMR), .C1(DATA_IN[2]), .Y(n69) );
  NOR3X1 U200 ( .A(current_state[3]), .B(n70), .C(n117), .Y(n116) );
  NOR3X1 U201 ( .A(current_state[1]), .B(n80), .C(n70), .Y(n75) );
  XOR2X1 U202 ( .A(n99), .B(n71), .Y(DATA_OUT[0]) );
  AOI222XL U203 ( .A0(DATA_OUT[0]), .A1(WRITE), .B0(MDR_reg[0]), .B1(n88), 
        .C0(RDMR), .C1(DATA_IN[0]), .Y(n72) );
  AOI222XL U204 ( .A0(DATA_OUT[3]), .A1(WRITE), .B0(n88), .B1(MDR_reg[3]), 
        .C0(RDMR), .C1(DATA_IN[3]), .Y(n73) );
  AOI222XL U205 ( .A0(DATA_OUT[4]), .A1(WRITE), .B0(n88), .B1(MDR_reg[4]), 
        .C0(RDMR), .C1(DATA_IN[4]), .Y(n74) );
  NOR4X1 U206 ( .A(PC_reg[0]), .B(PC_reg[3]), .C(PC_reg[2]), .D(PC_reg[1]), 
        .Y(n77) );
  NOR4X1 U207 ( .A(PC_reg[7]), .B(PC_reg[6]), .C(PC_reg[5]), .D(PC_reg[4]), 
        .Y(n76) );
  NOR2X1 U208 ( .A(n117), .B(n79), .Y(n120) );
  NOR2X1 U209 ( .A(current_state[0]), .B(n119), .Y(next_state[0]) );
  NOR2X1 U210 ( .A(n101), .B(R_reg[7]), .Y(n85) );
  XOR2X1 U211 ( .A(\intadd_0/n1 ), .B(n83), .Y(n84) );
  XOR2X1 U212 ( .A(n85), .B(n84), .Y(add_outn) );
  AOI2BB2X1 U213 ( .B0(n106), .B1(RDMR), .A0N(RDMR), .A1N(ADDRESS[7]), .Y(N51)
         );
  AOI2BB2X1 U214 ( .B0(\intadd_0/SUM[5] ), .B1(RDMR), .A0N(RDMR), .A1N(
        ADDRESS[6]), .Y(N50) );
  AOI2BB2X1 U215 ( .B0(\intadd_0/SUM[4] ), .B1(RDMR), .A0N(RDMR), .A1N(
        ADDRESS[5]), .Y(N49) );
  AOI2BB2X1 U216 ( .B0(\intadd_0/SUM[3] ), .B1(RDMR), .A0N(RDMR), .A1N(
        ADDRESS[4]), .Y(N48) );
  AOI2BB2X1 U217 ( .B0(\intadd_0/SUM[2] ), .B1(RDMR), .A0N(RDMR), .A1N(
        ADDRESS[3]), .Y(N47) );
  AOI2BB2X1 U218 ( .B0(\intadd_0/SUM[1] ), .B1(RDMR), .A0N(RDMR), .A1N(
        ADDRESS[2]), .Y(N46) );
  AOI2BB2X1 U219 ( .B0(\intadd_0/SUM[0] ), .B1(RDMR), .A0N(RDMR), .A1N(
        ADDRESS[1]), .Y(N45) );
  AOI2BB2X1 U220 ( .B0(n104), .B1(RDMR), .A0N(RDMR), .A1N(ADDRESS[0]), .Y(N44)
         );
  AOI211X1 U221 ( .A0(n87), .A1(n86), .B0(n120), .C0(n119), .Y(next_state[2])
         );
  NOR4X1 U222 ( .A(\intadd_0/SUM[5] ), .B(\intadd_0/SUM[4] ), .C(
        \intadd_0/SUM[1] ), .D(\intadd_0/SUM[0] ), .Y(n90) );
  OR2X1 U223 ( .A(R_reg[6]), .B(n101), .Y(\intadd_0/A[5] ) );
  OR2X1 U224 ( .A(R_reg[5]), .B(n101), .Y(\intadd_0/A[4] ) );
  OR2X1 U225 ( .A(R_reg[4]), .B(n101), .Y(\intadd_0/A[3] ) );
  OR2X1 U226 ( .A(R_reg[3]), .B(n101), .Y(\intadd_0/A[2] ) );
  OR2X1 U227 ( .A(R_reg[2]), .B(n101), .Y(\intadd_0/A[1] ) );
  OR2X1 U228 ( .A(R_reg[1]), .B(n101), .Y(\intadd_0/A[0] ) );
  AOI21X1 U229 ( .A0(n103), .A1(current_state[1]), .B0(WRITE), .Y(n98) );
  NOR2X1 U230 ( .A(R_reg[0]), .B(n101), .Y(n97) );
  AOI2BB1X1 U231 ( .A0N(n99), .A1N(n98), .B0(n97), .Y(\intadd_0/B[0] ) );
  AOI2BB2X1 U233 ( .B0(n104), .B1(n105), .A0N(n105), .A1N(PC_reg[0]), .Y(N53)
         );
  AOI2BB2X1 U234 ( .B0(\intadd_0/SUM[0] ), .B1(n105), .A0N(n105), .A1N(
        PC_reg[1]), .Y(N54) );
  AOI2BB2X1 U235 ( .B0(\intadd_0/SUM[1] ), .B1(n105), .A0N(n105), .A1N(
        PC_reg[2]), .Y(N55) );
  AOI2BB2X1 U236 ( .B0(\intadd_0/SUM[2] ), .B1(n105), .A0N(n105), .A1N(
        PC_reg[3]), .Y(N56) );
  AOI2BB2X1 U237 ( .B0(\intadd_0/SUM[3] ), .B1(n105), .A0N(n105), .A1N(
        PC_reg[4]), .Y(N57) );
  AOI2BB2X1 U238 ( .B0(\intadd_0/SUM[4] ), .B1(n105), .A0N(n105), .A1N(
        PC_reg[5]), .Y(N58) );
  AOI2BB2X1 U239 ( .B0(\intadd_0/SUM[5] ), .B1(n105), .A0N(n105), .A1N(
        PC_reg[6]), .Y(N59) );
  AOI2BB2X1 U240 ( .B0(n106), .B1(n105), .A0N(n105), .A1N(PC_reg[7]), .Y(N60)
         );
  AOI221XL U241 ( .A0(current_state[0]), .A1(current_state[1]), .B0(n118), 
        .B1(n117), .C0(n119), .Y(next_state[1]) );
  AOI2BB1X1 U242 ( .A0N(current_state[3]), .A1N(n120), .B0(n119), .Y(
        next_state[3]) );
endmodule

