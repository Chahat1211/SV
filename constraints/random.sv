class packet;
	rand bit[3:0] add1;
	rand bit[3:0] add2;
endclass

module aa;
	initial begin
		packet pkt;
		pkt = new();
		repeat(10) begin
			pkt.randomize();
			$display(" addr1 = %d, add2 = %d", pkt.add1, pkt.add2);
		end
	end
endmodule
