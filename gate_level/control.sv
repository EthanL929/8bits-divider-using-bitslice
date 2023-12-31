
// Generated by Cadence Genus(TM) Synthesis Solution 21.10-p002_1
// Generated on: Jan 13 2023 15:54:02 GMT (Jan 13 2023 15:54:02 UTC)

// Verification Directory fv/control 

module control(EnableZero, EnableOp1, EnableOp2, EnableSub, Increment,
     LoadA, LoadB, LoadM, LoadResult, Done, nBorrow, Overflow, Req,
     Clock, nReset);
  input nBorrow, Overflow, Req, Clock, nReset;
  output EnableZero, EnableOp1, EnableOp2, EnableSub, Increment, LoadA,
       LoadB, LoadM, LoadResult, Done;
  wire nBorrow, Overflow, Req, Clock, nReset;
  wire EnableZero, EnableOp1, EnableOp2, EnableSub, Increment, LoadA,
       LoadB, LoadM, LoadResult, Done;
  wire [3:0] state;
  wire UNCONNECTED, UNCONNECTED0, UNCONNECTED1, UNCONNECTED2,
       UNCONNECTED3, UNCONNECTED4, UNCONNECTED5, UNCONNECTED6;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  wire n_16, n_17, n_18, n_19, n_20, n_21, n_22, n_23;
  wire n_24, n_25, n_26, n_27, n_28, n_29, n_30;
  scanreg \state_reg[2] (.nReset (nReset), .Clock (Clock), .D (n_26),
       .Load (n_30), .Q (state[2]), .nQ (n_5));
  scanreg \state_reg[0] (.nReset (nReset), .Clock (Clock), .D (n_27),
       .Load (n_30), .Q (state[0]), .nQ (n_3));
  scanreg \state_reg[1] (.nReset (nReset), .Clock (Clock), .D (n_6),
       .Load (n_30), .Q (state[1]), .nQ (n_2));
  scanreg EnableOp1_reg(.nReset (nReset), .Clock (Clock), .D (n_29),
       .Load (n_23), .Q (EnableOp1), .nQ (UNCONNECTED));
  scanreg EnableZero_reg(.nReset (nReset), .Clock (Clock), .D (n_12),
       .Load (n_28), .Q (EnableZero), .nQ (UNCONNECTED0));
  scanreg LoadA_reg(.nReset (nReset), .Clock (Clock), .D (n_29), .Load
       (n_28), .Q (LoadA), .nQ (UNCONNECTED1));
  nand3 g442__2398(.A (n_22), .B (n_25), .C (n_15), .Y (n_30));
  scanreg LoadM_reg(.nReset (nReset), .Clock (Clock), .D (n_18), .Load
       (n_27), .Q (LoadM), .nQ (UNCONNECTED2));
  scanreg LoadResult_reg(.nReset (nReset), .Clock (Clock), .D (n_26),
       .Load (n_16), .Q (LoadResult), .nQ (UNCONNECTED3));
  scanreg EnableSub_reg(.nReset (nReset), .Clock (Clock), .D (n_8),
       .Load (n_13), .Q (EnableSub), .nQ (UNCONNECTED4));
  inv g450(.A (n_24), .Y (n_25));
  scanreg EnableOp2_reg(.nReset (nReset), .Clock (Clock), .D (n_29),
       .Load (n_17), .Q (EnableOp2), .nQ (UNCONNECTED5));
  scanreg Done_reg(.nReset (nReset), .Clock (Clock), .D (n_11), .Load
       (n_7), .Q (Done), .nQ (UNCONNECTED6));
  nand3 g451__5107(.A (n_19), .B (n_9), .C (n_10), .Y (n_24));
  nand2 g453__6260(.A (n_21), .B (n_22), .Y (n_23));
  nand2 g452__4319(.A (n_20), .B (n_21), .Y (n_28));
  nand2 g454__8428(.A (n_20), .B (n_14), .Y (n_27));
  nand2 g456__5526(.A (Req), .B (n_18), .Y (n_19));
  inv g458(.A (n_17), .Y (n_21));
  nand2 g460__6783(.A (n_15), .B (n_14), .Y (n_16));
  nand2 g461__3680(.A (n_22), .B (n_14), .Y (n_13));
  nand2 g462__1617(.A (n_14), .B (n_12), .Y (n_17));
  inv g463(.A (n_10), .Y (n_11));
  inv g464(.A (n_14), .Y (n_18));
  nand2 g455__2802(.A (n_1), .B (n_29), .Y (n_9));
  nand2 g457__1705(.A (n_0), .B (n_8), .Y (n_20));
  nand2 g465__5122(.A (n_7), .B (state[2]), .Y (n_10));
  nand2 g459__8246(.A (n_22), .B (n_12), .Y (n_6));
  nand2 g466__7098(.A (n_7), .B (n_5), .Y (n_14));
  inv g467(.A (n_15), .Y (n_26));
  inv g468(.A (n_22), .Y (n_8));
  inv g469(.A (n_12), .Y (n_29));
  nand3 g470__6131(.A (state[0]), .B (n_5), .C (state[1]), .Y (n_15));
  nand3 g471__1881(.A (state[1]), .B (n_5), .C (n_3), .Y (n_22));
  inv g473(.A (n_4), .Y (n_7));
  nand3 g472__5115(.A (state[0]), .B (n_5), .C (n_2), .Y (n_12));
  nand2 g474__7482(.A (n_3), .B (n_2), .Y (n_4));
  inv g475(.A (Overflow), .Y (n_1));
  inv g478(.A (nBorrow), .Y (n_0));
  buffer rm_assigns_buf_Increment(.A (EnableOp2), .Y (Increment));
  buffer rm_assigns_buf_LoadB(.A (EnableOp2), .Y (LoadB));
endmodule

