module Up_Down_Counter_TB ();

parameter width = 4 ;

reg               reset_n_TB ;
reg               CLK_TB ;
reg               load_enable_TB ;
reg               enable_TB ;
reg               up_TB ;
reg  [width-1:0]  load_value_TB ;

wire [width-1:0]  count_TB ;


Up_Down_Counter #(width) DUT
(
.reset_n(reset_n_TB),
.CLK(CLK_TB),
.load_enable(load_enable_TB),
.enable(enable_TB),
.up(up_TB),
.load_value(load_value_TB),
.count(count_TB)
);

always #5 CLK_TB = ~CLK_TB ;

initial
  begin
    CLK_TB = 1'b0;
    reset_n_TB = 1'b0;
    load_enable_TB = 1'b0;
    enable_TB = 1'b0;
    up_TB = 1'b0;
    load_value_TB = 4'b0000;

   #10
   reset_n_TB = 1'b1;

   #10
    load_enable_TB = 1'b1;
    load_value_TB  = 4'd5;
   #10
    load_enable_TB = 1'b0;


    enable_TB = 1'b1;
    up_TB     = 1'b1;

    #50;

    
    up_TB = 1'b0;

    #50;

    
    enable_TB = 1'b0;

    #20;

   
    enable_TB = 1'b1;
    up_TB     = 1'b1;

    #30;

    $stop;

end

endmodule