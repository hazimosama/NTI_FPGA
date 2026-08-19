module Shift_Register_TOP #(parameter division_ratio = 4)
(
    input  wire       CLK_IN,
    input  wire       reset_n,
    input  wire       hold,
    output wire [3:0] leds
);

wire       clk_div;
wire [3:0] shift_bus;

Clock_Divider #(.division_ratio(division_ratio)) U0_Clock_Divider
(
    .CLK_IN  (CLK_IN),
    .reset_n (reset_n),
    .CLK_OUT (clk_div)
);

Shift_Register_4bit #(.width(4)) U0_Shift_Register_4bit
(
    .CLK       (clk_div),
    .reset_n   (reset_n),
    .hold      (hold),
    .shift_out (shift_bus)
);

assign leds = ~shift_bus;

endmodule
