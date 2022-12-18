module full_sub(input a,b,bin ,output diff,barrow);
 assign diff=a^b^bin;
 assign barrow=~a&b|(~a|b)&bin;
endmodule 