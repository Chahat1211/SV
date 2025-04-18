module tb_top;
   initial begin

   	  #1 $display ("[%0t ns] Start fork ...", $time);

   	
      fork
         #5 $display ("[%0t ns] Thread1: Orange is named after orange", $time);

       
         begin
            #2 $display ("[%0t ns] Thread2: Apple keeps the doctor away", $time);
            #4 $display ("[%0t ns] Thread2: But not anymore", $time);
         end

       
         #10 $display ("[%0t ns] Thread3: Banana is a good fruit", $time);
      join

      $display ("[%0t ns] After Fork-Join", $time);
   end
endmodule

