module Gray_to_Binary_4bit #(parameter width = 4)
(
input  wire [width-1:0] gray  ,
output reg  [width-1:0] binary
);

always @ (*)
 begin
    binary[3] = gray[3] ;
    binary[2] = binary[3] ^ gray[2] ;
    binary[1] = binary[2] ^ gray[1] ;
    binary[0] = binary[1] ^ gray[0] ;
 end

endmodule
