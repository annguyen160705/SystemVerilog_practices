module test_3();

typedef struct packed {
    logic [1:0] addr;
    logic [1:0] data;
} packet_t;

packet_t packet_a, packet_b;


initial begin
        
    packet_a = '{
        addr : 2'b0,
        data : 2'b1 
    };

    packet_b = packet_a;

    packet_b.addr = 2'b11;
    $display("packet_a %b, packet_b %b", packet_a, packet_b );
end
/*
Exercise 3 - Packet Copy

Requirements:
- Create a packed struct named packet_t.
- Declare packet_a and packet_b.
- Assign values to packet_a.
- Copy packet_a into packet_b.
- Modify packet_b.
- Display both packets.
*/

endmodule