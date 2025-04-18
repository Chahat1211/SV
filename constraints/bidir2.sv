class packet;
  rand bit a;
  rand bit b;

  constraint a_value { a == 1; } 
  constraint b_value { if(a == 0) b == 1;
                       else       b == 0; }
endclass

module bidirectional_const;
  initial begin
    packet pkt;
    pkt = new();
    pkt.randomize() with { b == 1; };
    $display("Value of a = %0d \tb = %0d",pkt.a,pkt.b);
  end
endmodule
