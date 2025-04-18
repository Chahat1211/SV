class unique_elements;
  rand bit [31:0] array[10];
  
  constraint array_c {unique {array}; foreach(array[i]) array[i] < 10;}
  
  function void display();
    $display("array = %p",array);
  endfunction
endclass

program unique_elements_randomization;
  unique_elements pkt;

  initial begin
    pkt = new();
    pkt.randomize();
    pkt.display();   
  end
  
endprogram
