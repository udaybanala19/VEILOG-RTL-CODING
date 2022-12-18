module half_sub_tb();
  reg a,b;
  wire diff,barrow;
  integer i; //variable for loop iteration
  half_sub DUT(a,b,diff,barrow);
  
  //Instantiate the  half adder with order based port mapping
  initial
     begin
	  a=1'b0;  // initializing variables at 0 ns
	  b=1'b0;
  end
     //Process to generate stimulus using for loop
  initial 
    begin
	  for(i=0;i<4;i=i+1)
	    begin
		 {a,b}=i;
		 #10;
	end
end
 //Process to monitor the changes in the variables
initial
 $monitor("input a=%b,b=%b,output diff=%b,barrow=%b",a,b,diff,barrow);
 
 initial
 #100 $finish; //Process to terminate simulation after 500ns
 
endmodule 