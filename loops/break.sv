module tb;
  	initial begin
      for (int i = 0 ; i < 10; i++) begin
        $display ("Iteration [%0d]", i);

        if (i == 7)
          break;
      end
    end
endmodule
