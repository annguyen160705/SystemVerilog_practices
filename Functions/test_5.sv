module count_ones(
    input logic [7:0] data,
    output logic [3:0] count
);


function automatic logic [3:0] count_func(
    input logic [7:0]  data_in
);
    
    logic [3:0] counted = '0;

    foreach (data_in[i]) begin
        if(data_in[i] == 1)
        counted = counted + 1'b1;
    end

    return counted;

endfunction

assign count = count_func(data);

/*
Exercise 5 - Count Ones

Requirements

Write a function that returns the number of bits equal to 1 in the input.

*/

endmodule

//~ `New testbench
`timescale  1ns / 1ps

module test_5;



logic [7:0] value = 0 ;

logic [3:0] count ;

count_ones  u (
    .data           ( value   ),
    .count   ( count   )
);

initial
begin
    $monitor("value %d count %d",value,count );
    value = 3;
    #10;

    
    value = 4;
    #10;

    
    $finish;
end

endmodule