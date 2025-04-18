class packet;
  rand bit       a;
  rand bit [3:0] b;

  constraint sab { solve a before b;}
  constraint a_b { (a == 1) -> b == 0;}
endclass

module inline_constr;
  initial begin
    packet pkt;
    pkt = new();
    repeat(10) begin
      pkt.randomize();
      $display("\tValue of a = %0d, b = %0d",pkt.a,pkt.b);
    end
  end
endmodule
