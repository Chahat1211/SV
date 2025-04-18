module tb;
  	initial begin
      for (int i = 0 ; i < 10; i++) begin

        if (i == 7)
          continue;

        $display ("Iteration [%0d]", i);
      end
    end
endmodule
