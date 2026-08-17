module Binary_to_7Segment_TB ();

parameter width = 4 ;

reg  [width-1:0] binary_TB ;
wire [6:0]       segment_TB ;

Binary_to_7Segment DUT
(
.binary(binary_TB) ,
.segment(segment_TB)
);

initial
 begin
    $monitor("Binary = %b | 7-Segment = %b", binary_TB, segment_TB);


    // Test Case 1
    binary_TB = 4'b0000;
    #10;
    if (segment_TB == 7'b1111110)
      begin
        $display("Test Case 1: PASS");
        $display("------------------------------------------");
      end
    else
      begin
        $display("Test Case 1: FAIL");
        $display("------------------------------------------");
      end


    // Test Case 2
    binary_TB = 4'b0001;
    #10;
    if (segment_TB == 7'b0110000)
      begin
        $display("Test Case 2: PASS");
        $display("------------------------------------------");
      end
    else
      begin
        $display("Test Case 2: FAIL");
        $display("------------------------------------------");
      end


    // Test Case 3
    binary_TB = 4'b0010;
    #10;
    if (segment_TB == 7'b1101101)
      begin
        $display("Test Case 3: PASS");
        $display("------------------------------------------");
      end
    else
      begin
        $display("Test Case 3: FAIL");
        $display("------------------------------------------");
      end


    // Test Case 4
    binary_TB = 4'b0011;
    #10;
    if (segment_TB == 7'b1111001)
      begin
        $display("Test Case 4: PASS");
        $display("------------------------------------------");
      end
    else
      begin
        $display("Test Case 4: FAIL");
        $display("------------------------------------------");
      end


    // Test Case 5
    binary_TB = 4'b0100;
    #10;
    if (segment_TB == 7'b0110011)
      begin
        $display("Test Case 5: PASS");
        $display("------------------------------------------");
      end
    else
      begin
        $display("Test Case 5: FAIL");
        $display("------------------------------------------");
      end


    // Test Case 6
    binary_TB = 4'b0101;
    #10;
    if (segment_TB == 7'b1011011)
      begin
        $display("Test Case 6: PASS");
        $display("------------------------------------------");
      end
    else
      begin
        $display("Test Case 6: FAIL");
        $display("------------------------------------------");
      end


    // Test Case 7
    binary_TB = 4'b0110;
    #10;
    if (segment_TB == 7'b1011111)
      begin
        $display("Test Case 7: PASS");
        $display("------------------------------------------");
      end
    else
      begin
        $display("Test Case 7: FAIL");
        $display("------------------------------------------");
      end


    // Test Case 8
    binary_TB = 4'b0111;
    #10;
    if (segment_TB == 7'b1110000)
      begin
        $display("Test Case 8: PASS");
        $display("------------------------------------------");
      end
    else
      begin
        $display("Test Case 8: FAIL");
        $display("------------------------------------------");
      end


    // Test Case 9
    binary_TB = 4'b1000;
    #10;
    if (segment_TB == 7'b1111111)
      begin
        $display("Test Case 9: PASS");
        $display("------------------------------------------");
      end
    else
      begin
        $display("Test Case 9: FAIL");
        $display("------------------------------------------");
      end


    // Test Case 10
    binary_TB = 4'b1001;
    #10;
    if (segment_TB == 7'b1111011)
      begin
        $display("Test Case 10: PASS");
        $display("------------------------------------------");
      end
    else
      begin
        $display("Test Case 10: FAIL");
        $display("------------------------------------------");
      end


    // Test Case 11
    binary_TB = 4'b1010;
    #10;
    if (segment_TB == 7'b0000000)
      begin
        $display("Test Case 11: PASS");
        $display("------------------------------------------");
      end
    else
      begin
        $display("Test Case 11: FAIL");
        $display("------------------------------------------");
      end


    // Test Case 12
    binary_TB = 4'b1011;
    #10;
    if (segment_TB == 7'b0000000)
      begin
        $display("Test Case 12: PASS");
        $display("------------------------------------------");
      end
    else
      begin
        $display("Test Case 12: FAIL");
        $display("------------------------------------------");
      end


    // Test Case 13
    binary_TB = 4'b1100;
    #10;
    if (segment_TB == 7'b0000000)
      begin
        $display("Test Case 13: PASS");
        $display("------------------------------------------");
      end
    else
      begin
        $display("Test Case 13: FAIL");
        $display("------------------------------------------");
      end


    // Test Case 14
    binary_TB = 4'b1101;
    #10;
    if (segment_TB == 7'b0000000)
      begin
        $display("Test Case 14: PASS");
        $display("------------------------------------------");
      end
    else
      begin
        $display("Test Case 14: FAIL");
        $display("------------------------------------------");
      end


    // Test Case 15
    binary_TB = 4'b1110;
    #10;
    if (segment_TB == 7'b0000000)
      begin
        $display("Test Case 15: PASS");
        $display("------------------------------------------");
      end
    else
      begin
        $display("Test Case 15: FAIL");
        $display("------------------------------------------");
      end


    // Test Case 16
    binary_TB = 4'b1111;
    #10;
    if (segment_TB == 7'b0000000)
      begin
        $display("Test Case 16: PASS");
        $display("------------------------------------------");
      end
    else
      begin
        $display("Test Case 16: FAIL");
        $display("------------------------------------------");
      end


    $stop;

end

endmodule