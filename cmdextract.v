`include "receiver.v"

module extractor (
    input dcom,
    input clk,
    input tick_in
);
    reg [7:0] bus;
    reg [7:0] packet [12:0];
    integer i;
    integer init;
    
    reciever rec (dcom, clk, tick_in, bus);
    
    initial begin
        init <= 0;
        i <= 0;
    end

    always@(bus) begin
        if(init == 0) init <= 1;
        else {
            packet[i] <= bus;
            i <= i+1; //CHECK
        }
        if 
    end

    alwa

endmodule