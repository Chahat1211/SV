class base_class;
  
  function void display;
    $display("Inside base_class"); // this will be printed as virtual not used
  endfunction
  
endclass
 
class extended_class extends base_class;
  
  function void display;
    $display("Inside extended class");
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
