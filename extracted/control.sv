// Auto-generated Header control.sv
//   created by vlog2net 8.0
//   on Fri Jan 13 15:56:42 GMT 2023

module control(EnableZero, EnableOp1, EnableOp2, EnableSub, Increment, LoadA, LoadB, LoadM, LoadResult, Done, nBorrow, Overflow, Req, Clock, nReset, Test, SDI, SDO);
timeunit 1ns;
timeprecision 10ps;


  input nBorrow, Overflow, Req, Clock, nReset;
  output EnableZero, EnableOp1, EnableOp2, EnableSub, Increment, LoadA, LoadB, LoadM, LoadResult, Done;

  input Test;
  input SDI;
  output SDO;

  wire [3:0] state;

`include "control.vnet"

endmodule
