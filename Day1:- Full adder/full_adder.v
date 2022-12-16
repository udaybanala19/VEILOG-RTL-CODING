module full_adder(a,b,c,sum,carry); 

     input a,b,c;
	 output sum,carry;    // declaring the input and output ports
	 wire w1,w2,w3;       // declaring the wires used to connect two half adders
	 
  half_adder HA1(.a(a),   //instantiating half_adder and writing the input and output ports
                 .b(b),
				 .sum(w1),
				 .carry(w2));
				 
 half_adder HA2(.a(w1),    //instantiating half_adder and writing the input and output ports
                .b(c),
				.sum(sum),   
				.carry(w3));
				
 or or1(carry,w3,w2);    // instantiating the or gate
 
 endmodule 