`timescale 1ns/1ns
`include "hashfunc.v"
module hash_f_tb;
reg key;
reg clk;
wire hash1;
wire hash2;
hashfunc uut(.key(key),.clk(clk), .hash1(hash1), .hash2(hash2));
initial begin
    #10
    key=134;
    #10
    key=59;
    #10
    key=77;
    #10
    key=896;
    #10
    key=81;
end
endmodule