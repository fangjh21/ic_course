/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : Q-2019.12-SP5-2
// Date      : Fri Jun  3 22:48:36 2022
/////////////////////////////////////////////////////////////


module URISC ( clk_PH1, rst_n, RUN, CSMR, WRITE, RDMR, ADDRESS, DATA_IN, 
        DATA_OUT );
  output [7:0] ADDRESS;
  input [7:0] DATA_IN;
  output [7:0] DATA_OUT;
  input clk_PH1, rst_n, RUN;
  output CSMR, WRITE, RDMR;
  wire   Z_reg, N_reg, N19, add_outn, N21, N23, N24, N26, N27, N28, N29, N30,
         N33, N34, N35, N36, N37, N38, N39, N40, N44, N45, N46, N47, N48, N49,
         N50, N51, N53, N54, N55, N56, N57, N58, N59, N60, n66, n67, n68, n69,
         n70, n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83,
         n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97,
         n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109,
         n110, n111, n112, n113, n114, n115, n116, n117, n118, n119, n120,
         n121, n122, n123, n124, n125, n126, n127, n128, n129, n130, n131,
         n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, n142,
         n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153,
         n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164,
         n165, n166, n167, n168, n169, n170, n171, n172, n173, n174, n175,
         n176, n177, n178, n179, n180, n181, n182, n183, n184, n185, n186,
         n187, n188, n189, n190, n191, n192, n193, n194, n195, n196, n197,
         n198, n199, n200, n201, n203, n204;
  wire   [3:0] current_state;
  wire   [3:0] next_state;
  wire   [7:0] PC_reg;
  wire   [7:0] R_reg;
  wire   [7:0] MDR_reg;
  assign CSMR = 1'b1;
  assign DATA_OUT[7] = add_outn;

  DFFSHQX1 \PC_reg_reg[0]  ( .D(N53), .CK(clk_PH1), .SN(rst_n), .Q(PC_reg[0])
         );
  DFFSHQX4 \current_state_reg[0]  ( .D(n203), .CK(clk_PH1), .SN(rst_n), .Q(
        current_state[0]) );
  DFFSHQX4 \current_state_reg[2]  ( .D(next_state[2]), .CK(clk_PH1), .SN(rst_n), .Q(current_state[2]) );
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
  DFFRHQX1 \MAR_reg_reg[0]  ( .D(N44), .CK(n204), .RN(rst_n), .Q(ADDRESS[0])
         );
  DFFRHQX1 \MAR_reg_reg[1]  ( .D(N45), .CK(n204), .RN(rst_n), .Q(ADDRESS[1])
         );
  DFFRHQX1 \MAR_reg_reg[2]  ( .D(N46), .CK(n204), .RN(rst_n), .Q(ADDRESS[2])
         );
  DFFRHQX1 \MAR_reg_reg[3]  ( .D(N47), .CK(n204), .RN(rst_n), .Q(ADDRESS[3])
         );
  DFFRHQX1 \MAR_reg_reg[5]  ( .D(N49), .CK(n204), .RN(rst_n), .Q(ADDRESS[5])
         );
  DFFSHQX1 \R_reg_reg[2]  ( .D(n66), .CK(clk_PH1), .SN(rst_n), .Q(n201) );
  DFFSHQX2 \current_state_reg[1]  ( .D(next_state[1]), .CK(clk_PH1), .SN(rst_n), .Q(current_state[1]) );
  DFFRHQX1 \MAR_reg_reg[6]  ( .D(N50), .CK(n204), .RN(rst_n), .Q(ADDRESS[6])
         );
  DFFRHQX1 \MAR_reg_reg[7]  ( .D(N51), .CK(n204), .RN(rst_n), .Q(ADDRESS[7])
         );
  DFFRHQX1 \MAR_reg_reg[4]  ( .D(N48), .CK(n204), .RN(rst_n), .Q(ADDRESS[4])
         );
  DFFSHQX1 \current_state_reg[3]  ( .D(next_state[3]), .CK(clk_PH1), .SN(rst_n), .Q(current_state[3]) );
  AND4X2 U126 ( .A(DATA_OUT[2]), .B(n182), .C(DATA_OUT[1]), .D(DATA_OUT[0]), 
        .Y(n183) );
  NAND2BX2 U127 ( .AN(current_state[0]), .B(n167), .Y(n91) );
  MX2X1 U128 ( .A(PC_reg[1]), .B(MDR_reg[1]), .S0(n113), .Y(n77) );
  INVX1 U129 ( .A(n123), .Y(n98) );
  INVX2 U130 ( .A(current_state[3]), .Y(n155) );
  INVXL U131 ( .A(RDMR), .Y(n200) );
  INVXL U132 ( .A(WRITE), .Y(n181) );
  INVXL U133 ( .A(n182), .Y(n186) );
  AOI211X1 U134 ( .A0(n167), .A1(n166), .B0(n187), .C0(n188), .Y(next_state[2]) );
  NAND2X1 U135 ( .A(n93), .B(n186), .Y(RDMR) );
  NAND2XL U136 ( .A(n110), .B(n119), .Y(n112) );
  NAND2XL U137 ( .A(n119), .B(n124), .Y(n100) );
  AOI21XL U138 ( .A0(n120), .A1(n124), .B0(n98), .Y(n99) );
  AOI2BB1X1 U139 ( .A0N(current_state[3]), .A1N(n188), .B0(n187), .Y(
        next_state[3]) );
  INVX1 U140 ( .A(n187), .Y(n177) );
  NAND2XL U141 ( .A(n157), .B(n156), .Y(n161) );
  XNOR2X1 U142 ( .A(n88), .B(n87), .Y(DATA_OUT[4]) );
  XNOR2X1 U143 ( .A(n105), .B(n104), .Y(DATA_OUT[6]) );
  XNOR2X1 U144 ( .A(n118), .B(n117), .Y(add_outn) );
  OAI21X1 U145 ( .A0(n131), .A1(n122), .B0(n121), .Y(n126) );
  OAI21X1 U146 ( .A0(n112), .A1(n131), .B0(n111), .Y(n118) );
  OAI21X1 U147 ( .A0(n131), .A1(n100), .B0(n99), .Y(n105) );
  OAI21X1 U148 ( .A0(n131), .A1(n127), .B0(n128), .Y(n88) );
  INVXL U149 ( .A(n138), .Y(n140) );
  INVX2 U150 ( .A(n106), .Y(n124) );
  INVX1 U151 ( .A(n133), .Y(n135) );
  NOR2X1 U152 ( .A(n85), .B(n84), .Y(n95) );
  NOR2X1 U153 ( .A(n77), .B(n76), .Y(n138) );
  NAND2X1 U154 ( .A(n169), .B(n181), .Y(n74) );
  NOR2X1 U155 ( .A(n155), .B(current_state[1]), .Y(n70) );
  NAND2X1 U156 ( .A(current_state[0]), .B(current_state[2]), .Y(n89) );
  INVX1 U157 ( .A(current_state[1]), .Y(n69) );
  AND4X2 U158 ( .A(DATA_OUT[4]), .B(DATA_OUT[5]), .C(DATA_OUT[3]), .D(n183), 
        .Y(n184) );
  NAND2XL U159 ( .A(DATA_OUT[4]), .B(RDMR), .Y(n196) );
  NAND2XL U160 ( .A(DATA_OUT[6]), .B(RDMR), .Y(n198) );
  NAND2XL U161 ( .A(add_outn), .B(RDMR), .Y(n199) );
  XNOR2X1 U162 ( .A(n126), .B(n125), .Y(DATA_OUT[5]) );
  XOR2X1 U163 ( .A(n131), .B(n130), .Y(DATA_OUT[3]) );
  INVX1 U164 ( .A(n120), .Y(n121) );
  OAI21XL U165 ( .A0(n108), .A1(n123), .B0(n107), .Y(n109) );
  OAI21X1 U166 ( .A0(n95), .A1(n128), .B0(n94), .Y(n120) );
  INVX1 U167 ( .A(n73), .Y(n90) );
  AOI21X1 U168 ( .A0(n110), .A1(n120), .B0(n109), .Y(n111) );
  NOR2X1 U169 ( .A(n102), .B(n101), .Y(n108) );
  INVX2 U170 ( .A(n189), .Y(n191) );
  NAND2X1 U171 ( .A(n90), .B(n89), .Y(n93) );
  NOR2X2 U172 ( .A(n92), .B(n89), .Y(WRITE) );
  INVX1 U173 ( .A(n154), .Y(N35) );
  INVX1 U174 ( .A(n147), .Y(N37) );
  INVX1 U175 ( .A(n152), .Y(N38) );
  INVX1 U176 ( .A(n148), .Y(N39) );
  INVX1 U177 ( .A(n146), .Y(N36) );
  INVX1 U178 ( .A(n151), .Y(N34) );
  NAND2XL U179 ( .A(DATA_OUT[3]), .B(RDMR), .Y(n195) );
  INVX1 U180 ( .A(n150), .Y(N33) );
  NAND2X1 U181 ( .A(n124), .B(n123), .Y(n125) );
  INVX1 U182 ( .A(n119), .Y(n122) );
  INVX1 U183 ( .A(n132), .Y(n141) );
  INVX1 U184 ( .A(n108), .Y(n103) );
  INVX1 U185 ( .A(n127), .Y(n129) );
  INVX1 U186 ( .A(n95), .Y(n86) );
  OAI21X2 U187 ( .A0(n75), .A1(n143), .B0(n67), .Y(n132) );
  INVX1 U188 ( .A(n203), .Y(n178) );
  NOR2X1 U189 ( .A(n79), .B(n78), .Y(n133) );
  NOR2X1 U190 ( .A(n83), .B(n82), .Y(n127) );
  INVX1 U191 ( .A(n145), .Y(n75) );
  NAND2X1 U192 ( .A(n169), .B(n168), .Y(n189) );
  NAND2X1 U193 ( .A(n69), .B(n155), .Y(n92) );
  AOI21X2 U194 ( .A0(n81), .A1(n132), .B0(n80), .Y(n131) );
  OAI21X1 U195 ( .A0(n133), .A1(n139), .B0(n134), .Y(n80) );
  NOR2X1 U196 ( .A(n133), .B(n138), .Y(n81) );
  NAND2XL U197 ( .A(n74), .B(n67), .Y(n144) );
  XOR2X1 U198 ( .A(n142), .B(n141), .Y(DATA_OUT[1]) );
  NAND2X1 U199 ( .A(n140), .B(n139), .Y(n142) );
  XNOR2X1 U200 ( .A(n137), .B(n136), .Y(DATA_OUT[2]) );
  NAND2X1 U201 ( .A(n135), .B(n134), .Y(n136) );
  OAI21X1 U202 ( .A0(n138), .A1(n141), .B0(n139), .Y(n137) );
  NAND2X1 U203 ( .A(n129), .B(n128), .Y(n130) );
  NAND2X1 U204 ( .A(n86), .B(n94), .Y(n87) );
  NAND2X1 U205 ( .A(n103), .B(n107), .Y(n104) );
  NAND2X1 U206 ( .A(n68), .B(n116), .Y(n117) );
  NAND2XL U207 ( .A(n115), .B(n114), .Y(n116) );
  MX2X1 U208 ( .A(PC_reg[2]), .B(MDR_reg[2]), .S0(n113), .Y(n79) );
  NOR2X1 U209 ( .A(n97), .B(n96), .Y(n106) );
  NOR2X1 U210 ( .A(n127), .B(n95), .Y(n119) );
  NOR2X1 U211 ( .A(n108), .B(n106), .Y(n110) );
  INVX1 U212 ( .A(n74), .Y(n143) );
  NAND2X1 U213 ( .A(n91), .B(n155), .Y(n73) );
  NAND2XL U214 ( .A(n159), .B(n158), .Y(n160) );
  NAND2XL U215 ( .A(n90), .B(current_state[1]), .Y(n169) );
  NAND2X1 U216 ( .A(n77), .B(n76), .Y(n139) );
  NAND2X1 U217 ( .A(n79), .B(n78), .Y(n134) );
  NAND2X1 U218 ( .A(n85), .B(n84), .Y(n94) );
  NAND2X1 U219 ( .A(n83), .B(n82), .Y(n128) );
  NAND2X1 U220 ( .A(n97), .B(n96), .Y(n123) );
  NAND2X1 U221 ( .A(n102), .B(n101), .Y(n107) );
  INVX1 U222 ( .A(n201), .Y(n72) );
  NAND3X2 U223 ( .A(n71), .B(current_state[1]), .C(n155), .Y(n165) );
  NAND2XL U224 ( .A(current_state[0]), .B(current_state[1]), .Y(n166) );
  NAND4XL U225 ( .A(n164), .B(n163), .C(RUN), .D(n168), .Y(n187) );
  NAND2XL U226 ( .A(n182), .B(Z_reg), .Y(n163) );
  NAND2XL U227 ( .A(n155), .B(N_reg), .Y(n162) );
  OAI2BB1XL U228 ( .A0N(n200), .A1N(ADDRESS[4]), .B0(n196), .Y(N48) );
  OAI2BB1XL U229 ( .A0N(n200), .A1N(ADDRESS[7]), .B0(n199), .Y(N51) );
  OAI2BB1XL U230 ( .A0N(n200), .A1N(ADDRESS[6]), .B0(n198), .Y(N50) );
  OAI2BB1XL U231 ( .A0N(n200), .A1N(ADDRESS[5]), .B0(n197), .Y(N49) );
  NAND2XL U232 ( .A(DATA_OUT[5]), .B(RDMR), .Y(n197) );
  OAI2BB1XL U233 ( .A0N(n200), .A1N(ADDRESS[3]), .B0(n195), .Y(N47) );
  OAI2BB1XL U234 ( .A0N(n200), .A1N(ADDRESS[2]), .B0(n194), .Y(N46) );
  NAND2XL U235 ( .A(DATA_OUT[2]), .B(RDMR), .Y(n194) );
  OAI2BB1XL U236 ( .A0N(n200), .A1N(ADDRESS[1]), .B0(n193), .Y(N45) );
  NAND2XL U237 ( .A(DATA_OUT[1]), .B(RDMR), .Y(n193) );
  OAI2BB1XL U238 ( .A0N(n200), .A1N(ADDRESS[0]), .B0(n192), .Y(N44) );
  NAND2XL U239 ( .A(DATA_OUT[0]), .B(RDMR), .Y(n192) );
  INVX1 U240 ( .A(n149), .Y(N40) );
  OAI2BB1XL U241 ( .A0N(Z_reg), .A1N(n186), .B0(n185), .Y(N19) );
  NAND3XL U242 ( .A(add_outn), .B(DATA_OUT[6]), .C(n184), .Y(n185) );
  OAI2BB1XL U243 ( .A0N(N_reg), .A1N(n181), .B0(n180), .Y(N21) );
  NAND2XL U244 ( .A(add_outn), .B(WRITE), .Y(n180) );
  OAI2BB1XL U245 ( .A0N(n191), .A1N(PC_reg[7]), .B0(n190), .Y(N60) );
  NAND2XL U246 ( .A(add_outn), .B(n189), .Y(n190) );
  OAI2BB1XL U247 ( .A0N(n191), .A1N(PC_reg[6]), .B0(n170), .Y(N59) );
  NAND2XL U248 ( .A(DATA_OUT[6]), .B(n189), .Y(n170) );
  OAI2BB1XL U249 ( .A0N(n191), .A1N(PC_reg[5]), .B0(n171), .Y(N58) );
  NAND2XL U250 ( .A(DATA_OUT[5]), .B(n189), .Y(n171) );
  OAI2BB1XL U251 ( .A0N(n191), .A1N(PC_reg[4]), .B0(n172), .Y(N57) );
  NAND2XL U252 ( .A(DATA_OUT[4]), .B(n189), .Y(n172) );
  OAI2BB1XL U253 ( .A0N(n191), .A1N(PC_reg[3]), .B0(n173), .Y(N56) );
  NAND2XL U254 ( .A(DATA_OUT[3]), .B(n189), .Y(n173) );
  OAI2BB1XL U255 ( .A0N(n191), .A1N(PC_reg[2]), .B0(n174), .Y(N55) );
  NAND2XL U256 ( .A(DATA_OUT[2]), .B(n189), .Y(n174) );
  OAI2BB1XL U257 ( .A0N(n191), .A1N(PC_reg[1]), .B0(n175), .Y(N54) );
  NAND2XL U258 ( .A(DATA_OUT[1]), .B(n189), .Y(n175) );
  NAND2XL U259 ( .A(n177), .B(current_state[0]), .Y(n179) );
  OAI2BB1XL U260 ( .A0N(n191), .A1N(PC_reg[0]), .B0(n176), .Y(N53) );
  NAND2XL U261 ( .A(DATA_OUT[0]), .B(n189), .Y(n176) );
  MXI2X1 U262 ( .A(MDR_reg[2]), .B(n72), .S0(n165), .Y(n66) );
  OR2X1 U263 ( .A(n181), .B(R_reg[0]), .Y(n67) );
  OR2X1 U264 ( .A(n115), .B(n114), .Y(n68) );
  NOR2X1 U265 ( .A(n181), .B(n72), .Y(n78) );
  MX2X1 U266 ( .A(PC_reg[0]), .B(MDR_reg[0]), .S0(n113), .Y(n145) );
  XNOR2X1 U267 ( .A(n145), .B(n144), .Y(DATA_OUT[0]) );
  INVX2 U268 ( .A(current_state[2]), .Y(n167) );
  CLKINVX2 U269 ( .A(n91), .Y(n71) );
  NAND2XL U270 ( .A(n71), .B(n70), .Y(n168) );
  OAI211X2 U271 ( .A0(n73), .A1(current_state[1]), .B0(n165), .C0(n168), .Y(
        n113) );
  NOR2X1 U272 ( .A(n181), .B(R_reg[1]), .Y(n76) );
  MX2X1 U273 ( .A(PC_reg[3]), .B(MDR_reg[3]), .S0(n113), .Y(n83) );
  NOR2X1 U274 ( .A(n181), .B(R_reg[3]), .Y(n82) );
  MX2X1 U275 ( .A(PC_reg[4]), .B(MDR_reg[4]), .S0(n113), .Y(n85) );
  NOR2X1 U276 ( .A(n181), .B(R_reg[4]), .Y(n84) );
  NOR2X1 U277 ( .A(n92), .B(n91), .Y(n182) );
  MX2X1 U278 ( .A(PC_reg[5]), .B(MDR_reg[5]), .S0(n113), .Y(n97) );
  NOR2X1 U279 ( .A(n181), .B(R_reg[5]), .Y(n96) );
  MX2X1 U280 ( .A(PC_reg[6]), .B(MDR_reg[6]), .S0(n113), .Y(n102) );
  NOR2X1 U281 ( .A(n181), .B(R_reg[6]), .Y(n101) );
  MX2X1 U282 ( .A(PC_reg[7]), .B(MDR_reg[7]), .S0(n113), .Y(n115) );
  NOR2X1 U283 ( .A(n181), .B(R_reg[7]), .Y(n114) );
  NOR2X1 U284 ( .A(RDMR), .B(WRITE), .Y(n153) );
  AOI222XL U285 ( .A0(RDMR), .A1(DATA_IN[3]), .B0(n153), .B1(MDR_reg[3]), .C0(
        WRITE), .C1(DATA_OUT[3]), .Y(n146) );
  AOI222XL U286 ( .A0(RDMR), .A1(DATA_IN[4]), .B0(n153), .B1(MDR_reg[4]), .C0(
        WRITE), .C1(DATA_OUT[4]), .Y(n147) );
  AOI222XL U287 ( .A0(RDMR), .A1(DATA_IN[6]), .B0(n153), .B1(MDR_reg[6]), .C0(
        WRITE), .C1(DATA_OUT[6]), .Y(n148) );
  AOI222XL U288 ( .A0(RDMR), .A1(DATA_IN[7]), .B0(MDR_reg[7]), .B1(n153), .C0(
        WRITE), .C1(add_outn), .Y(n149) );
  AOI222XL U289 ( .A0(RDMR), .A1(DATA_IN[0]), .B0(n153), .B1(MDR_reg[0]), .C0(
        WRITE), .C1(DATA_OUT[0]), .Y(n150) );
  AOI222XL U290 ( .A0(RDMR), .A1(DATA_IN[1]), .B0(n153), .B1(MDR_reg[1]), .C0(
        WRITE), .C1(DATA_OUT[1]), .Y(n151) );
  AOI222XL U291 ( .A0(RDMR), .A1(DATA_IN[5]), .B0(n153), .B1(MDR_reg[5]), .C0(
        WRITE), .C1(DATA_OUT[5]), .Y(n152) );
  AOI222XL U292 ( .A0(RDMR), .A1(DATA_IN[2]), .B0(n153), .B1(MDR_reg[2]), .C0(
        WRITE), .C1(DATA_OUT[2]), .Y(n154) );
  NOR2X1 U293 ( .A(n166), .B(n167), .Y(n188) );
  NOR2X1 U294 ( .A(PC_reg[5]), .B(PC_reg[3]), .Y(n157) );
  NOR2X1 U295 ( .A(PC_reg[7]), .B(PC_reg[6]), .Y(n156) );
  NOR2X1 U296 ( .A(PC_reg[4]), .B(PC_reg[1]), .Y(n159) );
  NOR2X1 U297 ( .A(PC_reg[2]), .B(PC_reg[0]), .Y(n158) );
  AOI2BB2X1 U298 ( .B0(n188), .B1(n162), .A0N(n161), .A1N(n160), .Y(n164) );
  NOR2X1 U299 ( .A(n187), .B(current_state[0]), .Y(n203) );
  MX2X1 U300 ( .A(MDR_reg[0]), .B(R_reg[0]), .S0(n165), .Y(N23) );
  MX2X1 U301 ( .A(MDR_reg[1]), .B(R_reg[1]), .S0(n165), .Y(N24) );
  MX2X1 U302 ( .A(MDR_reg[4]), .B(R_reg[4]), .S0(n165), .Y(N27) );
  MX2X1 U303 ( .A(MDR_reg[6]), .B(R_reg[6]), .S0(n165), .Y(N29) );
  MX2X1 U304 ( .A(MDR_reg[3]), .B(R_reg[3]), .S0(n165), .Y(N26) );
  MX2X1 U305 ( .A(MDR_reg[5]), .B(R_reg[5]), .S0(n165), .Y(N28) );
  MX2X1 U306 ( .A(MDR_reg[7]), .B(R_reg[7]), .S0(n165), .Y(N30) );
  MXI2X1 U307 ( .A(n179), .B(n178), .S0(current_state[1]), .Y(next_state[1])
         );
  INVX1 U309 ( .A(clk_PH1), .Y(n204) );
endmodule

