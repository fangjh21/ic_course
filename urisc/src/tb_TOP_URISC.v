`timescale 1ns/1ns
module tb_TOP_URISC ();
reg PH1;
reg Run;
wire PH2;
reg rst_n;
assign PH2=~PH1;
TOP_URISC top_urisc(PH1,PH2,rst_n,Run);

initial begin:clock
    PH1=0;
    forever begin
        #5 PH1=~PH1;
    end
end
initial begin:start_stop
rst_n=1;
Run=1;
#15 rst_n=0;
#19 rst_n=1;
#20000 $stop;
end
endmodule




