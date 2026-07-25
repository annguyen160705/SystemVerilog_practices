module array_max(
    input logic clk,
    input logic arstn,
    input var logic [7:0] data [0:15],
    output logic [7:0] max
);

 

integer i,j;
logic [7:0] temp;
always_ff @(posedge clk or negedge arstn) begin
    if (!arstn) max <= 8'd0;
    else begin  
        temp = data[0];
        for( i =0; i < 16; i = i + 1'b1) begin
                if(data[i] > temp) begin
                    temp = data [i];      
            end
        max <= temp;
        end  
    end
end 

/*
Exercise 2 - Find Maximum Value

Module
array_max

Input

data (16 elements, each 8 bits)

Output

max (8 bits)

Requirements

Use a for loop to find the largest value in the array.

*/

endmodule

`timescale 1ns / 1ps

module test_2;

    parameter PERIOD = 10;

    logic clk = 0;
    logic arstn = 0;
    logic [7:0] data [0:15];
    logic [7:0] max;

    always #(PERIOD / 2) clk = ~clk;

    array_max u_max (
        .clk   (clk),
        .arstn (arstn),
        .data  (data),
        .max   (max)
    );

    initial begin
        $monitor(
            "At time %0t, arstn = %b, max = %0d",
            $time,
            arstn,
            max
        );

        data[0]  = 8'd10;
        data[1]  = 8'd20;
        data[2]  = 8'd30;
        data[3]  = 8'd10;
        data[4]  = 8'd50;
        data[5]  = 8'd60;
        data[6]  = 8'd70;
        data[7]  = 8'd80;
        data[8]  = 8'd90;
        data[9]  = 8'd100;
        data[10] = 8'd11;
        data[11] = 8'd12;
        data[12] = 8'd0;
        data[13] = 8'd140;
        data[14] = 8'd150;
        data[15] = 8'd160;

        #(PERIOD * 2);
        arstn = 1'b1;

        @(posedge clk);
        #1;

        if (max == 8'd160)
            $display("PASS: max = %0d", max);
        else
            $display("FAIL: expected 160, received %0d", max);

        #10;
        $finish;
    end

endmodule