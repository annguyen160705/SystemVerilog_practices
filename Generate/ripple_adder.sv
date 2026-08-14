module ripple_adder #(
    parameter N = 32
) (
    input logic [(N-1):0] A, 
    input logic [(N-1):0] B, 
    input logic C_IN, 
    output logic [(N-1):0] S,
    output logic C_OUT
);

    logic [N:0] carry;

    assign carry[0] = C_IN;
    assign C_OUT = carry[N];
    
    generate
        for (genvar i = 0; i < N; i++) begin : GEN_ADDER
            full_adder FA(A[i],B[i],carry[i],S[i],carry[i+1]);
        end
    endgenerate

endmodule



/*
Exercise 3 - Ripple Carry Adder

Module
ripple_adder

Requirements

Instantiate N full adders
using a generate-for loop.

N must be configurable
through a parameter.

*/




module full_adder(
    input logic A,
    input logic B,
    input logic C_IN,
    output logic S,
    output logic C_OUT
);


assign S = A ^ B ^ C_IN;
assign C_OUT = (A & B) | ((A ^ B) & C_IN);

endmodule