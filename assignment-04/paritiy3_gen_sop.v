/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2019-2020
--  *******************************************************
--  Student ID  : 9831015
--  Student Name: Mostafa Bijani
--  Student Mail: mostafa.bjn.80@gmail.com
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
	wire An, Bn, Cn;
	wire ABC, AnBC, ABnC, ABCn;
	
	not f1(An,a);
	not f2(Bn,b);	
	not f3(Cn,c);
	
	and f4(ABC, An, Bn, Cn);
	and f5(AnBC, An, b, c);
	and f6(ABnC, a, Bn, c);
	and f7(ABCn, a, b, Cn);
	
	or final_or(f, ABC, AnBC, ABnC, ABCn);

endmodule
