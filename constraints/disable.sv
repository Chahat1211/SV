class packet;
	rand byte addr;
	rand byte data;
endclass

module dis;
	initial begin 
		packet pkt;
		pkt = new();
		pkt.addr.rand_mode(0);
		pkt.randomize();
		
		$display("addr = %0d, data = %0d", pkt.addr, pkt.data);
		$display("addr.rand_mode = %0d, data.rand_mode = %0d", pkt.addr.rand_mode(), pkt.data.rand_mode());
	end
endmodule
