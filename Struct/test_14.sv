module test_14();

typedef struct packed {
    
    logic [15:0] address;
    logic [31:0] data;
    logic write_enable;

} register_t;

register_t var_1 = '{
    address : 16'd1234,
    data : 32'd12344321,
    write_enable: 1'b1
};

register_t var_2 = '{
    default: '0
};


initial begin
    
    var_2 = var_1;

    $display("address : %0d \ndata : %0d \nwrite_en: %0d", var_2.address, var_2.data, var_2.write_enable );


end



/*
Exercise 14 - Structure Assignment

Requirements:
- Create a packed struct named register_t.
- Fields:
    * address      (16 bits)
    * data         (32 bits)
    * write_enable (1 bit)
- Declare two register_t variables.
- Initialize the first variable.
- Copy the entire first structure into the second structure.
- Display both structures.

*/

endmodule