module UP_Down_Counter_TOP
#(
    parameter division_ratio = 4
)
(
    input             CLK_IN,
    input             reset_n,
    input             enable,
    input             up,
    output wire [6:0]  segment
);

wire [3:0] count;
wire       CLK_OUT;

Up_Down_Counter U0_Up_Down_Counter
(
    .reset_n (reset_n),
    .CLK     (CLK_OUT),
    .enable  (enable),
    .up      (up),
    .count   (count)
);

Clock_Divider #(.division_ratio(division_ratio)) U0_Clock_Divider
(
    .CLK_IN  (CLK_IN),
    .reset_n (reset_n),
    .CLK_OUT (CLK_OUT)
);

Binary_to_7Segment U0_Binary_to_7Segment
(
    .binary  (count),
    .segment (segment)
);

endmodule