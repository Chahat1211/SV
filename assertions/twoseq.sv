
module asertion_ex;
  bit clk,a,b,c,d;
  
  always #5 clk = ~clk; 
  
  
  initial begin 
        a=1; b=1;
	$monitor("[%0t] | clk = %0b, a = %0b, b = %0b, c= %0b, d = %0b",$time,clk, a, b, c, d);
    #14 a=0; b=0; c=1;
    #10 a=1; b=0; c =0;d =1;
    #10 a=0; b=0 ; c =1;
    #10 a=1; b=1; c =0;
    #10;
    $finish;
  end
  
  sequence seq_1;
    (a && b) ##1 c;
  endsequence

  sequence seq_2;
    ##2 !d;
  endsequence

  property p;
    @(posedge clk) seq_1 |-> seq_2;
  endproperty
  a_1: assert property(p);
    
endmodule
