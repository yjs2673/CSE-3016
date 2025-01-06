`timescale 1ns / 1ps

module Half_Substractor;
reg a, b;
wire borrow, difference;
    
Half_Substractor u_Half_Substractor (
   .a(a ),
   .b(b ),
   .borrow(borrow ),
   .difference(difference )
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

