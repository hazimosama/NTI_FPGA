module Clock_Divider #(parameter division_ratio = 4)
(
    input  wire CLK_IN,
    input  wire reset_n,
    output reg  CLK_OUT
);

localparam width = $clog2(division_ratio/2);

reg [width-1:0] counter;

always @(posedge CLK_IN or negedge reset_n)
begin
    if (!reset_n)
    begin
        counter <= 0;
        CLK_OUT <= 1'b0;
    end
    else if (counter == (division_ratio/2)-1)
    begin
        counter <= 0;
        CLK_OUT <= ~CLK_OUT;
    end
    else
    begin
        counter <= counter + 1'b1;
    end
end

endmodule
