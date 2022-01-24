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
--  Student Mail: hosna_oyar@aut.ac.ir
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

reg a;
reg b;
reg c;
wire f_parity_gen;
wire f_parity_gen_sop;
	
	paritiy3_gen t_paritiy3_gen (
		.a(a),
		.b(b),
		.c(c),
		.f(f_parity_gen));

	paritiy3_gen_sop t_paritiy3_gen_sop (
		.a(a), 
		.b(b), 
		.c(c), 
		.f(f_parity_gen_sop));


	initial 
		begin
		a <= 1'b0;
		b <= 1'b0;
		c <= 1'b0;
		# 10;
		a <= 1'b0;
		b <= 1'b0;
		c <= 1'b1;
		# 10;
		a <= 1'b0;
		b <= 1'b1;
		c <= 1'b0;
		# 10;
		a <= 1'b0;
		b <= 1'b1;
		c <= 1'b1;
		# 10;
		a <= 1'b1;
		b <= 1'b0;
		c <= 1'b0;
		# 10;
		a <= 1'b1;
		b <= 1'b0;
		c <= 1'b1;
		# 10;
		a <= 1'b1;
		b <= 1'b1;
		c <= 1'b0;
		# 10;
		a <= 1'b1;
		b <= 1'b1;
		c <= 1'b1;
		# 10;
		
		
	end

endmodule

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


module paritiy3_gen (
	input a,
	input b,
	input c,
	output f	
);
	xnor xgate(f, a, b, c);
endmodule
