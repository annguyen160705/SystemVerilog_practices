interface simple_if;
    logic data;
    logic valid;
endinterface

module producer(
    simple_if bus
);

    assign bus.data  = 1'b1;
    assign bus.valid = 1'b1;

endmodule

module consumer(
    simple_if bus
);

    always_comb begin
        if (bus.valid)
            $display("Data = %b", bus.data);
    end

endmodule

module top;

    simple_if bus();      // Tạo 1 interface

    producer u_producer(bus);
    consumer u_consumer(bus);

endmodule