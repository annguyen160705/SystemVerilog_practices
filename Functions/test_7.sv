module test_7(
    input logic [7:0] data,
    output logic [7:0] result
);

function automatic logic [7:0]  reverse_bits(
    input logic [7:0] data_in
);

    logic [7:0] reversed;
    integer i;


    for (i = 0; i < 8; i = i + 1'b1) begin
        reversed [i] = data_in [7-i];
    end
       
return reversed;

    
endfunction

assign result = reverse_bits(data);
/*
Exercise 7 - Reverse Bits

Module
reverse_bits

Input

data (8 bits)

Output

result (8 bits)

Requirements

Write a function that returns the input with all bits in reverse order.

Example

00010010 -> 01001000

*/

endmodule