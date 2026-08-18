module Shift_Register_4bit #(parameter width = 4)
(
    input  wire             CLK,
    input  wire             RST,
    input  wire             shift_in,
    output reg  [width-1:0] shift_out
);

always @(posedge CLK or negedge RST)
 begin
    if (!RST)
        shift_out <= 4'b0000;

    else
       begin
         shift_out  <= {shift_in , shift_out[3:1]} ;
       end
 end

endmodule