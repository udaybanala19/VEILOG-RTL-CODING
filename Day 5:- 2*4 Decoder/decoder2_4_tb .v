module decoder2_4_tb();

reg a,b;
wire y3,y2,y1,y0;
integer i;

decoder2_4 DUT(a,b,y3,y2,y1,y0);

initial 
  begin
    a=1'b0;
	b=1'b0;
 end
 
 initial
   begin
     for(i=0;i<4;i=i+1)
	 begin
	 {a,b}=i;
	 #10;
	 end
	end
	
   initial
   $monitor("input a=%b,b=%b, output y0=%b,y1=%b,y2=%b,y3=%b",a,b,y0,y1,y2,y3);
   initial
   #100 $finish;
   
 endmodule