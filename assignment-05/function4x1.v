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
---  Module Name: Function Implementation usin Mux 4 to 16
---  Description: Lab 05 Part 3
-----------------------------------------------------------*/
`timescale 1 ns/1 ns

module function4x1 (
	input a ,
	input b ,
	input c ,
	input d ,
	output f
);
	wire [15:0] decoder_output;
	wire [15:0] decoder_output_not;

	decoder4x16 dec(decoder_output, abcd, en);
	
	not n1(decoder_output_not[0],    decoder_output[0]);
	not n2(decoder_output_not[1],    decoder_output[1]);
	not n3(decoder_output_not[2],    decoder_output[2]);
	not n4(decoder_output_not[3],    decoder_output[3]);
	not n5(decoder_output_not[4],    decoder_output[4]);
	not n6(decoder_output_not[5],    decoder_output[5]);
	not n7(decoder_output_not[6],    decoder_output[6]);
	not n8(decoder_output_not[7],    decoder_output[7]);
	not n9(decoder_output_not[8],    decoder_output[8]);
	not n10(decoder_output_not[9],   decoder_output[9]);
	not n11(decoder_output_not[10], decoder_output[10]);
	not n12(decoder_output_not[11], decoder_output[11]);
	not n13(decoder_output_not[12], decoder_output[12]);
	not n14(decoder_output_not[13], decoder_output[13]);
	not n15(decoder_output_not[14], decoder_output[14]);
	not n16(decoder_output_not[15], decoder_output[15]);
	
	and final(f, decoder_output_not[0],decoder_output_not[1], decoder_output_not[4], decoder_output_not[6], decoder_output_not[8], decoder_output_not[9], decoder_output_not[10], decoder_output_not[12], decoder_output_not[14], decoder_output_not[15]);



endmodule
