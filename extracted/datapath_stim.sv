// stimulus file datapath_stim.sv for datapath
// created by ext2svmod 13.0

module datapath_stim;

timeunit 1ns;
timeprecision 10ps;

logic Clock ;
logic EnableOp1 ;
logic EnableOp2 ;
logic EnableSub ;
logic EnableZero ;
logic Increment ;
logic LoadA ;
logic LoadB ;
logic LoadM ;
logic LoadResult ;
logic nReset ;
logic [7:0] Operand1 ;
logic [7:0] Operand2 ;
logic SDI ;
logic Test ;

wire nBorrow ;
wire Overflow ;
wire [7:0] Quotient ;
wire [7:0] Remainder ;
wire SDO ;

parameter Clock_period = 100;

datapath instance1(
	.nBorrow,
	.Overflow,
	.Quotient,
	.Remainder,
	.SDO,
	.Clock,
	.EnableOp1,
	.EnableOp2,
	.EnableSub,
	.EnableZero,
	.Increment,
	.LoadA,
	.LoadB,
	.LoadM,
	.LoadResult,
	.nReset,
	.Operand1,
	.Operand2,
	.SDI,
	.Test
	);

// stimulus information follows
  initial
      Clock = 0;
  always
    #(Clock_period/2) //clock cycle
      Clock = ~Clock;


  initial
    begin
        nReset = 1;
      #(Clock_period*1.5)
        nReset = 0;
      #(Clock_period*1)
        nReset = 1;
    end


  initial
    begin
        Operand1 = 0;//without this set, no drivers will be found
        Operand2 = 0;
      #(Clock_period*0.5);
        Operand1 = 9;
        Operand2 = 3;
      #(Clock_period*15);
          $stop;
          //$finish;
    end

  always
    begin
        Test = 0;
        SDI = 0;
      #(Clock_period*30);
          $stop;
          //$finish;
    end

initial
  begin
    EnableOp1 = 0;
    EnableOp2 = 0;
    EnableSub = 0;
    EnableZero = 0;
    Increment = 0;
    LoadA = 0;
    LoadB = 0;
    LoadM = 0;
    LoadResult = 0;
    Operand1 = 0;
    Operand2 = 0;

      #(Clock_period*2.5)
          LoadA = 1;
          LoadB = 1;
          LoadM = 1;
      //#(Clock_period*2)
          EnableOp1 = 1;
          EnableOp2 = 1;
      #(Clock_period*2)
          EnableOp1 = 0;
          EnableOp2 = 0;
      #(Clock_period*2)
          EnableSub = 1;
          EnableZero = 1;
          Increment = 1;
      #(Clock_period*2)
          LoadResult = 1;
      #(Clock_period*10)
          $stop;
          //$finish;
  end

// probe information follows

initial
  $monitor($time,
    ,"%b", Clock ,
    ,"%b", EnableOp1 ,
    ,"%b", EnableOp2 ,
    ,"%b", EnableSub ,
    ,"%b", EnableZero ,
    ,"%b", Increment ,
    ,"%b", LoadA ,
    ,"%b", LoadB ,
    ,"%b", LoadM ,
    ,"%b", LoadResult ,
    ,"%b", nReset ,
    ,"%b", Operand1 ,
    ,"%b", Operand2 ,
    ,"%b", SDI ,
    ,"%b", Test ,
    ,"%b", nBorrow ,
    ,"%b", Overflow ,
    ,"%b", Quotient ,
    ,"%b", Remainder ,
    ,"%b", SDO ,
    );


//SIMVISION SCRIPT:datapath.tcl

endmodule
