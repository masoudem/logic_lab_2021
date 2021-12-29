/*--  *******************************************************
--  Computer Architecture Course, Laboratory Sources 
--  Amirkabir University of Technology (Tehran Polytechnic)
--  Department of Computer Engineering (CE-AUT)
--  https://ce[dot]aut[dot]ac[dot]ir
--  *******************************************************
--  All Rights reserved (C) 2021-2022
--  *******************************************************
--  Student ID  : 
--  Student Name: 
--  Student Mail: 
--  *******************************************************
--  Additional Comments:
--
--*/

/*-----------------------------------------------------------
---  Module Name: exti_park 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module exti_park(
 exit,
 token,
 pattern,
 park_location);
input exit;
input [2:0] token;
input [2:0] pattern;
output [7:0] park_location;
 // write your code here, please.
endmodule