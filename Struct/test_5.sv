module test_5();

typedef struct packed {
    logic [7:0] day;
    logic [7:0] month;
    logic [15:0] year;
} date_t;

typedef struct packed {
    logic [7:0] id;
    logic [7:0] salary;
    date_t birthday;
} employee_t;

date_t dmy= '{
    day : 8'd12,
    month : 8'd12,
    year : 16'd2026
};

employee_t An = '{
    id : 8'b11100000,
    salary : 8'd12,
    birthday: dmy
};

/*
Exercise 5 - Employee Database

Requirements:
- Create a packed struct named date_t.
    * day
    * month
    * year
- Create a struct named employee_t.
    * id
    * salary
    * birthday (date_t)
- Assign values.
- Display every field.
*/

endmodule