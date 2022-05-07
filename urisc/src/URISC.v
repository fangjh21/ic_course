module URISC (
    input clk_PH1,
    input clk_PH2,
    input rst_n,
    input RUN,
    output CSMR,
    output WRITE,
    output RDMR,
    output [7:0] ADDRESS,
    input [7:0] DATA_IN,
    output [7:0] DATA_OUT
);
/*the register define */
reg [7:0] PC_reg;
reg [7:0] MDR_reg;
reg [7:0] MAR_reg;
reg [7:0] R_reg;
reg Z_reg;
reg N_reg;



wire add_outz;
wire add_outn;
wire [7:0] BUSA;
wire [7:0] BUSB;
wire [7:0] addout;
wire [7:0] add_data1;

/**control signal**/
wire PCout;
wire Comp;
wire Zin;
wire MDRin;
wire Read;
wire MDRout,MARin, Nin,  Rin ,PCin, ZEND , Cin ,Write ,NNEND;
wire CLEAR;//clear signal for jump to zero state

assign Read=MARin;
assign Zin=ZEND;
assign PCout=!MDRout;
assign WRITE=Write;
assign Comp=Nin;
assign MDRin =Nin;
//this work doesnt need port module ,address 0-127 in the ram module
assign RDMR=MARin ;//& ~ADDRESS[7];
assign CSMR=1'b1; //~ADDRESS[7];
assign ADDRESS=MAR_reg;


assign DATA_OUT=BUSB;


reg [3:0] current_state;
reg [3:0] next_state;
assign CLEAR=(Z_reg & ZEND ) |(~N_reg & NNEND);



always @(posedge clk_PH1 or negedge rst_n) begin
    if(!rst_n )begin
        current_state<=4'b1111;//idle
    end
    else current_state<=next_state;
end

always @(*) begin
   if(current_state==4'b1000 ||current_state==4'b1111 ||CLEAR || ~RUN|| PC_reg==8'd0)next_state=4'd0;
   else next_state=current_state+1'b1;
end
/*Register*/
/* Z & N*/
always @(posedge clk_PH1 or negedge rst_n) begin
    if(!rst_n)begin
        Z_reg<=0;
    end
    else if(Zin)begin
        Z_reg<=add_outz;
    end
    else begin
        Z_reg<=Z_reg;
    end
end

always @(posedge clk_PH1 or negedge rst_n) begin
    if(!rst_n)begin
        N_reg<=0;
    end
    else if(Nin)begin
        N_reg<=add_outn;
    end
    else begin
        N_reg<=N_reg;   
    end
end


/* R*/
always @(posedge clk_PH1 or negedge rst_n) begin
    if(!rst_n)begin
        R_reg<=8'd0;
    end
    else if(Rin)begin
        R_reg<=BUSA;
    end
    else begin
       R_reg<=R_reg;
    end
end

/*MDR*/
always @(posedge clk_PH1 or negedge rst_n) begin
    if(!rst_n)begin
        MDR_reg<=8'd0;
    end
    else if(MDRin)begin
        MDR_reg<=BUSB;
    end
    else if(Read)begin
        MDR_reg<=DATA_IN;
    end
    else begin
       MDR_reg<=MDR_reg;
    end
end


/*MAR*/
always @(posedge clk_PH2 or negedge rst_n) begin
    if(!rst_n)begin
        MAR_reg<=8'd0;
    end
    else if(MARin)begin
        MAR_reg<=BUSB;
    end
    else begin
       MAR_reg<=MAR_reg;
    end
end

always @(posedge clk_PH1 or negedge rst_n) begin
    if (!rst_n) begin
        PC_reg<=8'd1;//the addr0 means  the program stop，so the first PC is not zero
    end
    else if(PCin)begin
        PC_reg<=BUSB;
    end
    else begin
        PC_reg<=PC_reg;
    end
end


Bus_B  busb(
    .Acc_Res(addout),
    .B_bus(BUSB)
);

Bus_A busa(
    .PC(PC_reg),
    .MDR(MDR_reg),
    .PCout(PCout),
    .MDRout(MDRout),
    .A_bus(BUSA)
);

assign add_data1=Comp?~R_reg:8'd0;
Acc uacc(
        .DATA2(BUSA),
        .DATA1(add_data1),
        .Cin(Cin),
        .Z_out(add_outz),
        .N_out(add_outn),
        .res_out(addout)
);

wire [8:0] machine_ctrl;
ROM_state ut_rom(
    .addr(current_state),
    .dataout(machine_ctrl)
);
assign {MDRout,MARin, Nin,  Rin ,PCin, ZEND , Cin ,Write ,NNEND}=machine_ctrl;
endmodule

/* the logic unit define*/

module Acc (
    input [7:0] DATA2,
    input [7:0] DATA1,
    input Cin,
    output Z_out,
    output N_out,
    output [7:0] res_out
);
wire [7:0] sum;
assign sum=DATA2+DATA1+Cin;
assign  N_out=sum[7];
assign  Z_out=&sum;
assign res_out=sum;
endmodule


/*this work doesnt use tri-gate logical*/
module Bus_A (
    input [7:0] PC,
    input [7:0] MDR,
    input PCout,
    input MDRout,
    output [7:0] A_bus
);
assign A_bus=MDRout?MDR:(PCout?PC:8'b00000000);
endmodule


module Bus_B (
    input [7:0] Acc_Res,
    output [7:0] B_bus
);
assign B_bus=Acc_Res;
endmodule

module ROM_state(
	input [3:0] addr,
	output [8:0] dataout
    );
	wire [8:0] rom[15:0];
    /*micro code for control signal
    MDRout MARin Nin  Rin PCin ZEND  Cin WRITE NNEND
    */
	assign rom[0] = 9'b0100_0100_0;
	assign rom[1] = 9'b1100_0000_0;
	assign rom[2] = 9'b1001_0000_0;
	assign rom[3] = 9'b0100_1010_0;
	assign rom[4] = 9'b1100_0000_0;
	assign rom[5] = 9'b1010_0011_0;
	assign rom[6] = 9'b0100_1010_0;
	assign rom[7] = 9'b0000_1010_1;
    assign rom[8] = 9'b1000_1000_0;
    assign rom[9] = 9'b0000_0000_0;
    assign rom[10] = 9'b0000_0000_0;
    assign rom[11] = 9'b0000_0000_0;
    assign rom[12] = 9'b0000_0000_0;
    assign rom[13] = 9'b0000_0000_0;
    assign rom[14] = 9'b0000_0000_0;
    assign rom[15] = 9'b0000_0000_0;// IDLE state for reset
	assign dataout =rom[addr];
endmodule







