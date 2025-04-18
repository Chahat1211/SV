class packet;
  rand bit [3:0] addr;
  constraint addr_range { soft addr > 6; } 
endclass

module soft_constr;
  initial begin
    packet pkt;
    pkt = new();

    repeat(5) begin
      pkt.randomize() with { addr < 6;};
      $display("\taddr = %0d",pkt.addr);
    end
  end
endmodule
