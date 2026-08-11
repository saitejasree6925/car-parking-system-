`timescale 1ns/1ps

module car_parking_controller_tb;

    reg clk;
    reg reset;
    reg car_enter;
    reg car_exit;

    wire [3:0] count;
    wire full;

    car_parking_controller uut (
        .clk(clk),
        .reset(reset),
        .car_enter(car_enter),
        .car_exit(car_exit),
        .count(count),
        .full(full)
    );

    // Clock generation
    always #5 clk = ~clk;

    initial begin

        // Initialize signals
        clk = 0;
        reset = 1;
        car_enter = 0;
        car_exit = 0;

        // Reset system
        #10;
        reset = 0;

        // Car 1 enters
        #10;
        car_enter = 1;
        #10;
        car_enter = 0;

        // Car 2 enters
        #10;
        car_enter = 1;
        #10;
        car_enter = 0;

        // Car 3 enters
        #10;
        car_enter = 1;
        #10;
        car_enter = 0;

        // Car 4 enters
        #10;
        car_enter = 1;
        #10;
        car_enter = 0;

        // Car 5 enters
        #10;
        car_enter = 1;
        #10;
        car_enter = 0;

        // Car 6 enters
        #10;
        car_enter = 1;
        #10;
        car_enter = 0;

        // Car 7 enters
        #10;
        car_enter = 1;
        #10;
        car_enter = 0;

        // Car 8 enters - parking becomes full
        #10;
        car_enter = 1;
        #10;
        car_enter = 0;

        // Try to enter when full
        #10;
        car_enter = 1;
        #10;
        car_enter = 0;

        // One car exits
        #10;
        car_exit = 1;
        #10;
        car_exit = 0;

        // Another car exits
        #10;
        car_exit = 1;
        #10;
        car_exit = 0;

        #20;

        $finish;
    end

    // Monitor outputs
    initial begin
        $monitor("Time=%0t | Enter=%b | Exit=%b | Count=%d | Full=%b",
                 $time, car_enter, car_exit, count, full);
    end

endmodule