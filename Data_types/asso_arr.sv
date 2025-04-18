module tb;

	int   	array1 [int]; 			
	int   	array2 [string]; 		
	string  array3 [string]; 		

  	initial begin
    	array1 = '{ 1 : 22,
	            	6 : 34 };

		array2 = '{ "Ross" : 100,
	            	"Joey" : 60 };

		array3 = '{ "Apples" : "Oranges",
				"Pears" : "44"};
      $display ("array1 = %p", array1);
      $display ("array2 = %p", array2);
      $display ("array3 = %p", array3);
    end
endmodule
