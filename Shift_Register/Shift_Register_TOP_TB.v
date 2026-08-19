module Shift_Register_TOP_TB ();

    reg        CLK_TB;
    reg        reset_n_TB;
    reg        hold_TB;
    wire [3:0] leds_TB;

    Shift_Register_TOP #(
        .division_ratio(4)
    ) DUT
    (
        .CLK_IN  (CLK_TB),
        .reset_n (reset_n_TB),
        .hold    (hold_TB),
        .leds    (leds_TB)
    );

    always #5 CLK_TB = ~CLK_TB;

    initial
    begin
        $monitor(" reset_n=%b | hold=%b | Internal_Bus=%b | LEDs=%b", reset_n_TB, hold_TB, DUT.shift_bus, leds_TB);

        CLK_TB     = 0;
        reset_n_TB = 0;
        hold_TB    = 1;

        #10;
        reset_n_TB = 1;

        #10;
        hold_TB = 0;

        #40;
        hold_TB = 1;

        #100;

        $stop;
    end

endmodule
