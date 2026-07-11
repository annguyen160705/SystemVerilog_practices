`timescale 1ns/1ps

module hello;

reg clk;
reg rst;
reg [3:0] counter;

initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0, hello);
end

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin
    rst = 1;
    #12;
    rst = 0;
    #100;
    $finish;
end

always @(posedge clk) begin
    if (rst)
        counter <= 0;
    else
        counter <= counter + 1;
end

endmodule
