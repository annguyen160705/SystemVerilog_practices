module test_13(
    input logic clk,
    input logic arstn,
    output logic [3:0] OUTPUT
);

typedef enum logic [3:0] {
    ADD    = 4'b0000,
    SUB = 4'b0001,
    MUL = 4'b0010,
    DIV = 4'b0011,
    AND_OP = 4'b0100,
    OR_OP = 4'b0101,
    XOR_OP = 4'b0110,
    NOT_OP = 4'b0111
} alu_op_t;

alu_op_t ALU_CUR_STATE;
alu_op_t ALU_NEXT_STATE;

assign OUTPUT = ALU_CUR_STATE;

always_ff @(posedge clk or negedge arstn) begin
    if (!arstn) begin
        ALU_CUR_STATE <= ADD;
    end else begin
        ALU_CUR_STATE <= ALU_NEXT_STATE;
    end
end

always_comb begin
    
    ALU_NEXT_STATE = ALU_CUR_STATE;

    case (ALU_CUR_STATE)
        ADD    : ALU_NEXT_STATE = SUB;
        SUB : ALU_NEXT_STATE = MUL;
        MUL : ALU_NEXT_STATE = DIV;
        DIV : ALU_NEXT_STATE = AND_OP;
        AND_OP : ALU_NEXT_STATE = OR_OP;
        OR_OP : ALU_NEXT_STATE = XOR_OP;
        XOR_OP : ALU_NEXT_STATE = NOT_OP;
        NOT_OP : ALU_NEXT_STATE = ADD;


        default: begin
            ALU_NEXT_STATE = ADD;
        end
    endcase
end

/*
Exercise 13 - ALU Operation

Requirements

- Create typedef enum logic [3:0] alu_op_t.
- Operations:
    * ADD
    * SUB
    * MUL
    * DIV
    * AND_OP
    * OR_OP
    * XOR_OP
    * NOT_OP
- Declare one variable.
- Assign several operations.
- Display each operation.

*/

endmodule

module test_13_tb;
logic clk;
logic arstn;
logic [3:0] OUTPUT;

test_13 t13 (clk,arstn,OUTPUT);

always  begin
    #5 clk = ~clk;
end

initial begin
    clk = 0;
    arstn = 0;
    #7
    arstn = 1;
    $monitor("TIME: %0t ALU_OP: %0h",$time,OUTPUT);
    #100 $finish;
end

    
endmodule