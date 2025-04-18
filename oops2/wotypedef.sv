class c1;
	c2 c;
endclass

class c2;
	c1 c;
endclass

module typedef_class;
	initial begin
		c1 class1;
		c2 class2;
		$display("Inside typedef_class");
	end
endmodule
		
