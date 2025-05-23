class packet;

  bit [31:0] addr;
  bit [31:0] data;
  bit   write;
  string  pkt_type;
  
  function new(bit [31:0] addr,data,bit write,string pkt_type);
    this.addr  = addr;
    this.data  = data;
    this.write = write;
    this.pkt_type = pkt_type;
  endfunction
  
  function void display();
    $display("---------------------------------------------------------");
    $display("\t addr  = %0h",addr);
    $display("\t data  = %0h",data);
    $display("\t write = %0h",write);
    $display("\t pkt_type  = %0s",pkt_type);
    $display("---------------------------------------------------------");
  endfunction
  
endclass

module sv_constructor;
  packet pkt;

  initial begin
    pkt = new(32'h10,32'hFF,1,"GOOD_PKT");
    pkt.display();
  end
  
endmodule
