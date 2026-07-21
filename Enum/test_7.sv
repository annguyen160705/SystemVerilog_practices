module test_7(
    input logic clk,
    input logic arstn,
    output logic output;
);


typedef enum logic [1:0] {

    ILDE = 2'b00,
    START = 2'b01,
    RECEIVE = 2'b10,
    STOP = 2'b11
} uart_state_t;

uart_state_t current_state;
uart_state_t next_state;

assign output = current_state;

always_ff @(posedge clk or negedge arstn) begin
    if (!rstn) begin
        current_state <= IDLE;
    end else begin
        current_state <= next_state;
    end
end

always_comb begin
    next_state = ILDE;
    
    case (current_state)
        
        ILDE: next_state = START;
        START: next_state = RECEIVE;
        RECEIVE: next_state = STOP;
        STOP: next_state = ILDE;
        default: begin
            next_state = ILDE;
        end
    endcase
end
/*
Exercise 7 - UART Receiver FSM

Requirements:
- Create an enum named uart_state_t.
- States:
    * IDLE
    * START
    * RECEIVE
    * STOP
- Implement:
    * current_state
    * next_state
- Use always_ff and always_comb.
*/

endmodule