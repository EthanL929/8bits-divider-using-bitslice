// structural model instances datapath and control

module divider(
  output Done, SDO,
  output [7:0] Quotient, Remainder, 
  input  [7:0] Operand1, Operand2,
  input  Clock, nReset, Req, Test, SDI
  );

timeunit 1ns; 
timeprecision 10ps;

//logic Clock ;
logic EnableOp1 ;
logic EnableOp2 ;
logic EnableSub ;
logic EnableZero ;
logic Increment ;
logic LoadA ;
logic LoadB ;
logic LoadM ;
logic LoadResult ;
//logic nReset ;
//logic [7:0] Operand1 ;
//logic [7:0] Operand2 ;
//logic SDI ;
//logic Test ;

wire nBorrow ;
wire Overflow ;
//wire [7:0] Quotient ;
//wire [7:0] Remainder ;
//wire SDO ;
//wire Done;

  control Control( 
  .EnableZero(EnableZero), .EnableOp1(EnableOp1), .EnableOp2(EnableOp2), .EnableSub(EnableSub), .Increment(Increment), 
  .LoadA(LoadA), .LoadB(LoadB), .LoadM(LoadM), .LoadResult(LoadResult), .Done(Done), .nBorrow(nBorrow), .Overflow(Overflow),
  .Req(Req), .Clock(Clock), .nReset(nReset)
  );
  
  datapath Datapath( 
  .nBorrow(nBorrow), .Overflow(Overflow), .Quotient(Quotient), .Remainder(Remainder), .SDO(SDO), .Clock(Clock), .EnableOp1(EnableOp1),
  .EnableOp2(EnableOp2), .EnableSub(EnableSub), .EnableZero(EnableZero), .Increment(Increment), .LoadA(LoadA), .LoadB(LoadB),
  .LoadM(LoadM), .LoadResult(LoadResult), .nReset(nReset), .Operand1(Operand1), .Operand2(Operand2), .SDI(SDI), .Test(Test)
  );

endmodule
