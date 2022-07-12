`timescale 1ns/1ns
module hashfunc(input key,input clk, output reg hash1, output reg hash2);

always @(posedge clk) begin
hash1=(((key*9)%100)*11)%100;
 hash2=(((key*45)%1000)*22)%100;
end
endmodule



