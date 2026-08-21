`timescale 1ns/1ps

module RAM_TB();

    parameter DATA_WIDTH = 16;
    parameter DEPTH      = 512;
    parameter ADDR_WIDTH = $clog2(DEPTH);

    reg                    Clk;
    reg                    Reset;
    reg                    W_R;
    reg  [DATA_WIDTH-1:0]  WR_Data;
    reg  [ADDR_WIDTH-1:0]  WR_ADDR;
    reg  [ADDR_WIDTH-1:0]  RD_ADDR1;
    reg  [ADDR_WIDTH-1:0]  RD_ADDR2;

    wire [DATA_WIDTH-1:0]  RD_Data_1;
    wire [DATA_WIDTH-1:0]  RD_Data_2;



    RAM #(
        .DATA_WIDTH(DATA_WIDTH),
        .DEPTH(DEPTH),
        .ADDR_WIDTH(ADDR_WIDTH)
    ) DUT (
        .Clk      (Clk),
        .Reset    (Reset),
        .W_R      (W_R),
        .WR_Data  (WR_Data),
        .WR_ADDR  (WR_ADDR),
        .RD_ADDR1 (RD_ADDR1),
        .RD_ADDR2 (RD_ADDR2),
        .RD_Data_1(RD_Data_1),
        .RD_Data_2(RD_Data_2)
    );


    always #5 Clk = ~ Clk ;


    initial 
      begin 
        Clk    = 0 ;
        Reset   = 0;
        W_R     = 0;
        WR_Data = 0;
        WR_ADDR = 0;
        RD_ADDR1 = 0;
        RD_ADDR2 = 0;

        #10;

     
        W_R     = 1;
        WR_ADDR = 10;
        WR_Data = 16'hAAAA;

        #10;

       
        WR_ADDR = 20;
        WR_Data = 16'hBBBB;

        #10;

      
        WR_ADDR = 30;
        WR_Data = 16'hCCCC;

        #10;

        
        W_R      = 0;
        RD_ADDR1 = 10;
        RD_ADDR2 = 20;

        #10;

        
        RD_ADDR1 = 30;
        RD_ADDR2 = 10;

        #10;

        
        RD_ADDR1 = 20;
        RD_ADDR2 = 30;

        #10;

        $stop;
    end

endmodule
