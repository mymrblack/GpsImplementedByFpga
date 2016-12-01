`define RESET							10'b1_xxxx_xxxxx
`define LEAP_YEAR_FEBURARY_OVER			10'b0_0010_11101
`define USUAL_YEAR_FEBURARY_OVER		10'b0_0010_11100
`define JANUARY_OVER					10'b0_0001_11111
`define MARCH_OVER						10'b0_0011_11111
`define APRIL_OVER						10'b0_0100_11110
`define MAY_OVER						10'b0_0101_11111
`define JUNE_OVER						10'b0_0110_11110
`define JULY_OVER						10'b0_0111_11111
`define AUGUST_OVER						10'b0_1000_11111
`define SEPTEMBER_OVER					10'b0_1001_11110
`define OCTOBER_OVER					10'b0_1010_11111
`define NOVEMBER_OVER					10'b0_1011_11110
`define DECEMBER_OVER					10'b0_1100_11111
`define LEAP_YEAR						(year == 3'b100) || (year == 3'b000)

module DayOverCheck(clk, resetn, day, month, year, hourOverSignal, overSignal);
	input clk;
	input resetn;
	input [4:0] day;
	input [3:0] month;
	input [2:0] year;
	input hourOverSignal;
	output overSignal;
	
	reg monthOver;
	
	always@(posedge clk) begin
		casex({!resetn, month, day})
			`RESET:						monthOver <= 1'b0;
			`JANUARY_OVER:				monthOver <= 1'b1;
			`LEAP_YEAR_FEBURARY_OVER:   monthOver <= 1'b1;
			`USUAL_YEAR_FEBURARY_OVER:  begin
											if(`LEAP_YEAR)
												monthOver <= 1'b0;
											else
												monthOver <= 1'b1;  
										end
			`MARCH_OVER:				monthOver <= 1'b1;
			`APRIL_OVER:				monthOver <= 1'b1;
			`MAY_OVER:					monthOver <= 1'b1;
			`JUNE_OVER:					monthOver <= 1'b1;
			`JULY_OVER:					monthOver <= 1'b1;
			`AUGUST_OVER:				monthOver <= 1'b1;
			`SEPTEMBER_OVER:			monthOver <= 1'b1;
			`OCTOBER_OVER:				monthOver <= 1'b1;
			`NOVEMBER_OVER:				monthOver <= 1'b1;
			`DECEMBER_OVER:				monthOver <= 1'b1;
			default:  monthOver <= 1'b0;
		endcase
	end
	assign overSignal = (hourOverSignal && monthOver)? 1'b1: 1'b0;
endmodule






