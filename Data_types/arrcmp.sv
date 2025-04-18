module arr;
initial begin
  bit [31:0] src[5] = '{0,1,2,3,4},
             dst[5] = '{5,4,3,2,1};

  if (src==dst)
    $display("src == dst");
  else
    $display("src != dst");

  dst = src;

  src[0] = 5;

  $display("src %s dst", (src == dst) ? "==" : "!=");
 
  $display("src[1:4] %s dst[1:4]",
           (src[1:4] == dst[1:4]) ? "==" : "!=");
end
endmodule
