module tb;
	bit[3:0] var_b;
	logic[3:0] x_val;
	
	initial begin 
		x_val = 4'b01zx;
		var_b = x_val;
		$display("x_val = %b, var_b = %b", x_val,var_b);
	end 
endmodule
