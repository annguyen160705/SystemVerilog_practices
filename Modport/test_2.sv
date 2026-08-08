module test_2(
    
    control_if.slave consumer;
    
);



/*
Exercise 2 - Multiple Modports

Interface
control_if

Requirements

Create one interface containing:

- clk
- rst_n
- enable
- done

Create:

- producer
- consumer
- monitor

Assign directions
for all signals.

*/

endmodule

module producer(
    control_if.master bus;
);
    
endmodule


interface control_if;
    

    modport master (
        output logic clk;
        output logic rst_n;
        output logic enable;
        input logic done;
    );
    
    modport slave (
        input logic clk;
        input logic rst_n;
        input logic enable;
        output logic done;
    );



endinterface