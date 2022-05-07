`timescale 1ns/1ps  
module testbench_CountLeadingZeros();
reg [31:0] vec;
wire [5:0] result;//输出结果
CountLeadingZeros uut(vec,result);
reg [5:0] fact;
reg start_flag;
reg [30:0] rand;
initial 
begin
    start_flag=1;
    repeat(33) 
    begin: loop
        #10  if(start_flag==1) begin  
                rand={$random} % 2147483648;
                vec={1'b1,rand};
                fact=6'd0;
                start_flag=0;    
        end

        else begin
        vec=vec>>1;
        fact=fact+1'b1;
        end 
    end
end

integer out_file;
initial
begin
    out_file = $fopen("CountLeadingZeros_result.txt","w");
end

always@(vec)
begin 
 $fwrite(out_file,"vec:%b fact:%b  result:%b err:%b\n" ,vec,fact,$unsigned(result), fact^result);
end 
endmodule 