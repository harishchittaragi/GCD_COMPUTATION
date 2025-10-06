
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.10.2025 21:42:46
// Design Name: 
// Module Name: tb_gcd
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
`timescale 1ns/1ps

module tb_gcd;
  // Inputs
  reg clk;
  reg start;
  reg [15:0] data_in;
  // Outputs
  wire done;
  // Instantiate the Top-level module
  gcd_top DUT (
    .clk(clk),
    .start(start),
    .data_in(data_in),
    .done(done)
  );
  // Clock generation: 10 ns period (100 MHz)
  initial clk = 0;
  always #5 clk = ~clk;
  // Stimulus
  initial begin
    // Initialize
    start = 0;
    data_in = 0;
    // Wait a few clock cycles
    #10;
    // Test case 1
    data_in = 16'd143;   // First input
    start = 1;
    #10 start = 0;       // Pulse start signal
    // Wait for computation to finish
    wait(done == 1);
    $display("Time=%0t | Input=%d | GCD Done=%b", $time, data_in, done);

    // Test case 2
    #10;
    data_in = 16'd78;
    start = 1;
    #10 start = 0;
    wait(done == 1);
    $display("Time=%0t | Input=%d | GCD Done=%b", $time, data_in, done);
    #50 $finish;
  end
  // Monitor outputs
  initial begin
    $monitor($time, " clk=%b start=%b data_in=%d done=%b", clk, start, data_in, done);
  end
endmodule

