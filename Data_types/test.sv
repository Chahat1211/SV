module tb;
	int j = 3;
	int arr[9] = '{0,7,2,5,7,1,6,3,1};
	int res[$];

	initial begin

	res = arr.unique(x);
	$display("unique_tt = %p", res);
	res = arr.unique(x) with (x >= 0);
	$display("unique = %p", res);
	end
endmodule
