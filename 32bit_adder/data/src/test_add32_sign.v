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
    isSign=1'b1;
   A=-100;
B=-100;

end

initial 
begin
    repeat(100)
  #10 A= $random%  2147483648;
end

initial 
begin
  repeat(100)
     #10  B=$random% 2147483648; 
end

integer out_file;
initial
begin
    out_file = $fopen("signed_result.txt","w");
end


always@(A or B)
begin 
 $fwrite(out_file,"A:%d B:%d fact:%d  cal:%d   overflow:%d   err:%d\n" ,$signed(A),$signed(B),$signed(A)+$signed(B),$signed(result),Overflow,result-A-B);
end 
endmodule 