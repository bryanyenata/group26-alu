/*
   This file was generated automatically by the Mojo IDE version B1.3.4.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module compare_4 (
    input [7:0] a,
    input [7:0] b,
    input [1:0] slct,
    output reg [23:0] out
  );
  
  
  
  always @* begin
    
    case (slct)
      2'h0: begin
        if (a == b) begin
          out[0+0-:1] = 1'h1;
        end else begin
          out[0+0-:1] = 1'h0;
        end
      end
      2'h1: begin
        if (a < b) begin
          out[0+0-:1] = 1'h1;
        end else begin
          out[0+0-:1] = 1'h0;
        end
      end
      2'h2: begin
        if (a > b) begin
          out[0+0-:1] = 1'h1;
        end else begin
          out[0+0-:1] = 1'h0;
        end
      end
      default: begin
        out = 1'h0;
      end
    endcase
  end
endmodule