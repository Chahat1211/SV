typedef enum {GREEN, YELLOW, RED, BLUE} colors;

module tb;
	initial begin
      colors color;

     
      color = YELLOW;

      $display ("color.first() = %0d", color.first());  
      $display ("color.last()  = %0d", color.last());	
      $display ("color.next()  = %0d", color.next()); 	
      $display ("color.prev()  = %0d", color.prev()); 
      $display ("color.num()   = %0d", color.num()); 	
      $display ("color.name()  = %s" , color.name()); 	
    end
endmodule
