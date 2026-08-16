module bit_converter #(parameter width = 4)
(
input         [width-1:0]   A ,

output reg    [width-1:0]   B 
);

always @ (*)
 begin
   B[3] = A[3] ;
   B[2] = B[3] ^ A[2] ;
   B[1] = B[2] ^ A[1] ;
   B[0] = B[1] ^ A[0] ;
  end
endmodule