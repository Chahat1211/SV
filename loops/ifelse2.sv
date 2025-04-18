module tb;
	int x = 4;

  	initial begin
      	unique0 if (x == 4)
          $display ("1. x is %0d", x);
      	else if (x == 4)
          $display ("2. x is %0d", x);
      	else
          $display ("x is not 4");
  	end
endmodule
