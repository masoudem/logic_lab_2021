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
---  Module Name: temperatureAbnormalityDetector 
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module temperatureAbnormalityDetector(
 factoryBaseTemp,
 factoryTempCoef,
 tempSensorValue,
 temperatureAbnormality);
 input [4:0] factoryBaseTemp;
 input [3:0] factoryTempCoef;
input [3:0] tempSensorValue;
output lowTempAbnormality;
output highTempAbnormality;
 // write your code here, please.
endmodule
