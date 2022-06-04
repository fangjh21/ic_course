module TOP_URISC (
    input clk_PH1,
 //   input clk_PH2,
    input rst_n,
    input Run
);

wire CSMR_CS,WRITE,RDMR_READ;
wire [7:0] ADDRESS;
wire [7:0] WDATA;
wire [7:0] RDATA;


URISC ursic(
    .clk_PH1(clk_PH1),
    .clk_PH2(~clk_PH2),
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
    .clk(clk_PH1),
    .rst_n(rst_n),
    .CS(CSMR_CS),
    .WRITE(WRITE),
    .READ(RDMR_READ),
    .ADDRESS(ADDRESS),
    .WDATA(WDATA),
    .RDATA(RDATA)
);
endmodule