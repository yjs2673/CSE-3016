`timescale 1ns / 1ps

module Half_Adder_tb;
reg a, b;
wire c, sum;
    
Half_Adder u_Half_Adder (
   .a(a ),
   .b(b ),
   .c(c ),
   .sum(sum )
);    
  
initial begin
   a = 1'b0;
   b = 1'b0;
end

always@(a or b) begin
   a <= #50 ~a;
   b <= #100 ~b;
end

initial begin
   #1000
   $finish;
end   
    
endmodule

