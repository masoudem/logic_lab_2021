/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 9823010
--  Student Name: Hosna Oyarhoseini
--  Student Mail: hosna_oyar
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: Paritiy Generator Sum of Products
---  Description: Lab 04 Part 4
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module paritiy3_gen_sop (
	input a,
	input b,
	input c,
	output f	
);
	wire d, e, g, h, i, j, k;
	not g1(d, a);
	not g2(e, b);
	not g3(g, c);
	and g4(h, d, e, g);
	and g5(i, d, b, c);
	and g6(j, a, b, g);
	and g7(k, a, e, c);
	or g8(f, h, i, j, k);

endmodule