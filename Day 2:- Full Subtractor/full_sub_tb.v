module full_sub_tb();
  reg a,b,bin;
  wire diff,barrow;
  integer i;   //variable for loop iteration
  full_sub DUT(a,b,bin,diff,barrow);
 initial 
   begin
      a=1'b0;  // initializing variables at 0 ns
	  b=1'b0;
	  bin=1'b0;
     end  
  initial
    begin
	  for(i=0;i<8;i=i+1)  //Process to generate stimulus using for loop
	  begin
           {a,b,bin}=i;
	  #10;
	end
     end

    //Process to monitor the changes in the variables
  initial
     $monitor ("Input a=%b, b=%b, bin=%b,Output diff=%b,barrow=%b" ,a,b,bin,diff,barrow);
 initial
  #100 $finish; //Process to terminate simulation after 100ns
endmodule 