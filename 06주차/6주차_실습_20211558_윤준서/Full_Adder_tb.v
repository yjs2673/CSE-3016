`timescale 1ns / 1ps

module Full_Adder_tb;
reg a, b, c_in;
wire c_out, sum;
    
Full_Adder u_Full_Adder (
   .a(a ),
   .b(b ),
   .c_in(c_in ),
   .c_out(c_out ),
   .sum(sum )
);    
  
initial begin
   a = 1'b0;
   b = 1'b0;
   c_in = 1'b0;
end

always@(a or b or c_in) begin
   a <= #50 ~a;
   b <= #100 ~b;
   c_in <= #150 ~c_in;
end

initial begin
   #1000
   $finish;
end   
    
endmodule
