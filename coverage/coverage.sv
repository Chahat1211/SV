module tb;

  bit [1:0] mode;
  bit [2:0] cfg;
  bit clk;
  always #20 clk = ~clk;

  covergroup cg @ (posedge clk);
    coverpoint mode;
  endgroup

  cg  cg_inst;

  initial begin
    cg_inst= new();

    for (int i = 0; i < 16; i++) begin
      @(negedge clk);
      mode = $random;
      cfg  = $random;
      $display ("[%0t] mode=0x%0h cfg=0x%0h", $time, mode, cfg);
    end
  end

  initial begin
    #500 $display ("Coverage = %0.2f %%", cg_inst.get_inst_coverage());
    $finish;
  end
endmodule
