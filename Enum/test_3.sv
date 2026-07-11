module CPU_Operation();

typedef enum logic [2:0] { 
    NOP = 3'b000,
    LOAD = 3'b001,
    STORE = 3'b010,
    ADD = 3'b011,
    SUB = 3'b100
} opcode_t;


/*
Exercise 3 - CPU Operation

Requirements:
- Create an enum named opcode_t.
- Use logic [2:0].
- Assign explicit values for:
    * NOP
    * LOAD
    * STORE
    * ADD
    * SUB
*/

endmodule