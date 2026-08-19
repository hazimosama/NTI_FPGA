module Up_Down_Counter_TOP_TB();

reg CLK_IN_TB;
reg reset_n_TB;
reg enable_TB;
reg up_TB;

wire [6:0] segment_TB;

UP_Down_Counter_TOP #(.division_ratio(4)) DUT
(
    .CLK_IN  (CLK_IN_TB),
    .reset_n (reset_n_TB),
    .enable  (enable_TB),
    .up      (up_TB),
    .segment (segment_TB)
);

always #5 CLK_IN_TB = ~CLK_IN_TB;

initial
begin
    CLK_IN_TB = 0;
    reset_n_TB = 0;
    enable_TB = 0;
    up_TB = 0;

    #10;
    reset_n_TB = 1;

    // COUNT UP
    #5;
    enable_TB = 1;
    up_TB = 1;

    #160;

    // HOLD
    enable_TB = 0;

    #40;

    // COUNT DOWN
    enable_TB = 1;
    up_TB = 0;

    #160;

    // HOLD
    enable_TB = 0;

    #20;

    $stop;
end

endmodule
