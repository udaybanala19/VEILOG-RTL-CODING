module mux81(input i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2, output y);
  
  wire w0,w1,w2,w3,w4,w5;

   mux21 m1 (i0,i1,s0,w0);
   mux21 m2 (i2,i3,s0,w1);
   mux21 m3 (i4,i5,s0,w2);
   mux21 m4 (i6,i7,s0,w3);
   mux21 m5 (w0,w1,s1,w4);
   mux21 m6 (w2,w3,s1,w5);
   mux21 m7 (w4,w5,s2,y);
   
 endmodule 