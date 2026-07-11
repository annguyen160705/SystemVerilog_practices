module pipeline_register (
    input  logic clk,
    input  logic rst,
    input  logic stall,

    // Inputs
    input  logic [31:0] pc_in,
    input  logic [31:0] instruction_in,
    input  logic [31:0] rs1_data_in,
    input  logic [31:0] rs2_data_in,
    input  logic [4:0]  rd_in,
    input  logic        reg_write_in,
    input  logic        mem_read_in,
    input  logic        mem_write_in,
    input  logic        valid_in,

    // Outputs
    output logic [31:0] pc_out,
    output logic [31:0] instruction_out,
    output logic [31:0] rs1_data_out,
    output logic [31:0] rs2_data_out,
    output logic [4:0]  rd_out,
    output logic        reg_write_out,
    output logic        mem_read_out,
    output logic        mem_write_out,
    output logic        valid_out
);

/*
Exercise - Pipeline Register

Requirements:

1. Create a packed struct named pipeline_stage_t.

2. The struct shall contain:
    - pc
    - instruction
    - rs1_data
    - rs2_data
    - rd
    - reg_write
    - mem_read
    - mem_write
    - valid

3. Declare one variable:
       pipeline_stage_t stage_reg;

4. On reset:
       Clear every field using one statement.

5. On every positive clock edge:
       if (!stall)
           Load every input into stage_reg.

6. Connect every output from stage_reg.

Bonus:
    - Add a flush signal.
    - When flush is asserted,
      clear the entire pipeline register.
*/

endmodule