module test_7();

typedef struct packed {
    logic [31:0] data;
    logic parity;
    logic framing_error;
    logic parity_error;
    logic valid;
} uart_packet_t;

task print_packet(
    input uart_packet_t packet
);

    $display("data: %d parity: %d framing_error: %d parity_error: %d valid: %d",
    packet.data,
    packet.parity,
    packet.framing_error,
    packet.parity_error,
    packet.valid
     );
    
endtask


/*
Exercise 7 - UART Packet

Requirements:
- Create a packed struct named uart_packet_t.
- Fields:
    * data
    * parity
    * framing_error
    * parity_error
    * valid
- Write a task named print_packet().
- Pass the struct into the task.
- Display every field.
*/

endmodule