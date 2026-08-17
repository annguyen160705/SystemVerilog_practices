module mux8 #(
    parameter DATA_WIDTH = 8
) (
    input logic [DATA_WIDTH-1:0] A,
    input logic [DATA_WIDTH-1:0] B,
    input logic sel,
    output logic [DATA_WIDTH-1:0] OUT     

);

assign OUT = sel ? A : B;

endmodule

module mux16 #(
    parameter DATA_WIDTH = 16
) (
    input logic [DATA_WIDTH-1:0] A,
    input logic [DATA_WIDTH-1:0] B,
    input logic sel,
    output logic [DATA_WIDTH-1:0] OUT     

);

assign OUT = sel ? A : B;

endmodule

module mux_select#(
    parameter DATA_WIDTH = 8
) (
    input logic [DATA_WIDTH-1:0] A,
    input logic [DATA_WIDTH-1:0] B,
    input logic sel,
    output logic [DATA_WIDTH-1:0] OUT     
);
    
    generate
        if(DATA_WIDTH == 8) begin
            mux8 #(DATA_WIDTH) mux_instan (A,B,sel,OUT);
        end
        else begin
            mux16 #(DATA_WIDTH) mux_instan (A,B,sel,OUT);
        end
    endgenerate
endmodule



/*
Exercise 4 - Generate If

Module
mux_select

Requirements

Use generate-if.

If DATA_WIDTH == 8
instantiate mux8.

Otherwise
instantiate mux16.

*/
