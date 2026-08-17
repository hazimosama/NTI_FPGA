module wrapper
(
input  wire [3:0] gray_inv ,
output wire [6:0] segment_out
);

wire [3:0] binary ;

Gray_to_Binary_4bit U0
(
    .gray(gray_inv) ,
    .binary(binary)
);

Binary_to_7Segment U1
(
    .binary(binary) ,
    .segment(segment_out)
);

endmodule