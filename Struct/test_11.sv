module test_11();

typedef struct packed {
    logic [15:0] id;
    logic [7:0] age;
    logic [3:0] department;
    logic  active;
} employee_t;

employee_t var = '{
    default: '0
};






/*
Exercise 11 - Employee Record

Requirements:
- Create a packed struct named employee_t.
- Fields:
    * id         (16 bits)
    * age        (8 bits)
    * department (4 bits)
    * active     (1 bit)
- Declare one employee variable.
- Initialize all fields.
- Display every field.

*/

endmodule