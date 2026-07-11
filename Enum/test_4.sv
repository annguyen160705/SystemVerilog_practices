module traffic_led_decoder();

typedef enum logic [1:0] { 
    RED,
    YELLOW,
    GREEN
} light_t;

light_t light;

logic [2:0] led;
always_comb begin
    case(light)
        RED: led = 3'b00; 
        YELLOW: led = 3'b01; 
        GREEN: led = 3'b10; 
    endcase
end

/*
Exercise 4 - Traffic LED Decoder

Requirements:
- Create an enum named light_t.
- States:
    * RED
    * YELLOW
    * GREEN
- Create an always_comb block.
- Use a case statement.
- Drive a 3-bit LED output.
*/

endmodule