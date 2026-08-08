module test_12(
    input logic clk,
    input logic arstn,
    output logic OUTPUT
);

typedef enum logic [2:0] {
    IDLE    = 3'b000,
    START = 3'b001,
    DATA = 3'b010,
    PARITY = 3'b011,
    STOP = 3'b100
} uart_state_t;

uart_state_t current_state;
uart_state_t next_state;

always_ff @(posedge clk or negedge arstn) begin
    if (!arstn) begin
        current_state <= IDLE;
    end else begin
        current_state <= next_state;
    end
end

always_comb begin
    
    next_state = current_state;

    case (current_state)
        
        IDLE: next_state = START;
        START: next_state = DATA;
        DATA: next_state = PARITY;
        PARITY: next_state = STOP;
        STOP: next_state = IDLE;

        default: begin
            next_state = IDLE;
        end
    endcase
end

assign OUTPUT = current_state;




/*
Exercise 12 - UART FSM

Requirements

- Create typedef enum logic [2:0] uart_state_t.
- States:
    * IDLE
    * START
    * DATA
    * PARITY
    * STOP
- Declare current_state.
- Assign several states.
- Display each state.

*/

endmodule