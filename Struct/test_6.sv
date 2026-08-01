module test_6();

typedef struct packed {
    logic [31:0] address;
    logic [31:0] data;
    logic valid ;
} memory_t;

memory_t MEMORY[0:15];

initial begin 
MEMORY[0] = '{
    address : 32'd12344321,
    data : 32'd1,
    valid : 1'b1
}; 

MEMORY[1] = MEMORY[0]; 
end

 


/*
Exercise 6 - Memory Controller

Requirements:
- Create a packed struct named memory_t.
- Fields:
    * address
    * data
    * valid
- Declare an array of 16 entries.
- Write one entry.
- Copy one entry into another.
- Display all entries.
*/

endmodule