module test_8();

typedef struct packed {
    logic [5:0] opcode;
    logic [4:0] rs1;
    logic [4:0] rs2;
    logic [4:0] rd;
    logic [10:0] funct;
} instruction_t;

instruction_t instruction;

logic [31:0] instruction_word;


always_comb begin
    instruction_word = 32'h16d2;
    instruction = instruction_word;
end


/*
Exercise 8 - Instruction Decoder

Requirements:
- Create a packed struct named instruction_t.
- Fields:
    * opcode
    * rs1
    * rs2
    * rd
    * funct
- Create a 32-bit instruction.
- Decode every field.
- Display the decoded values.
*/

endmodule