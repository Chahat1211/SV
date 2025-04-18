module tb;
  bit [1:0] 	abc;

  initial begin
    abc = 1;

    case (abc)
      0 : $display ("Found to be 0");
      2 : $display ("Found to be 2");
    endcase
  end
endmodule
