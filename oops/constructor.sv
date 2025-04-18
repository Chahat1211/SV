class Packet;
  bit [31:0] addr;

  function automatic new ();
    addr = 32'hfade_cafe;
  endfunction
endclass

module tb;
  Packet pkt = new();

  initial begin
    $display ("addr=0x%0h", pkt.addr);
  end
endmodule
