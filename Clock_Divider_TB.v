module Clock_Divider_TB () ;

reg        CLK_IN_TB ;
reg        reset_n_TB ;
wire       CLK_OUT_TB ;


Clock_Divider #(.division_ratio(4)) DUT
(
.CLK_IN(CLK_IN_TB),
.reset_n(reset_n_TB),
.CLK_OUT(CLK_OUT_TB)
);

always #5 CLK_IN_TB = ~CLK_IN_TB ;

initial 
 begin
  CLK_IN_TB  = 1'b0 ;
  reset_n_TB = 1'b0 ; 
  
   #10
   reset_n_TB = 1'b1 ; 

   #100
   $stop ;

 end

   endmodule