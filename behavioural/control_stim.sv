//stimulus file of control

module control_stim;


timeunit 1ns; 
timeprecision 10ps;

  logic nBorrow ;
  logic Overflow ;
  logic Req ;
  logic Clock ;
  logic nReset ;

  wire EnableZero ;
  wire EnableOp1 ;
  wire EnableOp2 ;
  wire EnableSub ;
  wire Increment ;
  wire LoadA ;
  wire LoadB ;
  wire LoadM ;
  wire LoadResult ;
  wire Done ;



  
  parameter Clock_period = 100;

  control instance1( .EnableZero, .EnableOp1, .EnableOp2, .EnableSub, .Increment, .LoadA, .LoadB, .LoadM, .LoadResult, .Done, 
                     .nBorrow, .Overflow, 
                     .Req, .Clock, .nReset
                    );


  initial
      Clock = 0;
  always
    #(Clock_period/2)
      Clock = ~Clock;


  initial
    begin
        nReset = 0;
      #(Clock_period*2)
        nReset = 1;
      #(Clock_period*2)
        nReset = 1;
    end


  initial
    begin
        nBorrow = 1;
        Overflow = 1;
        Req = 0;
      #(Clock_period*2);
        Req = 1;
      #(Clock_period*3);
        nBorrow = 0;
        Overflow = 1;
      #(Clock_period*4); 
        nBorrow = 1;
        Overflow = 1;
      #(Clock_period*1);
        nBorrow = 1;
        Overflow = 1;
      #(Clock_period*1);
        nBorrow = 0;
        Overflow = 0;
      #(Clock_period*3)
          $stop;
          //$finish;
    end


  initial
    $monitor($time,
    ,"%b", Clock ,
    ,"%b", EnableZero ,
    ,"%b", Done ,
    ,"%b", LoadResult ,
    ,"%b", nReset ,
    //,"%b", ShiftIn ,
    ,"%b", nBorrow ,
    ,"%b", Overflow ,
    );



endmodule
