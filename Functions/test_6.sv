module old_parity(
    input logic [7:0] data,
    output logic parity
);


function automatic logic odd_parity_func(
    input logic [7:0]  data_in
);

    logic parity_bit;
    parity_bit = ~(^data_in); 

    odd_parity_func = parity_bit;

    
endfunction

assign parity = odd_parity_func(data);
/*
Exercise 6 - Odd Parity

Module
odd_parity

Input

data (8 bits)

Output

parity (1 bit)

Requirements

Write a function that returns the odd parity bit of the input.

*/

endmodule