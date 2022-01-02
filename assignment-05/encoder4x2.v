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
---  Module Name: Encoder 4 to 2 Gate Level
---  Description: Lab 05 Part 1
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module encoder4x2 (
	input [3:0] din ,
	output [1:0] qout	
);
	wire [3:0] innot;
	    not n1(innot[0], din[0]);
	    not n2(innot[1], din[1]);
	    not n3(innot[2], din[2]);
	    not n4(innot[3], din[3]);

		
	wire [3:0] x;
		//this is a priority encoder thus inputs are in this shape
		//all things has been implemented based on pishghozaresh:mean all variable name and etc.
	   and an1(x[0], innot[0], innot[1], din[2]);
		and an2(x[1], innot[0], innot[1], innot[2], din[3]);
		and an3(x[2], innot[0], din[1]);
		and an4(x[3], innot[0], innot[1], innot[2], din[3]);

	or qout1(qout[1], x[0], x[1]);
	or qout0(qout[0], x[2], x[3]);
endmodule
