module asertion_ex;
  bit clk,a,b;
  
  always #5 clk = ~clk; 
  
  initial begin 
    a=1;
    b=1;
	$monitor(" [%0t] |clk = %0b, a = %0b, b = %0b", $time, clk, a,b);
    #15 b=0;
    #10 b=1;
        a=0;
    #20 a=1;
    #10;
    $finish;
  end
  
  always @(negedge clk) assert (a && b);

endmodule
