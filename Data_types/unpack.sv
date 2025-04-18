module tb;
	shortint 	stack [8]; 		

	initial begin
		
		foreach (stack[i]) begin
			stack[i] = $random;
			$display ("Assign %d to index %0d", stack[i], i);
		end
		$display ("stack = %p", stack);
	end
endmodule
