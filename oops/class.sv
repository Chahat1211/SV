class myPacket;
	bit [2:0]  header;
	bit        encode;
	bit [2:0]  mode;
	bit [7:0]  data;
	bit        stop;

	function new (bit [2:0] header = 3'h1, bit [2:0] mode = 5, bit encode = 1, bit stop = 0 );
		this.header = header;
		encode = 0;
		this.encode = encode;
		this.mode   = mode;
		this.stop   = 1;
	endfunction
	
	function display ();
		$display ("Header = 0x%0h, Encode = %0b, Mode = 0x%0h, Stop = %0b",
		           this.header, this.encode, this.mode, this.stop);
	endfunction
endclass


module test;
	myPacket pkt; 
	initial begin
		pkt = new(); 
		pkt.display(); 
		$finish;
	end
endmodule
