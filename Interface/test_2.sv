module top();

instan producer;
instan consumer;

always_comb begin
    consumer.in = producer.in; 
    consumer.out = producer.out; 
end

/*
Exercise 2 - Interface Instantiation

Module
top

Requirements

Instantiate an interface.

Connect the same interface
to one producer module
and one consumer module.

*/

endmodule

interface instan ;
    logic in;
    logic out;
endinterface