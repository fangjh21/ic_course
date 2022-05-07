`timescale 1ns/1ps  
module testbench_add32();
reg [31:0] A;
reg [31:0] B;
wire Overflow;//溢出判定
wire [31:0] result;//输出结果
reg isSub;//运算判定
reg isSign;
Add32 testadd32(Overflow,result,A,B,isSub,isSign);

initial 
begin
    isSub=1'b0;
    isSign=1'b0;
   A=100;
B=100;

end

initial 
begin
    repeat(100)
  #10 A= {$random} % 4294967295; 
end
initial 
begin
  repeat(100)
     #10  B= {$random} % 4294967295; 
end

integer out_file;

initial
begin
    out_file = $fopen("unsigned_result.txt","w");
end
always@(A or B)
begin 
//$display("1:A 2:B 3:A+B 4:result 5:overflow");
//$monitor("%d%d%d%d%d",A,B,A+B,result,Overflow);
 $fwrite(out_file,"A:%d B:%d fact:%d  cal:%d   overflow:%d   err:%d\n" ,A,B,A+B,result,Overflow,result-A-B);
end 
endmodule 