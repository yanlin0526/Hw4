module BCD_tb;
  reg clk_tb;
  reg rst_asyn_tb;
  BCD BCD_1(.clk(clk_tb),.rst_asyn(rst_asyn_tb));
initial begin              
  clk_tb=0'b0;
  rst_asyn_tb=0'b0;
end
always begin             
  #5 clk_tb=~clk_tb;
end
initial begin             
  #20 rst_asyn_tb=0'b0;
  #5 rst_asyn_tb=1'b1;
  #5 rst_asyn_tb=0'b0;
  #150 $finish;            
end
initial begin              
  $dumpfile("BCD.vcd");
  $dumpvars(0,BCD_1);
end
endmodule
