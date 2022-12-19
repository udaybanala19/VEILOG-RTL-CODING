module mux41(input i0,i1,i2,i3,s0,s1, output y);
  
  wire w0,w1;

   mux21 m1 (i0,i1,s0,w0);
   mux21 m2 (i2,i3,s0,w1);
   mux21 m3 (w0,w1,s1,y);
   
 endmodule 