module BCD(clk, rst_asyn, Q_out);
 input clk;
 input rst_asyn;
 output [3:0] Q_out;
 reg [3:0] Q_out;
initial begin      
 Q_out=0'b0000;
end
always@ (posedge clk or posedge rst_asyn)   
 begin
 if (rst_asyn)      
  Q_out=0'b0000;
 else if (Q_out==15)  
  Q_out=0'b0000;
 else
  Q_out++;
 end
endmodule
