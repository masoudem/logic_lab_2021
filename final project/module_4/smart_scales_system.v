/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2020-2021
--  *******************************************************
--  Student ID  : 
--  Student Name: 
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: smart_scales_system
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module smart_scales_system(
weight,
height,
overweight,
normal,
underweight
bmdrange,
normal,
abnormal);
input [7:0] height;
input [7:0] weight;
input [2:0] bmdrange;
input [7:0] wf;
input [7:0] hf;
input [7:0] af;
input [7:0] wm;
input [7:0] hm;
input [7:0] am;
input s;
output [7:0] range;
output overweight;
output normal;
output underweight;
output normal;
output abnormal;
 // write your code here, please.
endmodule
