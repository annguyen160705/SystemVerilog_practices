module register_array #(
    parameter WIDTH = 16
) (
    input logic clk,
    input logic d,
    input logic arstn,
    output logic q [0:WIDTH-1]
);
    
generate
    for (genvar i = 0; i < WIDTH; i++) begin : GEN_DFF
        dff u_dff (clk,d,arstn,q[i]);
    end
endgenerate

endmodule

/*
Exercise 2 - Parameterized Register

Module
register_array

Requirements

Use a generate-for loop to create
16 D flip-flops.

The number of registers
must be parameterized.

*/

module dff(
    input logic clk,
    input logic d,
    input logic arstn,
    output logic q
);

always_ff @(posedge clk or negedge arstn) begin
    if (!arstn) begin
        q <= 1'd0;
    end else begin
        q <=d;
    end
end
    
endmodule