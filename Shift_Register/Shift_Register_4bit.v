module Shift_Register_4bit #(parameter width = 4)
(
    input  wire             CLK,
    input  wire             reset_n,
    input  wire             hold,      
    output reg  [width-1:0] shift_out
);

always @(posedge CLK or negedge reset_n)
 begin
    if (!reset_n)
        shift_out <= 4'b0001;

    else if (hold)
       begin
         shift_out  <= {shift_out[0] , shift_out[width-1:1]} ;
       end
 end

endmodule
