module decoder 
#(parameter logic [1:0] MODE = 2'b00)
(
    
);

generate
    
case (MODE)
    
    2'b00: begin : GEN_DEC2X4
        decoder2x4 de1 ();
    end

    
    2'b01: begin : GEN_DEC3x8
        decoder3x8 de2 ();
    end

    
    2'b10: begin : GEN_DEC4x16
        decoder4x16 de3 ();
    end
    default: begin : GEN_DEFAULT
        decoder2x4 de1();
    end
endcase
endgenerate




/*
Exercise 5 - Generate Case

Module
decoder

Requirements

Use generate-case.

Instantiate:

decoder2x4
decoder3x8
decoder4x16

depending on a parameter.

*/

endmodule




