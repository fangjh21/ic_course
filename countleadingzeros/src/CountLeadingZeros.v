module CountLeadingZeros_8bits (
    input [7:0] vec,
    output [3:0] count
);
assign count[3]=(|vec);
assign count[2]=(|vec[7:4]);
assign count[1]=(vec[7]|vec[6]|((~vec[5])&(~vec[4]))&(vec[3]|vec[2]));
assign count[0]=(vec[7]|(~vec[6]&vec[5])|(~vec[6]&~vec[4]&vec[3])|(~vec[6]&~vec[4]&~vec[2])&vec[1]);
endmodule
/*
module CountLeadingZeros_16bits (
    input [15:0] vec,
    output [4:0] count
);

wire [3:0] count_high;
wire [3:0] count_low;

CountLeadingZeros_8bits uut1(
    .vec(vec[15:8]),
    .count(count_high)
);
CountLeadingZeros_8bits uut2(
    .vec(vec[15:8]),
    .count(count_low)
);
assign count[4]=!(count_high[3]|count_low[3]);
assign count[3]=count_high[3];
assign count[2]=(~(~count_high[3]&count_low[2]))&count_low[2];
assign count[1]=(~(~count_high[3]&count_low[1]))&count_low[1];
assign count[0]=(~(~count_high[3]&count_low[0]))&count_low[0];
endmodule*/

module  CountLeadingZeros (
input [31:0] vec,
output [5:0] count_result
);
wire [3:0] count_3;
wire [3:0] count_2;
wire [3:0] count_1;
wire [3:0] count_0;
CountLeadingZeros_8bits uut1(
    .vec(vec[31:24]),
    .count(count_3)
);
CountLeadingZeros_8bits uut2(
    .vec(vec[23:16]),
    .count(count_2)
);
CountLeadingZeros_8bits uut3(
    .vec(vec[15:8]),
    .count(count_1)
);
CountLeadingZeros_8bits uut4(
    .vec(vec[7:0]),
    .count(count_0)
);
wire [5:0] count;
wire [6:0] temp;
assign count[5]=~(count_3[3]|count_2[3]|count_1[3]|count_0[3]);
assign count[4]=~(count_3[3]|count_2[3]);
assign count[3]=~((~count_2[3]&count_1[3])|count_3[3]);

assign temp[0]=(~((count_0[0]&~count_1[3])|count_1[0]));
assign temp[1]=(~((count_0[1]&~count_1[3])|count_1[1]));
assign temp[2]=(~((count_0[2]&~count_1[3])|count_1[2]));
assign temp[3]=(~((count_2[0]&~count_3[3])|count_3[0]));
assign temp[4]=(~((count_2[1]&~count_3[3])|count_3[1]));
assign temp[5]=(~((count_2[2]&~count_3[3])|count_3[2]));
assign temp[6]=(count_3[3]|count_2[3]);


assign count[2]=(temp[2]|temp[6])&temp[5];
assign count[1]=(temp[1]|temp[6])&temp[4];
assign count[0]=(temp[0]|temp[6])&temp[3];

assign count_result=count[5]?6'b100000:{1'b0,count[4:0]};
endmodule


