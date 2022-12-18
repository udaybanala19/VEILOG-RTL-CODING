module half_sub(input a,b,output diff,barrow); 
   assign diff=a^b;  // assigning diff as a xor b
   assign barrow=~a&b; // assigning barrow as a and b
 endmodule