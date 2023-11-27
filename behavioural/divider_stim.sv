//stimulus file of divider

module divider_stim;

timeunit 1ns; 
timeprecision 10ps;

logic [7:0] Operand1;
logic [7:0] Operand2;
logic Clock;
logic nReset;
logic Req;
logic Test;
logic SDI;

wire Done;
wire SDO ;
wire [7:0] Quotient;
wire [7:0] Remainder;

parameter Clock_period = 100;

  divider instance1( .Done, .SDO, .Quotient, .Remainder, .Operand1, .Operand2, .Clock, .nReset, .Req, .Test, .SDI);


  initial
      Clock = 0;
  always
    #(Clock_period/2) //clock cycle
      Clock = ~Clock;


  initial
    begin
        nReset = 1;
      #(Clock_period*2)
        nReset = 0;
      #(Clock_period*2)
        nReset = 1;
    end


  initial
    begin
        Operand1 = 9;//without this set, no drivers will be found
        Operand2 = 3;
        Req = 0;
      #(Clock_period*2);
        Req = 1;
      #(Clock_period*3);
        Operand1 = 9;
        Operand2 = 3;
      #(Clock_period*10);
          $stop;
          //$finish;
    end

  always
    begin
        Test = 0;
        SDI = 0;
      #(Clock_period*15);
          $stop;
          //$finish;
    end


  initial
    $monitor($time,
    ,"%b", Clock ,
    ,"%b", Done ,
    ,"%b", nReset ,
    ,"%b", Quotient ,
    ,"%b", Remainder ,
    ,"%b", Operand1 ,
    ,"%b", Operand2 ,
    );



endmodule
