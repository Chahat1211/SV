module tb;
	int x = 4;

  	initial begin
      	priority if (x == 4)
      		$display ("x is %0d", x);
      else if (x != 5)
      		$display ("x is %0d", x);
  	end
endmodule

