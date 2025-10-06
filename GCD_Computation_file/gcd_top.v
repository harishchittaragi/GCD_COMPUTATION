`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2025 21:28:38
// Design Name: 
// Module Name: gcd_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module gcd_top (
  input clk,
  input start,
  input [15:0] data_in,
  output done
);

  // Internal control and status signals
  wire ldA, ldB, sel1, sel2, sel_in;
  wire lt, gt, eq;

  // Instantiate Datapath
  GCD_datapath DP (
    .gt(gt),
    .lt(lt),
    .eq(eq),
    .ldA(ldA),
    .ldB(ldB),
    .sel1(sel1),
    .sel2(sel2),
    .sel_in(sel_in),
    .data_in(data_in),
    .clk(clk)
  );

  // Instantiate Controller
  controller CU (
    .ldA(ldA),
    .ldB(ldB),
    .sel1(sel1),
    .sel2(sel2),
    .sel_in(sel_in),
    .done(done),
    .clk(clk),
    .lt(lt),
    .gt(gt),
    .eq(eq),
    .start(start)
  );

endmodule


