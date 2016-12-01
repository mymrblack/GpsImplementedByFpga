
module counter(clk, resetn, wr, overSignal, plusSignal, dataInit, resetData,out_reg);
  input clk;
  input resetn;
  input overSignal;
  input plusSignal;
  input resetData;
  input wr;
  input [31:0]	dataInit;
  output reg [31:0] out_reg;
  
  always@(posedge clk) begin
    casex({!resetn, wr, plusSignal, overSignal}) 
      4'b1xxx: out_reg <= {30'b0,resetData};
      4'b01xx: out_reg <= dataInit;
      4'b0011: out_reg <= {30'b0,resetData};
      4'b0010: out_reg <= out_reg + 1'b1;
      4'b000x: out_reg <= out_reg;
    endcase
  end
endmodule





