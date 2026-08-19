module test_15();

typedef struct packed {
    logic [5:0] opcode;
    logic [9:0] length;
} header_t;


typedef struct packed {
    header_t header;
    logic [31:0] payload;
    logic valid;
} packet_t;

packet_t var = '{
    default: '0
};


/*
Exercise 15 - Nested Structure

Requirements:
- Create a packed struct named header_t.
- Fields:
    * opcode (6 bits)
    * length (10 bits)

- Create another packed struct named packet_t.
- Fields:
    * header  (header_t)
    * payload (32 bits)
    * valid   (1 bit)

- Declare one packet_t variable.
- Initialize every field.

*/

endmodule