module tb;
    int      fruits_l0 [string];

    initial begin
      fruits_l0 = '{ "apple"  : 4,
                     "orange" : 10,
                     "plum"   : 9,
                     "guava"  : 1 };


     
      $display ("fruits_l0.size() = %0d", fruits_l0.size());

      $display ("fruits_l0.num() = %0d", fruits_l0.num());

      if (fruits_l0.exists ("orange"))
        $display ("Found %0d orange !", fruits_l0["orange"]);

      if (!fruits_l0.exists ("apricots"))
        $display ("Sorry, season for apricots is over ...");

      begin
      	string f;
        
        if (fruits_l0.first (f))
          $display ("fruits_l0.first [%s] = %0d", f, fruits_l0[f]);
      end

      begin
        string f;
        if (fruits_l0.last (f))
          $display ("fruits_l0.last [%s] = %0d", f, fruits_l0[f]);
      end

      begin
        string f = "orange";
        if (fruits_l0.prev (f))
          $display ("fruits_l0.prev [%s] = %0d", f, fruits_l0[f]);
      end

      begin
        string f = "orange";
        if (fruits_l0.next (f))
          $display ("fruits_l0.next [%s] = %0d", f, fruits_l0[f]);
      end
    end
endmodule
