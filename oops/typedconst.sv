class C;
endclass

class D extends C;
endclass

module tb;
  
      C c = D::new;

endmodule

/* same as 
module tb;
	initial begin
		D d = new;
		C c = d;
	end
endmodule
*/
