class Packet;
	int count;
	function new (int count = 5);
		this.count = count;
	endfunction
endclass


module tb;
	Packet pkt = new();
  	initial begin
      if (pkt == null)
        $display ("Packet handle 'pkt' is null");

     
      $display ("count = %0d", pkt.count);
  	end
endmodule
