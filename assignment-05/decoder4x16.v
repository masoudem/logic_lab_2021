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
---  Module Name: Decoder 4 to 16
---  Description: Lab 05 Part 2
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module decoder4x16 (
	input [3:0] in ,
	input 		en ,
	output [15:0] dout
);
wire [3:0] w;
	
	decoder2x4 decoder0(w[3:0], in[1:0], en);
	decoder2x4 decoder1(dout[3:0], in[3:2], w[0]);
	decoder2x4 decoder2(dout[7:4], in[3:2], w[1]);
	decoder2x4 decoder3(dout[11:8], in[3:2], w[2]);
	decoder2x4 decoder4(dout[15:12], in[3:2], w[3]);
endmodule
