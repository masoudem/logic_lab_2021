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
---  Module Name: Multiplexer 4 to 1
---  Description: Lab 05 Part 1
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module multiplexer4x1 (
	input [3:0] w ,
	input [1:0]	sel ,
	output [3:0] y
);
	wire sel_not_0;
	wire sel_not_1;
	
		not n1(sel_not_0, sel[0]);
		not n2(sel_not_1, sel[1]);
	
	wire [3:0] x;
		and an1(x[0], sel_not_1, sel_not_0, w[0]);
		and an2(x[1], sel_not_1, sel[0], w[1]);
		and an3(x[2], sel[1], sel_not_0, w[2]);
		and an4(x[3], sel[1], sel[0], w[3]);
	
	or final(y, x[0], x[1], x[2], x[3]);

endmodule
