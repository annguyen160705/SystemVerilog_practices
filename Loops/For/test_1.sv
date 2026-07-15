module traffic_lights();

typedef enum logic [1:0] { 
    RED,
    YELLOW,
    GREEN
} light_t;


light_t light;

always_comb begin
    light = RED;
end
/*
Exercise 1 - Traffic Light

- Assign light to RED.
*/

endmodule


//~ `New testbench
`timescale  1ns / 1ps

module test_1;

traffic_lights  u_traffic_lights (

);

initial
begin
    #10;
    $display("Traffic Light: %0d", u_traffic_lights.light);
    #(100) $finish;
end

endmodule