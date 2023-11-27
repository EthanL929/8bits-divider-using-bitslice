// structural model of bitslice extracted from bitslice.mag
// created by ext2svmod 13.0

module bitslice(
	output High ,
	output nBorrowOut ,
	output Overflow ,
	output Quotient ,
	output Remainder ,
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
	input nBorrowIn ,
	input nReset ,
	input Operand1 ,
	input Operand2 ,
	input SDI ,
	input Test 
	);

timeunit 1ns;
timeprecision 10ps;



// include netlist information from bitslice.vnet

`include "bitslice.vnet"

endmodule
