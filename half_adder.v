module half_adder(input a,b,output sum,carry); 
   assign sum=a^b;  // assigning sum as a xor b
   assign carry=a&b; // assigning carry as a and b
 endmodule