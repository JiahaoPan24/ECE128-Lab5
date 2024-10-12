`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/01 15:38:42
// Design Name: 
// Module Name: multi_display_tb
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


module multi_display_tb();
wire [3:0] sseg_a_o;
wire [6:0] sseg_c_o;
reg [15:0] bcd_in;
reg clk;
multi_display uut2(.clk(clk),.bcd_in(bcd_in),.sseg_a_o(sseg_a_o),.sseg_c_o(sseg_c_o));

always 
begin
    #1 clk = ~clk;
end

// Testbench procedure
initial begin
    // Initialize signals
    clk = 0;
    bcd_in = 16'b0000000000000000;
    #10; 
    
    bcd_in = 16'b0001100010010010;
    #256
    
    bcd_in = 16'b0001000000100100;
    #256
    
    bcd_in = 16'b0001001101010111;
    #256;
    $stop;
    end
endmodule
