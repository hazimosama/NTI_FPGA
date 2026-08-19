module Binary_to_7Segment #(parameter width = 4)
(
input  wire [width-1:0] binary ,
output reg  [6:0]       segment
);

always @ (*)
 begin
  case (binary)
    4'b0000 : begin
               segment = 7'b1111110 ;
              end
 
    4'b0001 : begin
               segment = 7'b0110000 ;
              end

    4'b0010 : begin
                segment = 7'b1101101 ;
              end

    4'b0011 : begin
               segment = 7'b1111001 ;
             end

    4'b0100 : begin
               segment = 7'b0110011 ;
             end

    4'b0101: begin
              segment = 7'b1011011; 
            end

    4'b0110: begin
              segment = 7'b1011111 ; 
            end

    4'b0111: begin
              segment = 7'b1110000 ; 
            end

    4'b1000: begin
              segment = 7'b1111111 ; 
            end
 
    4'b1001: begin
             segment = 7'b1111011; 
            end

   default : begin
               segment = 7'b0000000 ;
             end
  endcase
 end

endmodule

