
`define PICOSEC_OVER      picosec_out == 999
`define MICROSEC_OVER     microsec_out == 999
`define MILLISEC_OVER     millisec_out == 999
`define SECOND_OVER       second_out == 59
`define MINUTE_OVER       minute_out == 59
`define HOUR_OVER         hour_out == 23
`define MONTH_OVER        month_out == 12
`define YEAR_OVER         year_out == 999


module GPS(clk, resetn, wr,
           yearInit, monthInit, dayInit, hourInit, minuteInit, secondInit, pps_in, 
           pps_out,
           microsec_out, millisec_out, second_out, minute_out, hour_out, day_out, month_out, year_out);
  input clk;
  input resetn;
  input wr;
  input pps_in;
  input [31:0] yearInit;
  input [31:0] monthInit;
  input [31:0] dayInit;
  input [31:0] hourInit;
  input [31:0] minuteInit;
  input [31:0] secondInit;
  output [31:0] microsec_out;
  output [31:0] millisec_out;  
  output [31:0] second_out;  
  output [31:0] minute_out;
  output [31:0] hour_out;  
  output [31:0] day_out;  
  output [31:0] month_out;
  output [31:0] year_out;  
  output pps_out;    
  

  reg secondTemp1;
  reg secondTemp2;
  
  always@(posedge clk)begin
    if(!resetn || wr)begin
      secondTemp1 <= 1'b0;
      secondTemp2 <= 1'b0;
    end
    else begin
      secondTemp1 <= pps_in;
      secondTemp2 <= secondTemp1;
    end
  end
  assign secondPlus =  secondTemp1 & (~secondTemp2);
  assign pps_out =  secondTemp1;
  
  wire [31:0] picosec_out;   
  wire picoSecOver;
  assign picoSecOver = `PICOSEC_OVER? 1'b1: 1'b0;
  counter picosec_count(.clk(clk), .resetn(resetn &(~secondPlus)), .wr(wr), .overSignal(picoSecOver), 
						.plusSignal(1), .dataInit(32'b0), .resetData(0),.out_reg(picosec_out));

  wire [31:0] microsec_out; 
  wire microSecOver;  
  assign microSecOver = (`MICROSEC_OVER) && picoSecOver? 1'b1: 1'b0;

  counter microsec_count(.clk(clk), .resetn(resetn &(~secondPlus)), .wr(wr), 
						 .overSignal(microSecOver), .plusSignal(picoSecOver), 
						 .dataInit(32'b0), .resetData(0),.out_reg(microsec_out));
 
  wire [31:0] millisec_out; 
  wire milliSecOver;  
  assign milliSecOver = (`MILLISEC_OVER) && microSecOver? 1'b1: 1'b0;

  counter millisec_count(.clk(clk), .resetn(resetn &(~secondPlus)), .wr(wr), 
						 .overSignal(milliSecOver), .plusSignal(microSecOver),
						 .dataInit(32'b0), .resetData(0),.out_reg(millisec_out));

  wire [31:0] second_out; 
  wire secondOver;  
  assign secondOver = ((`SECOND_OVER)& secondPlus) ? 1'b1: 1'b0;
  counter second_count(.clk(clk), .resetn(resetn), .wr(wr),
					   .overSignal(secondOver), .plusSignal(secondPlus),
					   .dataInit(secondInit), .resetData(0),.out_reg(second_out));


  wire [31:0] minute_out; 
  wire minuteOver;  
  assign minuteOver = (`MINUTE_OVER) && secondOver? 1'b1: 1'b0;
  counter minute_count(.clk(clk), .resetn(resetn), .wr(wr),
					   .overSignal(minuteOver), .plusSignal(secondOver), 
					   .dataInit(minuteInit), .resetData(0),.out_reg(minute_out));
				   
  wire [31:0] hour_out; 
  wire hourOver;  
  assign hourOver = (`HOUR_OVER) && minuteOver? 1'b1: 1'b0;

  counter hour_count(.clk(clk), .resetn(resetn), .wr(wr),
					 .overSignal(hourOver), .plusSignal(minuteOver), 
					 .dataInit(hourInit), .resetData(0),.out_reg(hour_out));
				   
  wire [31:0] day_out; 
  wire dayOver;  
  wire [31:0] month_out; 
  wire monthOver;  
  wire [31:0] year_out; 
  wire yearOver;  
  DayOverCheck  dayOver_check(.clk(clk), .resetn(resetn), 
                              .day(day_out[4:0]), .month(month_out[3:0]), .year(year_out[2:0]), 
                              .hourOverSignal(hourOver), .overSignal(dayOver));
  
  counter day_count(.clk(clk), .resetn(resetn), .wr(wr),
					   .overSignal(dayOver), .plusSignal(hourOver), 
					   .dataInit(dayInit), .resetData(1),.out_reg(day_out));
				   

  assign monthOver = (`MONTH_OVER) && dayOver? 1'b1: 1'b0;
  counter month_count(.clk(clk), .resetn(resetn), .wr(wr),
					   .overSignal(monthOver), .plusSignal(dayOver), 
					   .dataInit(monthInit), .resetData(1),.out_reg(month_out));


  assign yearOver = (`YEAR_OVER) && monthOver? 1'b1: 1'b0;
  counter year_count(.clk(clk), .resetn(resetn), .wr(wr),
					   .overSignal(yearOver), .plusSignal(monthOver), 
					   .dataInit(yearInit), .resetData(0),.out_reg(year_out));
endmodule
				   


