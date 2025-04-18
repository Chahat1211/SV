module fe;
bit[3:0] md[5];
initial begin
  $display("Initial value:");
  foreach (md[i,j])   
    $display("md[%0d][%0d] = %0d", i, j, md[i][j]);
end
endmodule
