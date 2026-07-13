module test_2();

typedef struct packed {
    logic [7:0] addr;
    logic [31:0] data;
    logic write;
} packet_t;

packet_t pkt1 = '{default:0};
packet_t pkt2 = '{8'h2, 32'd32, 1'b1};

initial begin
    
    $display("Packet 1 - Addr: %0h, Data: %0h, Write: %b", pkt1.addr, pkt1.data, pkt1.write);
    $display("Packet 2 - Addr: %0h, Data: %0h, Write: %b", pkt2.addr, pkt2.data, pkt2.write);
end
/*
Exercise 2 - Bus Packet

Requirements:
- Create a packed struct named packet_t.
- Fields:
    * addr  (8 bits)
    * data  (32 bits)
    * write (1 bit)
- Initialize using:
    * named assignment
    * default assignment
- Display every field.
*/

endmodule