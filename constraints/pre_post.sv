class packet;
  rand  byte addr;
  randc byte data;   
  
  function void pre_randomize();
    $display("Inside pre_randomize");
  endfunction
  
  function void post_randomize();
    $display("Inside post_randomize");
    $display("value of addr = %0d, data = %0d",addr,data);
  endfunction
endclass

module rand_methods;
  initial begin
    packet pkt;
    pkt = new();
    pkt.randomize();
  end
endmodule
