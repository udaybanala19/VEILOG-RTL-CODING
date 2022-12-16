module full_adder_tb();
  reg a,b,c;
  wire sum,carry;
  integer i;   //variable for loop iteration
  full_adder DUT(a,b,c,sum,carry);
 initial 
   begin
      a=1'b0;  // initializing variables at 0 ns
	  b=1'b0;
	  c=1'b0;
     end  
  initial
    begin
	  for(i=0;i<8;i=i+1)  //Process to generate stimulus using for loop
	  begin
           {a,b,c}=i;
	  #10;
	end
     end

    //Process to monitor the changes in the variables
  initial
     $monitor ("Input a=%b, b=%b, c=%b,Output sum=%b,carry=%b" ,a,b,c,sum,carry12);
 initial
  #100 $finish; //Process to terminate simulation after 100ns
endmodule  