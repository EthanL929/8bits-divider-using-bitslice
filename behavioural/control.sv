// behaviroural model of control

module control (output logic EnableZero, EnableOp1, EnableOp2, EnableSub, Increment, LoadA, LoadB, LoadM, LoadResult, Done,
                 input logic nBorrow, Overflow, 
                 input logic Req, Clock, nReset
                 );

timeunit 1ns; 
timeprecision 10ps;

enum logic [3:0] { IDLE, SETUP, DIVIDE, RESULT, DONE } state;

always_ff @(posedge Clock, negedge nReset) 
 begin
  if (!nReset) begin
    Done <= 0;
    LoadResult <= 0;
    state <= IDLE;
    EnableSub <= 0;
    EnableZero <= 0;
    EnableOp1 <= 0;
    EnableOp2 <= 0;
    Increment <= 0;
    LoadA <= 0;
    LoadB <= 0;
    LoadM <= 0;
  end
  else
    begin
    case (state)
     IDLE : begin
         EnableOp1 <= #20 0;
         EnableOp2 <= #20 0;
         EnableSub <= #20 0;
         EnableZero <= #20 1;
         Increment <= #20 0;
         LoadA <= #20 0;
         LoadB <= #20 0;
         LoadM <= #20 1;
         Done <= #20 0;
         LoadResult <= #20 0;
         if (Req) begin
         state <= #20 SETUP;
         end
        end
     SETUP : begin 
          EnableOp1 <= #20 1;
          EnableOp2 <= #20 1;
          EnableZero <= #20 0;
          LoadA <= #20 1;
          LoadB <= #20 1;
          //LoadM <= #20 1;
          if ( !Overflow )//|| !nBorrow )
            //state <= #20 IDLE;
          //else begin
            //if ( Req ) begin
	      state <= #20 DIVIDE;
              Increment <= #20 1;
             //end
        end 
        DIVIDE : begin
	  if ( !nBorrow ) begin
            EnableZero <= #20 1;
            //EnableOp2 <= #20 0;
            LoadA <= #20 0;
            LoadM <= #20 0;
            EnableSub <= #20 1;
            EnableOp1 <= #20 0;
	    state <= #20 RESULT;
          end
	  else begin
            EnableSub <= #20 1;
            EnableOp1 <= #20 0;
	    state <= #20 DIVIDE;
          end
        end 
	RESULT : begin
          //if ( Overflow && !nBorrow ) begin
            LoadResult <= #20 1;
            state <= #20 DONE;
          //end
          //else begin
	    //state <= #20 DIVIDE;
          end
        DONE : begin
            Done <= #20 1;
            state <= #20 IDLE;
          end
      endcase
    end
 end
endmodule
