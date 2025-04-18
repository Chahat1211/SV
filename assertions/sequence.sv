module asertion_ex;
  bit clk,a,b;
  
  always #5 clk = ~clk;

  initial begin 
        a=1; b=1; 
	$monitor("[%0t] | clk = %0b, a = %0b, b = %0b",$time,clk, a, b);
    #15 a=0; b=0;
    #10 a=1; b=0;
    #10 a=0; b=0;
    #10 a=1; b=1;
    #10;
    $finish;
  end
  
  sequence seq_2;
    @(posedge clk) a||b;
  endsequence
  
 
  a_1: assert property(seq_2);
    
endmodule
