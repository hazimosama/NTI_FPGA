module Gray_to_Binary_TB ();

parameter width = 4 ;

reg  [width-1:0] gray_TB  ;
wire [width-1:0] binary_TB ;


Gray_to_Binary_4bit DUT
(
.gray(gray_TB) ,
.binary(binary_TB)
);

initial 
 begin
    $monitor("Gray = %b | Binary = %b", gray_TB, binary_TB);

    // Test Case 1 
    gray_TB = 4'b0000; 
    #10; 
    if (binary_TB == 4'b0000) 
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
    gray_TB = 4'b0001; 
    #10; 
    if (binary_TB == 4'b0001) 
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
    gray_TB = 4'b0011; 
    #10; 
    if (binary_TB == 4'b0010) 
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
    gray_TB = 4'b0010; 
    #10; 
    if (binary_TB == 4'b0011) 
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
    gray_TB = 4'b0110; 
    #10; 
    if (binary_TB == 4'b0100) 
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
    gray_TB = 4'b0111; 
    #10; 
    if (binary_TB == 4'b0101) 
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
    gray_TB = 4'b0101; 
    #10; 
    if (binary_TB == 4'b0110) 
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
    gray_TB = 4'b0100; 
    #10; 
    if (binary_TB == 4'b0111) 
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
    gray_TB = 4'b1100; 
    #10; 
    if (binary_TB == 4'b1000) 
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
    gray_TB = 4'b1101; 
    #10; 
    if (binary_TB == 4'b1001)
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
    gray_TB = 4'b1111; 
    #10; 
    if (binary_TB == 4'b1010)
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
    gray_TB = 4'b1110; 
    #10; 
    if (binary_TB == 4'b1011) 
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
    gray_TB = 4'b1010; 
    #10; 
    if (binary_TB == 4'b1100)
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
    gray_TB = 4'b1011; 
    #10; 
    if (binary_TB == 4'b1101) 
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
    gray_TB = 4'b1001; 
    #10; 
    if (binary_TB == 4'b1110)
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
    gray_TB = 4'b1000; 
    #10; 
    if (binary_TB == 4'b1111)
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