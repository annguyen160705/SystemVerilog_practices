module fan_speed();

typedef enum logic [1:0] {
    OFF,
    LOW,
    MEDIUM,
    HIGH
} speed_t;

speed_t speed;
/*
Exercise 2 - Fan Speed

Requirements:
- Create an enum named speed_t.
- States:
    * OFF
    * LOW
    * MEDIUM
    * HIGH
- Use logic [1:0].
- Declare one variable.
*/

endmodule