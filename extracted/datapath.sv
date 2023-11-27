// structural model of datapath extracted from datapath.mag
// created by ext2svmod 13.0

module datapath(
	output nBorrow ,
	output Overflow ,
	output [7:0] Quotient ,
	output [7:0] Remainder ,
	output SDO ,
	input Clock ,
	input EnableOp1 ,
	input EnableOp2 ,
	input EnableSub ,
	input EnableZero ,
	input Increment ,
	input LoadA ,
	input LoadB ,
	input LoadM ,
	input LoadResult ,
	input nReset ,
	input [7:0] Operand1 ,
	input [7:0] Operand2 ,
	input SDI ,
	input Test 
	);

timeunit 1ns;
timeprecision 10ps;



// include netlist information from datapath.vnet

`include "datapath.vnet"

endmodule
