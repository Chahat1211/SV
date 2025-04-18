class Packet;
	bit [31:0] addr;
endclass

module tb;
	Packet pkt = new;
		initial begin
		$display ("addr=0x%0h", pkt.addr);
	end
endmodule
