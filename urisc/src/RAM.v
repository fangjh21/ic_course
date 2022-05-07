module RAM (
    input clk,
    input rst_n,
    input CS,
    input WRITE,
    input READ,
    input [7:0] ADDRESS,
    input [7:0] WDATA,
    output [7:0] RDATA
);
reg[7:0]  uram[0:127]; 
assign RDATA=(CS&READ) ?uram[ADDRESS]:8'b0;
wire [7:0] test_x;//check the value of X register
assign test_x=uram[35];
wire [7:0] test_z;//check the value of Z register
assign test_z=uram[36];
always @(posedge clk or negedge rst_n) begin
    if(!rst_n)begin
        /**the initialization  of the  instruction and data  about computing (X+Y)/2**/
        /*input X=16 Y=100  output Z=58*/
                uram[0]<=8'h00;//STOP
                uram[1]<=8'h28;//READY Y_addr=40
                uram[2]<=8'h1F;//READY TEMP1=31
                uram[3]<=8'h04;//READY NEXT1=4
                uram[4]<=8'h1F;//NEXT1 TEMP1=31
                uram[5]<=8'h23;//NEXT1 X_addr=35
                uram[6]<=8'h07;//NEXT1 NEXT2=7
                uram[7]<=8'h24;//NEXT2 Z_addr=36
                uram[8]<=8'h24;//NEXT2 Z_addr=36
                uram[9]<=8'h0A;//NEXT2 TEST=10
                uram[10]<=8'h23;//TEST X_addr=35
                uram[11]<=8'h20;//TEST TEMP2=32
                uram[12]<=8'h16;//TEST POSITIVE=22
                uram[13]<=8'h27;//NEGATIVE TWO_addr=39
                uram[14]<=8'h20;//NEGATIVE TEMP2=32
                uram[15]<=8'h13;//NEGATIVE NEXT3=19
                uram[16]<=8'h26;//COUNT_NEG ONE_addr=38
                uram[17]<=8'h24;//COUNT_NEG Z_addr=36
                uram[18]<=8'h13;//COUNT_NEG NEXT3=19
                uram[19]<=8'h27;//NEXT3 TWO_addr=39
                uram[20]<=8'h21;//NEXT3 TEMP3=33
                uram[21]<=8'h0D;//NEXT3 NEGATIVE=13
                uram[22]<=8'h27;//POSITIVE TWO_addr=39
                uram[23]<=8'h23;//POSITIVE X_addr=35
                uram[24]<=8'h00;//POSITIVE STOP=0
                uram[25]<=8'h26;//COUNT_POS MONE_addr=38
                uram[26]<=8'h24;//COUNT_POS Z_addr=36
                uram[27]<=8'h1C;//COUNT_POS NEXT4=28
                uram[28]<=8'h27;//NEXT4 TWO_addr=39
                uram[29]<=8'h22;//NEXT4 TEMP4=34
                uram[30]<=8'h16;//NEXT4 POSITIVE=22
                uram[31]<=8'h00;//TEMP1=0
                uram[32]<=8'h00;//TEMP2=0
                uram[33]<=8'h00;//TEMP3=0
                uram[34]<=8'h00;//TEMP4=0
                uram[35]<=8'h10;//X initial=16
                uram[36]<=8'h00;//Z=0
                uram[37]<=8'h01;//ONE=1
                uram[38]<=8'hff;//MONE=-1
                uram[39]<=8'h02;//TWO=2
                uram[40]<=8'h64;// Y initial=100
                uram[41]<=8'h00;
                uram[42]<=8'h00;
                uram[43]<=8'h00;
                uram[44]<=8'h00;
                uram[45]<=8'h00;
                uram[46]<=8'h00;
                uram[47]<=8'h00;
                uram[48]<=8'h00;
                uram[49]<=8'h00;
                uram[50]<=8'h00;
                uram[51]<=8'h00;
                uram[52]<=8'h00;
                uram[53]<=8'h00;
                uram[54]<=8'h00;
                uram[55]<=8'h00;
                uram[56]<=8'h00;
                uram[57]<=8'h00;
                uram[58]<=8'h00;
                uram[59]<=8'h00;
                uram[60]<=8'h00;
                uram[61]<=8'h00;
                uram[62]<=8'h00;
                uram[63]<=8'h00;
                uram[64]<=8'h00;
                uram[65]<=8'h00;
                uram[66]<=8'h00;
                uram[67]<=8'h00;
                uram[68]<=8'h00;
                uram[69]<=8'h00;
                uram[70]<=8'h00;
                uram[71]<=8'h00;
                uram[72]<=8'h00;
                uram[73]<=8'h00;
                uram[74]<=8'h00;
                uram[75]<=8'h00;
                uram[76]<=8'h00;
                uram[77]<=8'h00;
                uram[78]<=8'h00;
                uram[79]<=8'h00;
                uram[80]<=8'h00;
                uram[81]<=8'h00;
                uram[82]<=8'h00;
                uram[83]<=8'h00;
                uram[84]<=8'h00;
                uram[85]<=8'h00;
                uram[86]<=8'h00;
                uram[87]<=8'h00;
                uram[88]<=8'h00;
                uram[89]<=8'h00;
                uram[90]<=8'h00;
                uram[91]<=8'h00;
                uram[92]<=8'h00;
                uram[93]<=8'h00;
                uram[94]<=8'h00;
                uram[95]<=8'h00;
                uram[96]<=8'h00;
                uram[97]<=8'h00;
                uram[98]<=8'h00;
                uram[99]<=8'h00;
                uram[100]<=8'h00;
                uram[101]<=8'h00;
                uram[102]<=8'h00;
                uram[103]<=8'h00;
                uram[104]<=8'h00;
                uram[105]<=8'h00;
                uram[106]<=8'h00;
                uram[107]<=8'h00;
                uram[108]<=8'h00;
                uram[109]<=8'h00;
                uram[110]<=8'h00;
                uram[111]<=8'h00;
                uram[112]<=8'h00;
                uram[113]<=8'h00;
                uram[114]<=8'h00;
                uram[115]<=8'h00;
                uram[116]<=8'h00;
                uram[117]<=8'h00;
                uram[118]<=8'h00;
                uram[119]<=8'h00;
                uram[120]<=8'h00;
                uram[121]<=8'h00;
                uram[122]<=8'h00;
                uram[123]<=8'h00;
                uram[124]<=8'h00;
                uram[125]<=8'h00;
                uram[126]<=8'h00;
                uram[127]<=8'h00;
    end
        else if(WRITE & CS)
        uram[ADDRESS]<=WDATA;
    end
endmodule