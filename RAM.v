module RAM #( parameter DATA_WIDTH = 16,          
 parameter DEPTH= 512,
 parameter ADDR_WIDTH= $clog2(DEPTH)
)(
    input  wire  Clk,Reset,W_R,      
    input  wire [DATA_WIDTH-1:0] WR_Data,    
    input  wire [ADDR_WIDTH-1:0] WR_ADDR,    
    input  wire [ADDR_WIDTH-1:0] RD_ADDR1,  
    input  wire [ADDR_WIDTH-1:0] RD_ADDR2,  
    output reg [DATA_WIDTH-1:0] RD_Data_1,  
    output reg [DATA_WIDTH-1:0] RD_Data_2  
);

    reg [DATA_WIDTH-1:0] ram [0:DEPTH-1];

    always @(posedge Clk) 
	   begin
        if (W_R) 
		    begin
            ram[WR_ADDR] <= WR_Data;
          end 
		  else
		    begin
            RD_Data_1 = ram[RD_ADDR1];
            RD_Data_2 = ram[RD_ADDR2];			   
		    end	
		  
	   end
endmodule
