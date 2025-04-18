virtual class packet;
	bit[31:0] addr;
endclass

module virtual_class;
	initial begin 
		packet p;
		p = new();
	end
endmodule
