module abs_diff(
    input logic [7:0] a,
    input logic [7:0] b,
    output logic [7:0] diff
);


function automatic logic [7:0] diff_func(
    input logic [7:0] a_cal,
    input logic [7:0] b_cal
);
    if(a>b)
    diff_func = a_cal - b_cal; 
    else
    diff_func = b_cal - a_cal; 

    return diff_func;
endfunction

always_comb begin
    diff = diff_func(a,b);
end
/*
Exercise 3 - Absolute Difference

Requirements

Write a function that returns the absolute difference between a and b.

*/

endmodule

//~ `New testbench
`timescale  1ns / 1ps

module test_3;


// diff2 Inputs
logic [7:0] a                        = 0 ;
logic [7:0] b                        = 0 ;

// diff2 Outputs
logic [7:0] diff ;                      ;

abs_diff  u_diff (
    .a           ( a     ),
    .b           ( b     ),
    .diff         ( diff   )
);

initial
begin
    a = 3; b= 10;
    #10;

    $display("diff %d",diff );
    $finish;
end

endmodule