    `timescale 1ns / 1ps
    
    
    
    module sd(
        input w,x,y,z,
        output a,b,c,d,e,f,g, dp, digit
        );
        assign e = ((~x) & (~z)) | (y & (~z)) | (w & y) | (w & x);
        assign f =  (w & (~x))| (x & (~z)) |  (w & y) |((~y) & (~z)) |  ((~w) & x & (~y));
        assign g = ((~x) & y) | (y & (~z)) | (w & (~x)) | (w & z) | ((~w) & x & (~y));
        assign a = (x & y)| ((~x) & (~z)) | ((~w) & y) | (w & (~z)) | ((~w) & x & z) | (w & (~x) & (~y));
        assign b =  ((~x) & (~z)) | ((~w) & (~y) & (~z)) |((~w) & (~x)) | ((~w) & y & z) | (w & (~y) & z);
        assign c =  ((~w) & (~y))  | ((~w) & x) | (w & (~x))| ((~w) & z) | ((~y) & z);
        assign d = (x & (~y) & z) | (x & y & (~z)) | ((~w) & (~x) & (~z)) | ((~x) & y & z) |  (w & (~y) & (~z));
        
        assign dp = 1;
       
        assign digit = 1;

    
    endmodule