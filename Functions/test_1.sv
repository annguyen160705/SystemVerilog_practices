module max2(
    input logic [7:0] a,
    input logic [7:0] b,
    output logic [7:0] max
);


function automatic logic [7:0] max2_func(
    input logic [7:0] a_cal,
    input logic [7:0] b_cal
);

    if (a>b)
        max2_func = a_cal;
    else
        max2_func = b_cal;
    
endfunction


always_comb begin
    max = max2_func(a,b);
end
/*
Exercise 1 - Maximum of Two Numbers

Requirements

Write a function that returns the larger value between a and b.

*/

endmodule

//~ `New testbench
`timescale  1ns / 1ps

module test_1;


// max2 Inputs
logic [7:0] a                        = 0 ;
logic [7:0] b                        = 0 ;

// max2 Outputs
logic [7:0] max ;                      ;

max2  u_max2 (
    .a           ( a     ),
    .b           ( b     ),
    .max         ( max   )
);

initial
begin
    a = 3; b= 10;
    #10;

    $display("max %d",max );
    $finish;
end

endmodule

