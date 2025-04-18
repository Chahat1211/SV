module tb;
	int x = 4;

  	initial begin
    	priority if (x == 3)
      		$display ("x is %0d", x);
    	else if (x == 5)
      		$display ("x is %0d", x);
      	else
      		$display ("x is neither 3 nor 5");

    	priority if (x == 3)
      		$display ("x is %0d", x);
    	else if (x == 5)
      		$display ("x is %0d", x);
  	end
endmodule
