class Packet;
	int count;
endclass

module tb;
  	
	Packet pkt;

  	initial begin
      if (pkt == null)
        $display ("Packet handle 'pkt' is null");

      pkt = new();

      if (pkt == null)
        $display ("What's wrong, pkt is still null ?");
      else
        $display ("Packet handle 'pkt' is now pointing to an object, and not NULL");
      $display ("count = %0d", pkt.count);
  	end
endmodule
