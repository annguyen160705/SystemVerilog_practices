module is_even(
    input logic [7:0] value,
    output logic even
);


function automatic logic even_result(
    input logic [7:0] value_cal
);

return ~value_cal[0];
    
endfunction

always_comb begin
    even = even_result(value);
end
/*
Exercise 4 - Even Number Check

Requirements

Write even function that returns 1 if the input is an even number.
Otherwise, return 0.

*/

endmodule

//~ `New testbench
`timescale  1ns / 1ps

module test_4;


logic [7:0] value = 0 ;

logic even ;

is_even  u (
    .value           ( value   ),
    .even   ( even   )
);

initial
begin
    $monitor("value %d even %d",value,even );
    value = 3;
    #10;

    
    value = 4;
    #10;

    
    $finish;
end

endmodule