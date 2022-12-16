module half_adder_tb();
  reg a,b;
  wire sum,carry;
  integer i; //variable for loop iteration
  half_adder DUT(a,b,sum,carry);
  
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
 $monitor("input a=%b,b=%b,output sum=%b,carry=%b",a,b,sum,carry);
 
 initial
 #500 $finish; //Process to terminate simulation after 500ns
 
endmodule 