module min2(
    input logic [7:0] a,
    input logic [7:0] b,
    output logic [7:0] min
);



function automatic logic [7:0] min2_func(
    input logic [7:0] a_cal,
    input logic [7:0] b_cal
);

    if (a<b)
        min2_func = a_cal;
    else
        min2_func = b_cal;
    
endfunction


always_comb begin
    min = min2_func(a,b);
end
/*

Exercise 2 - Minimum of Two Numbers

Requirements

Write a function that returns the smaller value between a and b.

*/

endmodule

//~ `New testbench
`timescale  1ns / 1ps

module test_2;


// min2 Inputs
logic [7:0] a                        = 0 ;
logic [7:0] b                        = 0 ;

// min2 Outputs
logic [7:0] min ;                      ;

min2  u_min2 (
    .a           ( a     ),
    .b           ( b     ),
    .min         ( min   )
);

initial
begin
    a = 3; b= 10;
    #10;

    $display("min %d",min );
    $finish;
end

endmodule