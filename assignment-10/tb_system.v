/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 
--  Student Name: 
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: System Testbench
---  Description: Lab 10 Part 4
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module tb_system ();

reg        rst ;
reg        clk ;
reg  [3:0] din ;
wire [3:0] dout_left ;
wire [3:0] dout_right ;

	
	initial begin
    	// Initialize Inputs
    		rst = 1;
    		req = 0;
    		confirm = 0;
    		din = 0;

    		// Wait 100 ns for global reset to finish
    		#25
    		rst = 0;
    		#20
    		din = 4'b0011;
    		#20
    		confirm = 0;
    		#30
    		confirm = 1;
    		din = 4'b0101;
    		#20
    		confirm = 1;
    		#20
    		req = 1;
    		confirm = 0;
    		#30
    		req = 1;
    		#20 
    		din = 4'b0101;
    		#20
    		confirm = 1;
    		#20
    		confirm = 0;
    		#20 
    		din = 4'b0100;
    		#30
    		confirm = 1;
    		#50
    		rst = 1;
    		#20
    		confirm = 0;
    		req = 0; 
    		#50 
    		rst = 0;
    		req = 1;
    		#20
    		$finish; 
  	end

endmodule

