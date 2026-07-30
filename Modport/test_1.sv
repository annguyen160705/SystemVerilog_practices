module test_1();

bus_if bus();

/*
Exercise 1 - Basic Modport

Interface
bus_if

Requirements

Create one interface.

Create:

- master modport
- slave modport

Assign directions
for all signals.

*/

endmodule


interface bus_if;
    logic in;
    logic out;

modport master (
    input out,
    output in
);

modport slave (
    input in,
    output out
);

endinterface