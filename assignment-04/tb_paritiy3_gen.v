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
---  Module Name: Paritiy Generator Testbench
---  Description: Lab 04 Part 3 and Part 4
-----------------------------------------------------------*/
`timescale 1 ns/1 ns


module tb_paritiy3 ();

reg A;
reg B;
reg C;
wire f_parity_gen;
wire f_parity_gen_sop;
	
	paritiy3_gen t_paritiy3_gen (
		.a(A),
		.b(B),
		.c(C),
		.f(f_parity_gen));

	paritiy3_gen_sop t_paritiy3_gen_sop (
		.a(A), 
		.b(B), 
		.c(C), 
		.f(f_parity_gen_sop));


	initial 
		begin
			A <= 1'b0; B <= 1'b0; C <= 1'b0;
		#10;
			A <= 1'b0; B <= 1'b0; C <= 1'b1;
		#10;
			A <= 1'b0; B <= 1'b1; C <= 1'b0;
		#10;
			A <= 1'b0; B <= 1'b1; C <= 1'b1;
		#10;
			A <= 1'b1; B<=  1'b0; C <= 1'b0;
		#10;
			A <= 1'b1; B <= 1'b0; C <= 1'b1;
		#10;
			A <= 1'b1; B <= 1'b1; C <= 1'b0;
		#10;
			A <= 1'b1; B <= 1'b1; C <= 1'b1;
		#10;
		end

endmodule
