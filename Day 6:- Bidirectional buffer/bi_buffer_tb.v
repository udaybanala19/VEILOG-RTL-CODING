module bi_buffer_tb();

  wire a,b;
  reg control;
  reg tempa,tempb;
  integer i;
 
bi_buffer DUT(a,b,control);

assign a=control?tempa:1'bz;
assign b=~control?tempb:1'bz;

initial
  begin
    for(i=0;i<8;i=i+1)
	begin
	{tempa,tempb,control}=i;
	#10;
  end
  end 
 
 initial
 
 $monitor("a=%b,b=%b,control=%b",a,b,control);
 
endmodule 