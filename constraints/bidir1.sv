class packet;
  rand bit [3:0] a;
  rand bit [3:0] b;
  rand bit [3:0] c;

  constraint a_value { a == b + c; } 
  constraint b_value { b > 6; }
  constraint c_value { c < 8; }
endclass

module bidirectional_constr;
  initial begin
    packet pkt;
    pkt = new();
    repeat(5) begin
      pkt.randomize();
      $display("Value of a = %0d \tb = %0d \tc =%0d",pkt.a,pkt.b,pkt.c);
    end
  end
endmodule
