module washing_machine(
    input clk,
    input arstn,
    output logic [2:0]  state
);

typedef enum logic [2:0] {
    IDLE = 3'b000,
    FILL = 3'b001,
    WASH = 3'b010,
    RINSE = 3'b011,
    SPIN = 3'b100,
    DONE = 3'b101
} wash_state_t;

wash_state_t current_state, next_state;

always_comb begin
    state = current_state;
end

always_ff @(posedge clk or negedge arstn) begin
    if(!arstn)
    current_state <= IDLE;
    else
    current_state <= next_state;
end

always_comb begin
    case (current_state)
        
        IDLE: next_state = FILL;
        FILL: next_state = WASH;
        WASH: next_state = RINSE;
        RINSE: next_state = SPIN;
        SPIN: next_state = DONE;
        DONE: next_state = IDLE;

        default: begin
            next_state = IDLE;
        end
    endcase
end
/*
Exercise 6 - Washing Machine Controller

Requirements:
- Create an enum named wash_state_t.
- States:
    * IDLE
    * FILL
    * WASH
    * RINSE
    * SPIN
    * DONE
- Implement state transitions.
*/

endmodule