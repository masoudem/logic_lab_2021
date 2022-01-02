/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 9831079
--  Student Name: MasihDalfardi
--  Student Mail: masihdalfardiam@aut.ac.ir
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
        wire e1;
	wire e2;
	wire e3;
	
		not a1(e1, a);
		not a2(e2, b);
		not a3(e3, c);
	
	wire g1;
	wire g2;
	wire g3;
	wire g4;
	
		and r1(g1, e1, e2, e3);
		and r2(g2, e1, b, c);
		and r3(g3, a, b, e3);
		and r4(g4, a, e2, c);
		
		or p(f, g1, g2, g3, g4);


endmodule
