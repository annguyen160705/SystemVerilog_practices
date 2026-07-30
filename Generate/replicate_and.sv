module replicate_and(
    input logic in1,
    input logic in2,
    output logic out [0:7]
);

generate
    for (genvar i=0; i<8; ++i) begin : GEN_AND
        and2 a0 (in1,in2,out[i]);
    end
endgenerate

/*
Exercise 1 - Basic Generate For

Module
replicate_and

Requirements

Use a generate-for loop to instantiate
8 AND gates.

*/

endmodule


module and2(
    input logic in1,
    input logic in2,
    output logic out

);

assign out = in1 & in2;

endmodule