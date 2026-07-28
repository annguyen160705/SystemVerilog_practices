module test_10(
    input logic clk,
    input logic arstn,
    output logic OUTPUT
);

typedef enum logic [2:0] {
    FETCH    = 3'b000,
    DECODE = 3'b001,
    EXECUTE = 3'b010,
    MEMORY = 3'b011,
    WRITEBACK = 3'b100
} state_t;

state_t CUR_STATE;
state_t NEXT_STATE;

assign OUTPUT = CUR_STATE;

always_ff @(posedge clk or negedge arstn) begin
    if (!arstn) begin
        CUR_STATE <= FETCH;
    end else begin 
        CUR_STATE <= NEXT_STATE;
    end
end


always_comb begin
    case (CUR_STATE)
        
        FETCH: begin
            NEXT_STATE = DECODE;
        end

        DECODE: begin
            NEXT_STATE = EXECUTE;
        end

        EXECUTE: begin
            NEXT_STATE = MEMORY;
        end

        MEMORY: begin
            NEXT_STATE = WRITEBACK;
        end

        WRITEBACK: begin
            NEXT_STATE = FETCH;
        end

        default: begin
            NEXT_STATE = FETCH;
        end
    endcase
end

/*
Exercise 10 - CPU Control Unit

Requirements:
- Create an enum named cpu_state_t.
- States:
    * FETCH
    * DECODE
    * EXECUTE
    * MEMORY
    * WRITEBACK
- Use logic [2:0].
- Assign explicit values.
- Implement:
    * current_state
    * next_state
- Use a case statement to perform state transitions.
*/

endmodule