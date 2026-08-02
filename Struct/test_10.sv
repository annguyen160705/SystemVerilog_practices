module test_10();

typedef struct packed {
    logic [31:0] address;
    logic [31:0] write_data;
    logic [31:0] read_data;
    logic write_enable;
    logic ready;
    logic [1:0] response;
} bus_packet_t;

bus_packet_t packet [0:7] = '{default: '0 };

task display_packet(
    input bus_packet_t packet_in,
    input logic [2:0]  num
);
    

        $display("\npacket_num: %d \naddress: %h \nwrite_data: %h \nread_data: %h \nwrite_enable: %h \nready: %h \nresponse: %h",
        num,
        packet_in.address,
        packet_in.write_data,
        packet_in.read_data,
        packet_in.write_enable,
        packet_in.ready,
        packet_in.response
         );


endtask


initial begin
    packet[1] = packet[0];
    packet[1].ready = 1'b1;
    for (int i = 0; i < 8; i++) begin
        display_packet(packet[i],i);
    end

end




/*
Exercise 10 - Mini Bus Interface

Requirements:
- Create a packed struct named bus_packet_t.
- Fields:
    * address       (32 bits)
    * write_data    (32 bits)
    * read_data     (32 bits)
    * write_enable  (1 bit)
    * ready         (1 bit)
    * response      (2 bits)

- Declare an array of 8 bus_packet_t packets.
- Initialize every packet.
- Write a task that displays all fields of one packet.
- Copy one packet to another packet.
- Modify at least one field after copying.
- Display all packets using a loop.

*/

endmodule