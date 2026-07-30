

/*
Exercise 1 - Basic Interface

Interface
simple_if

Requirements

Create an interface containing:

clk
rst_n
data (8 bits)
valid

*/



interface simple_if;
    logic clk;
    logic rst_n;
    logic [7:0] data;
    logic valid;
endinterface