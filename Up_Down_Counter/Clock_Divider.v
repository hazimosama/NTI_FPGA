module Clock_Divider #(parameter division_ratio = 4)
(
input         CLK_IN ,
input         reset_n ,
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
