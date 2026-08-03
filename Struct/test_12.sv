module test_12();


typedef struct packed {
    logic [31:0] src_addr;
    logic [31:0] dst_addr;
    logic [15:0] length;
    logic [15:0] checksum;
    logic valid;
} packet_t;

packet_t var = '{
    default: '0
};

/*
Exercise 12 - Network Packet

Requirements:
- Create a packed struct named packet_t.
- Fields:
    * src_addr (32 bits)
    * dst_addr (32 bits)
    * length   (16 bits)
    * checksum (16 bits)
    * valid    (1 bit)
- Declare one packet variable.
- Assign values to every field.
- Display the packet information.

*/

endmodule