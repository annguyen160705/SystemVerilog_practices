module test_9(
    logic clk,
    logic arstn
);

typedef struct packed {
    logic [31:0] pc;
    logic [31:0] instruction;
    logic valid;
} pipeline_stage_t;

pipeline_stage_t IF = '{
    default: '0
};

pipeline_stage_t ID = '{
    default: '0
};
pipeline_stage_t EX = '{
    default: '0
};
pipeline_stage_t MEM = '{
    default: '0
};
pipeline_stage_t WB = '{
    default: '0
};

always_ff @(posedge clk or negedge arstn) begin
    if (!arstn) begin
        IF <= '0;
        ID <= '0;
        EX <= '0;
        MEM <= '0;
        WB <= '0;
    end else begin
        ID <= IF;
        EX <= ID;
        MEM <= EX;
        WB <= MEM;
    end
end


/*
Exercise 9 - Five-Stage Pipeline

Requirements:
- Create a packed struct named pipeline_stage_t.
- Fields:
    * pc
    * instruction
    * valid
- Declare:
    * IF
    * ID
    * EX
    * MEM
    * WB
- Shift data through the pipeline.
- Display every stage.
*/

endmodule