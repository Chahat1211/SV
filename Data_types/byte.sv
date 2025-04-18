module tb;
	byte m_var_s;

	initial begin 
		#10 m_var_s = 0;
		#20 m_var_s = 2**7 - 1;
		#30 m_var_s = 2**7;
		#40 m_var_s = 2**8 - 1;
	end
	initial 
		$monitor("[%0t] m_var_s = 'd%0d  (0x%0h)", $time, m_var_s, m_var_s);
endmodule
