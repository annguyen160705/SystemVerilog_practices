module simple_FSM(
    input clk,
    input arstn,
    output logic [1:0] state
);


typedef enum logic [1:0] {
    IDLE,
    START,
    RUN,
    STOP
} state_t;

state_t current_state;
state_t next_state;

always_ff @(posedge clk or negedge arstn) begin
    if (!arstn) begin
        current_state <= IDLE;
    end else begin
        current_state <= next_state;
    end
end

always_comb begin
    state = current_state;
end

always_comb begin
    case (current_state)
        IDLE: next_state = START;
        START: next_state = RUN;
        RUN: next_state = STOP;
        STOP: next_state = IDLE;
        default: begin
            next_state = IDLE;
        end
    endcase
end
/*
Exercise 5 - Simple FSM

Requirements:
- Create an enum named state_t.
- States:
    * IDLE
    * START
    * RUN
    * STOP
- Declare:
    * current_state
    * next_state
- Implement:
    * always_ff
    * always_comb
*/

endmodule

//~ `New testbench
`timescale  1ns / 1ns

module test_5;

// simple_FSM Parameters
parameter PERIOD  = 10;


// simple_FSM Inputs
reg   clk                                  = 0 ;
reg   arstn                                = 0 ;

// simple_FSM Outputs
wire  logic [1:0] state                    ;


initial
begin
    forever #(PERIOD/2)  clk=~clk;
end



simple_FSM  u_simple_FSM (
    .clk                     ( clk                 ),
    .arstn                   ( arstn               ),

    .state                   ( state               )
);

initial
begin
    arstn = 0;
    #(PERIOD*2) arstn = 1;
    $finish;
end

endmodule