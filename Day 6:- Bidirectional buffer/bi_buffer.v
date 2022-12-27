module bi_buffer(a,b,control);
  
  input control;
  inout a,b;
  
bufif1 b1 (b,a,control);
bufif0 b2 (a,b,control);

endmodule