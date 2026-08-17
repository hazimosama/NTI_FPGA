/* module Clock_Divider #(parameter division_ratio = 16)
(
input        CLK_IN ,
input        reset_n ,
output reg   CLK_OUT
);
reg [$clog2(division_ratio)-1:0] counter;

always @(posedge CLK_IN or negedge reset_n)
  begin
    if (!reset_n)
      begin
        CLK_OUT <= 1'b0;
        counter <= 4'b0000;
      end
   
     else if (counter == (division_ratio/2)-1)
       begin
         counter <= 4'b0000;
         CLK_OUT <=  ~CLK_OUT ;
       end

     else
       begin
         counter <= counter + 1'b1 ;
       end
  end
endmodule
*/

module Clock_Divider #(parameter division_ratio = 8)
(
input        CLK_IN ,
input        reset_n ,
output wire   CLK_OUT
);
localparam max = $clog2(division_ratio) ;
reg [max-1:0] counter;


always @(posedge CLK_IN or negedge reset_n)
  begin
    if (!reset_n)
      begin
        counter <= {max{1'b0}};
      end
     else
       begin
         counter <= counter + 1'b1 ;
       end

  end
assign CLK_OUT = counter[max-1] ; 

endmodule
