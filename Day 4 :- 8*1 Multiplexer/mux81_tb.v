module mux81_tb();
reg i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2;
wire y;
integer i;

mux81 DUT (i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2,y);

initial 
  begin
   for(i=0;i<50;i=i+1)
   begin
   {i0,i1,i2,i3,i4,i5,i6,i7,s0,s1,s2}=i;
   #10;
   end
  end
  initial
  #500 $finish;
  
endmodule 