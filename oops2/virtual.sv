class base_class;
  
  virtual function void display;//used virtual
    $display("Inside base_class");
  endfunction
  
endclass
 
class extended_class extends base_class;
  
  function void display;
    $display("Inside extended_class");//this will be printed due to virtual
  endfunction
  
endclass
 
module virtual_class;
  initial begin
    base_class     b_c;
    extended_class e_c;
    
    e_c = new();
    b_c = e_c;
    
    b_c.display();
  end
endmodule
