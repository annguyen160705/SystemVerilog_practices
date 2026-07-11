`timescale 1ns/1ps

module packet_register_tb;

    // DUT Inputs
    logic        clk;
    logic        rst;
    logic        load;
    logic [7:0]  addr_in;
    logic [31:0] data_in;
    logic        write_in;

    // DUT Outputs
    logic [7:0]  addr_out;
    logic [31:0] data_out;
    logic        write_out;

    // Instantiate DUT
    packet_register dut (
        .clk      (clk),
        .rst      (rst),
        .load     (load),
        .addr_in  (addr_in),
        .data_in  (data_in),
        .write_in (write_in),
        .addr_out (addr_out),
        .data_out (data_out),
        .write_out(write_out)
    );

    // Clock Generation (100 MHz)
    always #5 clk = ~clk;

    initial begin

        // Initialize signals
        clk      = 0;
        rst      = 1;
        load     = 0;
        addr_in  = 0;
        data_in  = 0;
        write_in = 0;

        // Release reset
        #12;
        rst = 0;

        // Test Case 1
        @(posedge clk);
        load     = 1;
        addr_in  = 8'h12;
        data_in  = 32'h12345678;
        write_in = 1;

        @(posedge clk);
        load = 0;

        // Test Case 2
        @(posedge clk);
        load     = 1;
        addr_in  = 8'hA5;
        data_in  = 32'hDEADBEEF;
        write_in = 0;

        @(posedge clk);
        load = 0;

        // Wait
        repeat (3) @(posedge clk);

        $finish;
    end

    // Monitor
    initial begin
        $monitor(
            "T=%0t | load=%b | addr=%h | data=%h | write=%b || OUT: addr=%h data=%h write=%b",
            $time,
            load,
            addr_in,
            data_in,
            write_in,
            addr_out,
            data_out,
            write_out
        );
    end

endmodule