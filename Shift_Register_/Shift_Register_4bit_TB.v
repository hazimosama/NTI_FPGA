module Shift_Register_4bit_TB ();

   parameter width = 4;

    reg              CLK;
    reg              RST;
    reg              shift_in;
    wire [width-1:0] shift_out;


Shift_Register_4bit #(.width(width)) DUT
 (
        .CLK(CLK),
        .RST(RST),
        .shift_in(shift_in),
        .shift_out(shift_out)
    );

always #5 CLK = ~CLK; 


initial
 begin  
    $monitor("RST = %b | shift_in = %b | shift_out = %b", RST, shift_in, shift_out, shift_out);

    CLK = 1'b0;
    RST = 1'b0;
    shift_in = 1'b0;
        
    #10; 
    RST = 1; 
  
    #10; 
    shift_in = 1; 

    #10; 
    shift_in = 0; 

    #10; 
    shift_in = 0; 

    #10; 
    shift_in = 0; 

     
    #20;
    RST = 0; 
        
    #10;
    RST = 1; 
        
    #30;
    $stop; 
 end
      
endmodule
