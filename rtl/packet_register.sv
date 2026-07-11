module packet_register (
    input  logic        clk,
    input  logic        rst,
    input  logic        load,

    input  logic [7:0]  addr_in,
    input  logic [31:0] data_in,
    input  logic        write_in,

    output logic [7:0]  addr_out,
    output logic [31:0] data_out,
    output logic        write_out
);

typedef struct packed {
    logic [7:0]  addr;
    logic [31:0] data;
    logic        write;
} packet_t;

packet_t packet_reg;

always_ff @(posedge clk or posedge rst) begin
    if (rst)
        packet_reg <= '{default:0};
    else if (load)
        packet_reg <= '{
            addr  : addr_in,
            data  : data_in,
            write : write_in
        };
end

assign addr_out  = packet_reg.addr;
assign data_out  = packet_reg.data;
assign write_out = packet_reg.write;

endmodule