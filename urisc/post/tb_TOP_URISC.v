`timescale 1ns/10ps
`include "RAM.v"
`include "URISC_map.v" 
`include "umc18.v"
module tb_TOP_URISC();
reg PH1;
reg Run;
reg rst_n;
wire CSMR_CS,WRITE,RDMR_READ;
wire [7:0] ADDRESS;
wire [7:0] WDATA;
wire [7:0] RDATA;
URISC ursic(
    .clk_PH1(PH1),
    .rst_n(rst_n),
    .RUN(Run),
    .CSMR(CSMR_CS),
    .WRITE(WRITE),
    .RDMR(RDMR_READ),
    .ADDRESS(ADDRESS),
    .DATA_IN(RDATA),
    .DATA_OUT(WDATA)
);

RAM ut_ram(
    .clk(PH1),
    .rst_n(rst_n),
    .CS(CSMR_CS),
    .WRITE(WRITE),
    .READ(RDMR_READ),
    .ADDRESS(ADDRESS),
    .WDATA(WDATA),
    .RDATA(RDATA)
);

initial begin:clock
    PH1=0;
    forever begin
      #1.8 PH1=~PH1;
    end
end
initial begin:start_stop
$sdf_annotate("URISC.sdf",ursic,,"sdf.log");
rst_n=1;
Run=1;
#3 rst_n=0;
#2 rst_n=1;
#20000 $stop;
end
endmodule




