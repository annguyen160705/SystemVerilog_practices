module test_4();

typedef struct packed {
    logic [7:0] address;
    logic [31:0] data;
    logic valid; 
} register_t;

register_t mem[0:7] = '{default:0};

/*
Exercise 4 - Register File

Requirements:
- Create a packed struct named register_t.
- Fields:
    * address (8 bits)
    * data    (32 bits)
    * valid   (1 bit)
- Declare an array of 8 registers.
- Initialize every register.
- Display all registers.
*/

endmodule