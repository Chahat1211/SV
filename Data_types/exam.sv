module tb;
  bit [3:0][7:0] 	m_data; 	

	initial begin
		
		m_data = 32'hface_cafe;

      $display ("m_data = 0x%0h", m_data);

      for (int i = 0; i < $size(m_data); i++) begin
        $display ("m_data[%0d] = %b (0x%0h)", i, m_data[i], m_data[i]);
		end
	end
endmodule
