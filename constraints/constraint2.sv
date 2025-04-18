class packet;

  rand  bit [3:0] addr;
  constraint addr_range;
endclass

constraint packet::addr_range { addr > 5; }

module extern_constr;
  initial begin
    packet pkt;
    pkt = new();

    repeat(10) begin
      pkt.randomize();
      $display("addr = %0d",pkt.addr);
    end
  end
endmodule
