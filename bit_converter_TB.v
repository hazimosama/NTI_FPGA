module bit_converter_TB ();

parameter width = 4 ;

reg  [width-1:0] A_TB ;
wire [width-1:0] B_TB ;

bit_converter DUT
(
.A (A_TB) ,
.B (B_TB)
);


initial 
  begin
     A_TB = 4'b0000 ;
     #10;
   if (B_TB == 4'b0000 )
     $display ("test case : pass : value: %b" , B_TB);
   else
     $display ("test case : fail : value: %b" , B_TB);

   A_TB = 4'b0001;
   #10;
   if (B_TB == 4'b0001 )
     $display ("test case : pass : value: %b" , B_TB);
   else
     $display ("test case : fail : value: %b" , B_TB);

   A_TB = 4'b0011;
   #10;
   if (B_TB == 4'b0010 )
     $display ("test case : pass : value: %b" , B_TB);
   else
     $display ("test case : fail : value: %b" , B_TB);

   A_TB = 4'b0010;
   #10;
   if (B_TB == 4'b0011 )
     $display ("test case : pass : value: %b" , B_TB);
   else
     $display ("test case : fail : value: %b" , B_TB);


   A_TB = 4'b0110 ;
   #10;
   if (B_TB == 4'b0100 )
     $display ("test case : pass : value: %b" , B_TB);
   else
     $display ("test case : fail : value: %b" , B_TB);


   A_TB = 4'b0111;
   #10;
   if (B_TB == 4'b0101 )
     $display ("test case : pass : value: %b" , B_TB);
   else
     $display ("test case : fail : value: %b" , B_TB);

   A_TB = 4'b0101;
   #10;
   if (B_TB == 4'b0110 )
     $display ("test case : pass : value: %b" , B_TB);
   else
     $display ("test case : fail : value: %b" , B_TB);


   A_TB = 4'b0100;
   #10;
   if (B_TB == 4'b0111 )
     $display ("test case : pass : value: %b" , B_TB);
   else
     $display ("test case : fail : value: %b" , B_TB);

   A_TB = 4'b1100;
   #10;
   if (B_TB == 4'b1000 )
     $display ("test case : pass : value: %b" , B_TB);
   else
     $display ("test case : fail : value: %b" , B_TB);

   A_TB = 4'b1101;
   #10;
   if (B_TB == 4'b1001 )
     $display ("test case : pass : value: %b" , B_TB);
   else
     $display ("test case : fail : value: %b" , B_TB);

   A_TB = 4'b1111;
   #10;
   if (B_TB == 4'b1010 )
     $display ("test case : pass : value: %b" , B_TB);
   else
     $display ("test case : fail : value: %b" , B_TB);

   A_TB = 4'b1110;
   #10;
   if (B_TB == 4'b1011 )
     $display ("test case : pass : value: %b" , B_TB);
   else
     $display ("test case : fail : value: %b" , B_TB);

   A_TB = 4'b1010;
   #10;
   if (B_TB == 4'b1100)
     $display ("test case : pass : value: %b" , B_TB);
   else
     $display ("test case : fail : value: %b" , B_TB);

   A_TB = 4'b1011;
   #10;
   if (B_TB == 4'b1101 )
     $display ("test case : pass : value: %b" , B_TB);
   else
     $display ("test case : fail : value: %b" , B_TB);

   A_TB = 4'b1001;
   #10;
   if (B_TB == 4'b1110 )
     $display ("test case : pass : value: %b" , B_TB);
   else
     $display ("test case : fail : value: %b" , B_TB);

   A_TB = 4'b1000;
   #10;
   if (B_TB == 4'b1111 )
     $display ("test case : pass : value: %b" , B_TB);
   else
     $display ("test case : fail : value: %b" , B_TB);
$stop ;

end

endmodule
