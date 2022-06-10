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
---  Module Name: bmi_module
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module bmi_module(
 weight,
 height,
 overweight,
 normal,
 underweight);
input [7:0] height;
input [7:0] weight;
output overweight;
output normal;
output underweight;
 // write your code here, please.
endmodule
