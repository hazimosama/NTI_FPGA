module Gray_to_7Segment_TOP #(parameter width = 4)
(
input  wire [width-1:0] gray ,

output wire [width-1:0] binary ,
output wire [6:0]       segment 
);


Gray_to_Binary_4bit U0
(
    .gray(gray) ,
    .binary(binary)
);


Binary_to_7Segment U1
(
    .binary(binary) ,
    .segment(segment)
);

endmodule