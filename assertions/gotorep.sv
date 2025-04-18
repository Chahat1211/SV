module asertion_ex;
  bit clk,a,b,c;
  
  always #5 clk = ~clk; 
  

  initial begin 
        a=1; b=1;
	$monitor("[%0t] | clk = %0b, a = %0b, b = %0b, c = %0b",$time,clk, a, b,c);
    #14 a=0; b=1;
    #10 a=0; b=1;
    #10 a=0; b=1;
    #10 b =1;
    #20  c =1; b=1;
    #10 a=0; b=0;
    #10;
    $finish;
  end
  
  property p;
    @(posedge clk) a |-> ##1 b[=3] ##1 c;
  endproperty
  

  a_1: assert property(p);
    

endmodule
