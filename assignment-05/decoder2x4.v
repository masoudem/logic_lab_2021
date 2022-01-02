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
---  Module Name: Decoder 2 to 4 Gate Level
---  Description: Lab 05 Part 1
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module decoder2x4 (
	input [1:0] in ,
	input en ,
	output [3:0] dout
);
	wire innot[1:0];
	not n1(innot[0], in[0]);
	not n2(innot[1], in[1]);
	
	and an1(dout[0], innot[1], innot[0], en);
	and an2(dout[1], innot[1], in[0], en);
	and an3(dout[2], in[1], innot[0], en);
	and an4(dout[3], in[1], in[0], en);
endmodule
