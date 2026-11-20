
`timescale 1ns/1ps

module tb_traffic_light;

    reg clk;
    reg reset;

    wire [1:0] NS_light;
    wire [1:0] EW_light;

    // Instantiate the traffic light controller
    traffic_light_controller uut (
        .clk(clk),
        .reset(reset),
        .NS_light(NS_light),
        .EW_light(EW_light)
    );

    // Clock generation: 10 ns period
    always #5 clk = ~clk;

    // Test sequence
    initial begin

        // Initialize signals
        clk = 0;
        reset = 1;

        // Generate waveform
        $dumpfile("traffic_light.vcd");
        $dumpvars(0, tb_traffic_light);

        // Release reset
        #10 reset = 0;

        // Run simulation
        #100;

        $finish;
    end

    // Monitor output signals
    initial begin
        $monitor("Time=%0t | Reset=%b | NS_light=%b | EW_light=%b",
                  $time, reset, NS_light, EW_light);
    end

endmodule

