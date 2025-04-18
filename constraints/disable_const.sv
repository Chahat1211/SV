class packet;
  rand  bit [3:0] addr;
  
  constraint addr_range { addr inside {5,10,15}; }
endclass

module static_constr;
  initial begin
    packet pkt;
    pkt = new();
    
    
    $display("Before Constraint disable");
    repeat(2) begin 
      pkt.randomize();
      $display("\taddr = %0d",pkt.addr);
    end 
    
    
    pkt.addr_range.constraint_mode(0);
    
    $display("After Constraint disable");
    repeat(2) begin 
      pkt.randomize();
      $display("\taddr = %0d",pkt.addr);
    end 
  end
endmodule
