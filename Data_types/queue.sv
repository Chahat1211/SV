module fe;
int j = 1,
    b[$] = '{3,4},
    q[$] = '{0,2,5};  
initial begin
  q.insert(1, j);
  q.insert(3, b[0]);
  q.insert(4, b[1]);
  q.delete(1);
  q.push_front(6);
  j = q.pop_back;
  q.push_back(8);
  j = q.pop_front;
  foreach (q[i])
    $display(q[i]);
end

endmodule
