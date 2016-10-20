/*
   This file was generated automatically by the Mojo IDE version B1.3.4.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module adder_2 (
    input [7:0] a,
    input [7:0] b,
    input [1:0] slct,
    output reg [23:0] out,
    output reg z,
    output reg v,
    output reg n
  );
  
  
  
  reg [23:0] sum;
  
  reg [7:0] xb;
  
  always @* begin
    
    case (slct)
      2'h0: begin
        sum = a + b;
        xb = b;
      end
      2'h1: begin
        sum = a * b;
        xb = b;
      end
      2'h2: begin
        sum = a - b;
        xb = b ^ 1'h1;
      end
      default: begin
        sum = 1'h0;
        xb = b;
      end
    endcase
    out = sum;
    if (sum == 24'h000000) begin
      z = 1'h1;
    end else begin
      z = 1'h0;
    end
    if (sum[7+0-:1] == 1'h1) begin
      n = 1'h1;
    end else begin
      n = 1'h0;
    end
    v = (a[7+0-:1] & xb[7+0-:1] & (1'h1 - sum[7+0-:1])) | ((1'h1 - a[7+0-:1]) & (1'h1 - b[7+0-:1]) & (sum[7+0-:1]));
  end
endmodule
