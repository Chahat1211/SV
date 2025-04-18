module asertion_ex;
  bit clk,a,b;
  
  always #5 clk = ~clk;
  
  initial begin 
        a=1; b =1;
	$monitor("[%0t] | clk = %0b, a = %0b, b = %0b",$time,clk, a, b);
    #14 a=0; b=0;
    #10 a=1; b=0;
    #10 a=0; b=0;
    #10 a=1; b=1;
    #10;
    $finish;
  end
  
  property p;
    @(posedge clk) a |-> ##[1:3] b;
  endproperty
  
  a_1: assert property(p);

endmodule
