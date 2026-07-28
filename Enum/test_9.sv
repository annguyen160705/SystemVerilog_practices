module test_9(
    input logic clk,
    input logic arstn,
    output logic OUTPUT
);

typedef enum logic [2:0] {
    IDLE    = 3'b000,
    UP = 3'b001,
    DOWN = 3'b010,
    OPEN = 3'b011,
    CLOSE = 3'b100
} state_t;

state_t CUR_STATE;
state_t NEXT_STATE;

assign OUTPUT = CUR_STATE;

always_ff @(posedge clk or negedge arstn) begin
    if (!arstn) begin
        CUR_STATE <= ILDE;
    end else begin 
        CUR_STATE <= NEXT_STATE;
    end
end

always_comb begin
    case (CUR_STATE)
        
        IDLE:begin
            NEXT_STATE = UP;
        end

        UP:begin
            NEXT_STATE = DOWN;
        end

        DOWN:begin
            NEXT_STATE = OPEN;
        end

        OPEN:begin
            NEXT_STATE = CLOSE;
        end

        CLOSE:begin
            NEXT_STATE = IDLE;
        end


        default: begin
            NEXT_STATE = IDLE;
        end
    endcase
end

/*
Exercise 9 - Elevator Controller

Requirements:
- Create an enum named elevator_state_t.
- States:
    * IDLE
    * UP
    * DOWN
    * OPEN
    * CLOSE
- Assign explicit binary values.
- Implement a simple FSM.
*/

endmodule