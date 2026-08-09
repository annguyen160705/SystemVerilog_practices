module test_13();


typedef struct packed {
    logic [7:0] id;
    logic [7:0] score;
    logic pass;
} student_t;


student_t STUDENT [0:7] = '{
    default: '0
};

integer i;

initial begin
    
    STUDENT[0].id = 8'h1;

    for (i = 0; i< 8 ; i = i + 1)  begin
        $display("student [%0d] id: %0d \nstudent [%0d] score: %0d \nstudent [%0d] pass: %0d",i,STUDENT[i].id,i,STUDENT[i].score,i,STUDENT[i].pass );
    end

end



/*
Exercise 13 - Array of Structures

Requirements:
- Create a packed struct named student_t.
- Fields:
    * id    (8 bits)
    * score (8 bits)
    * pass  (1 bit)
- Declare an array containing 8 student_t elements.
- Initialize every array element.
- Display all elements using a loop.

*/

endmodule