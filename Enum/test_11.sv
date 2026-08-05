module test_11(
    logic clk,
    logic arstn,
    logic [1:0] OUTPUT
);

typedef enum logic [1:0] {
    POWER_OFF    = 2'b00,
    POWER_ON = 2'b01,
    STANDBY = 2'b10,
    RESET = 2'b11
} power_state_t;

power_state_t CUR_POWER;
power_state_t NEXT_POWER;

assign OUTPUT = CUR_POWER;

always_ff @(posedge clk or negedge arstn) begin
    if (!arstn) begin
        CUR_POWER <= STANDBY;
    end else begin
        CUR_POWER <= NEXT_POWER;
    end
end


always_comb begin
    NEXT_POWER = CUR_POWER;

    case (CUR_POWER)
        
        POWER_OFF : NEXT_POWER = POWER_ON;
        POWER_ON : NEXT_POWER = STANDBY;
        STANDBY : NEXT_POWER = RESET;
        RESET : NEXT_POWER = POWER_OFF;

        default: begin
            NEXT_POWER = STANDBY;
        end
    endcase


end
/*
Exercise 11 - Power State

Requirements

- Create typedef enum logic [1:0] power_state_t.
- States:
    * POWER_OFF
    * POWER_ON
    * STANDBY
    * RESET
- Declare one variable.
- Assign different states.
- Display every state.

*/

endmodule