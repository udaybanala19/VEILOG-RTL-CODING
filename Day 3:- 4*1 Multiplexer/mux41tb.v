module mux41_tb();
reg i0,i1,i2,i3,s0,s1;
wire y;
integer i;

mux41 DUT (i0,i1,i2,i3,s0,s1,y);

initial 
  begin
   for(i=0;i<50;i=i+1)
   begin
   {i0,i1,i2,i3,s0,s1}=i;
   #10;
   end
  end
  initial
  #500 $finish;
  
endmodule 