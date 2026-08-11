module test_8(
    input logic [3:0] hex,
    output logic [6:0] seg
);


function automatic logic [6:0] hex2seg(
    input logic [3:0] hex_in
);

    logic [6:0] seg_func;

    case (hex)
        4'h0: seg_func = 7'b1000000; // 0
        4'h1: seg_func = 7'b1111001; // 1
        4'h2: seg_func = 7'b0100100; // 2
        4'h3: seg_func = 7'b0110000; // 3
        4'h4: seg_func = 7'b0011001; // 4
        4'h5: seg_func = 7'b0010010; // 5
        4'h6: seg_func = 7'b0000010; // 6
        4'h7: seg_func = 7'b1111000; // 7
        4'h8: seg_func = 7'b0000000; // 8
        4'h9: seg_func = 7'b0010000; // 9

        4'hA: seg_func = 7'b0001000; // A
        4'hB: seg_func = 7'b0000011; // b
        4'hC: seg_func = 7'b1000110; // C
        4'hD: seg_func = 7'b0100001; // d
        4'hE: seg_func = 7'b0000110; // E
        4'hF: seg_func = 7'b0001110; // F
    endcase

    return seg_func;
    
endfunction




assign seg = hex2seg(hex);



/*
Exercise 7 - 7-Segment Decoder

Module
hex7seg

Input

hex (4 bits)

Output

seg (7 bits)

Requirements

Write a function that converts a hexadecimal value (0-F)
to a 7-segment display pattern.

*/

endmodule