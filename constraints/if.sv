class packet;
  rand bit [3:0] addr;
       string    addr_range;
  constraint address_range { (addr_range == "small") -> (addr < 8);}
endclass

module constr_implication;
  initial begin
    packet pkt;
    pkt = new();

    pkt.addr_range = "small";
    $display("------------------------------------");
    repeat(4) begin
      pkt.randomize();
      $display("\taddr_range = %s addr = %0d",pkt.addr_range,pkt.addr);
    end
    $display("------------------------------------");
  end
endmodule
