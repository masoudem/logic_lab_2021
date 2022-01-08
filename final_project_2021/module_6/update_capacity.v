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
---  Module Name: update_capacity
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module update_capacity(input entry, 
input [7:0] parking_capacity,
output reg [7:0] parking_capacity_new,
output reg [7:0] cap
    );
wire ch;
wire check;
	 
assign ch = parking_capacity[0] | parking_capacity[1] | parking_capacity[2] | parking_capacity[3] | parking_capacity[4] | parking_capacity[5] | parking_capacity[6] | parking_capacity[7];
	 
assign check= entry & ch;


always @(*)
	begin
		if(check)
			begin
				if (parking_capacity[7]==1)
				cap=8'b10000000;
				else if(parking_capacity[6]==1)
				cap=8'b01000000;
				else if(parking_capacity[5]==1)
				cap=8'b00100000;
				else if(parking_capacity[4]==1)
				cap=8'b00010000;
				else if(parking_capacity[3]==1)
				cap=8'b00001000;
				else if(parking_capacity[2]==1)
				cap=8'b00000100;
				else if(parking_capacity[1]==1)
				cap=8'b00000010;
				else if(parking_capacity[0]==1)
				cap=8'b00000001;
			end
			
		else cap = 8'b00000000;
		assign parking_capacity_new = parking_capacity - cap;
	end
	

	

endmodule