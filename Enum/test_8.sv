module test_8(
    input logic clk,
    input logic arstn,
    input logic KEY1,
    output logic [1:0] OUTPUT
);


logic key1_reg;
logic key1_press;

always_ff @(posedge clk or negedge arstn) begin
    if (!arstn) begin
      key1_reg <= 1'b1;
    end else begin
      key1_reg <= KEY1;
    end
  end

  assign key1_press = (key1_reg == 1'b1) && (KEY1 == 1'b0);

typedef enum logic [1:0] {
    WAIT,
    COIN,
    DISPENSE,
    CHANGE
} vending_state_t;

vending_state_t CUR_STATE;
vending_state_t NEXT_STATE;


assign OUTPUT = CUR_STATE;

always_ff @(posedge clk or negedge arstn) begin
    if (!arstn) begin
        CUR_STATE <= WAIT;
    end else begin
        CUR_STATE <= NEXT_STATE;
    end
end

always_comb begin
    NEXT_STATE = CUR_STATE;
    case (CUR_STATE)
        
        WAIT: begin
            if (key1_press) begin
                NEXT_STATE = COIN;
            end
        end
        COIN: begin
            if (key1_press) begin
                NEXT_STATE = DISPENSE;
            end
        end
        DISPENSE: begin
            if (key1_press) begin
                NEXT_STATE = CHANGE;
            end
        end
        CHANGE: begin
            if (key1_press) begin
                NEXT_STATE = WAIT;
            end
        end


        default: begin
            NEXT_STATE = WAIT;
        end
    endcase
end


/*
Exercise 8 - Vending Machine

Requirements:
- Create an enum named vending_state_t.
- States:
    * WAIT
    * COIN
    * DISPENSE
    * CHANGE
- Create a case statement.
- Control one output signal for each state.
*/

endmodule