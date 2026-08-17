module Up_Down_Counter #(parameter width = 4)
(
input                  reset_n,
input                  CLK,
input                  load_enable,
input                  enable,
input                  up,
input  [width-1:0]     load_value,

output reg [width-1:0] count
);

always @(posedge CLK or negedge reset_n)
 begin
    if (!reset_n)
      begin
        count <= 4'b0000 ;
      end

    else if (load_enable)
      begin
         count <= load_value;
      end

    else if (enable)
      begin
        if (up)
          begin
            count <= count + 1'b1;
          end

        else
          begin
            count <= count - 1'b1;
          end
    end
end

endmodule
