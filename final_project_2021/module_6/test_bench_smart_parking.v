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
---  Module Name: test_bench_smart_parking
-----------------------------------------------------------*/
`timescale 1 ns/1 ns
module test_bench_smart_parking();

reg entry;
reg [7:0] parking_capacity;
reg exit;
reg [2:0] pattern;
reg [7:0] time_out,
reg [7:0] time_in,
wire [7:0] new_capacity;
wire [7:0] time_total;
wire [3:0] parked;
wire [3:0] empty;

smart_parking smart_parking_tb(.entry(entry),.parking_capacity(parking_capacity),.exit(exit), .pattern(pattern),
.time_in(time_in), .time_out(time_out), .new_capacity(new_capacity), .time_total(time_total), .parked(parked), .empty(empty));

initial
	begin 
		entry <=1'b0;
		parking_capacity <=8'b11111111;
		exit <=1'b0;
		pattern <=3'b000;
        time_in <=8'b01010101;
        time_out <=8'b10101010;
		#100;
		
		entry <=1'b1;
		parking_capacity <=8'b11111111;
		exit <=1'b0;
		pattern <=3'b000;
        time_in <=8'b01010000;
        time_out <=8'b10101111;
		#100;
		
		entry <=1'b1;
		parking_capacity <=8'b11111111;
		exit <=1'b1;
		pattern <=3'b000;
        time_in <=8'b10000000;
        time_out <=8'b11110101;
		#100;
		
		entry <=1'b0;
		parking_capacity <=8'b01011111;
		exit <=1'b0;
		pattern <=3'b110;
        time_in <=8'b01010101;
        time_out <=8'b11111111;
		#100;
		
		entry <=1'b1;
		parking_capacity <=8'b01011111;
		exit <=1'b0;
		pattern <=3'b100;
        time_in <=8'b00000000;
        time_out <=8'b10101010;
		#100;
		
		entry <=1'b1;
		parking_capacity <=8'b010111111;
		exit <=1'b1;
		pattern <=3'b001;
        time_in <=8'b01010000;
        time_out <=8'b10111110;
		#100;
		
		entry <=1'b0;
		parking_capacity <=8'b000101000;
		exit <=1'b0;
		pattern <=3'b010;
        time_in <=8'b01010101;
        time_out <=8'b11101010;
		#100;
		
		entry <=1'b1;
		parking_capacity <=8'b000101000;
		exit <=1'b0;
		pattern <=3'b111;
        time_in <=8'b01000101;
        time_out <=8'b10101010;
		#100;
		
		entry <=1'b1;
		parking_capacity <=8'b000101000;
		exit <=1'b1;
		pattern <=3'b001;
        time_in <=8'b01000101;
        time_out <=8'b10101010;
		#100;
		
		entry <=1'b0;
		parking_capacity <=8'b000000001;
		exit <=1'b0;
		pattern <=3'b000;
        time_in <=8'b01010101;
        time_out <=8'b10111110;
		#100;
		
		entry <=1'b1;
		parking_capacity <=8'b000000001;
		exit <=1'b0;
		pattern <=3'b011;
        time_in <=8'b00010101;
        time_out <=8'b10101010;
		#100;
		
		entry <=1'b1;
		parking_capacity <=8'b000000001;
		exit <=1'b1;
		pattern <=3'b100;
        time_in <=8'b01010101;
        time_out <=8'b10111010;
		#100;
		
		entry <=1'b0;
		parking_capacity <=8'b000000000;
		exit <=1'b0;
		pattern <=3'b100;
        time_in <=8'b00010100;
        time_out <=8'b10101010;
		#100;
		
		entry <=1'b1;
		parking_capacity <=8'b000000000;
		exit <=1'b0;
		pattern <=3'b010;
        time_in <=8'b01010001;
        time_out <=8'b10111010;
		#100;
		
		entry <=1'b1;
		parking_capacity <=8'b000000000;
		exit <=1'b1;
		pattern = 3'b110;
        time_in <=8'b01001101;
        time_out <=8'b11101010;
		#100;
		
		$finish;
	end

endmodule