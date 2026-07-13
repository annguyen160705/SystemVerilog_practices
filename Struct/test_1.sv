module test_1();

typedef struct packed {
    logic [15:0] id;
    logic [7:0] age;
    logic [7:0] score;
} student_t;


student_t An;


initial begin
    An.id = 16'd0;
    An.age = 8'd32;
    An.score = 8'd9;
$display("An's id: %d, An's age: %d, An's score: %d",An.id, An.age, An.score );
end
/*
Exercise 1 - Student Information

Requirements:
- Create a packed struct named student_t.
- Fields:
    * id    (16 bits)
    * age   (8 bits)
    * score (8 bits)
- Declare one variable.
- Assign values.
- Display every field.
*/

endmodule