class myPacket;
	bit [2:0]  header;
	bit        encode;
	bit [2:0]  mode;
	bit [7:0]  data;
	bit        stop;

	function new (bit [2:0] header = 3'h1, bit [2:0] mode = 5);
		this.header = header;
		this.encode = 0;
		this.mode   = mode;
		this.stop   = 1;
	endfunction

	function display ();
		$display ("Header = 0x%0h, Encode = %0b, Mode = 0x%0h, Stop = %0b",
		           this.header, this.encode, this.mode, this.stop);
	endfunction
endclass

/*module tb_top;
	myPacket pkt0, pkt1;

	initial begin
		pkt0 = new (3'h2, 2'h3);
		pkt0.display ();

		pkt1 = new ();
		pkt1.display ();
	end
endmodule
*/

// array of classes

module tb_top;
	myPacket pkt0 [3];

	initial begin
    	for(int i = 0; i < $size (pkt0); i++) begin
   	   		pkt0[i] = new (i,i+1);
       		pkt0[i].display ();
   		end
   	end
endmodule
