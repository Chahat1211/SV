class Packet;
  int addr;

  function void display ();
    $display ("[Base] addr=0x%0h", addr);
  endfunction
endclass

class extPacket extends Packet;
  function void display();
    super.display();                        
    $display ("[Child] addr=0x%0h", addr);
  endfunction

  function new ();
    super.new ();
  endfunction
endclass

module tb;
 	Packet p;
  	extPacket ep;

  	initial begin
      ep = new();
      p = new();
      ep.display();
    end
endmodule
