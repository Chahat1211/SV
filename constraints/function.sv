class packet;
  rand bit [3:0] start_addr;
  rand bit [3:0] end_addr;
  
  constraint start_addr_c { start_addr == s_addr(end_addr); }
  
  function bit [3:0] s_addr(bit [3:0] e_addr);
    if(e_addr < 4) 
      s_addr = 0;
    else 
      s_addr = e_addr - 4;
  endfunction
  
endclass

module func_constr;
  initial begin
    packet pkt;
    pkt = new();
    repeat(3) begin
      pkt.randomize();
      $display("\tstart_addr = %0d end_addr =",pkt.start_addr,pkt.end_addr);
    end
  end
endmodule
