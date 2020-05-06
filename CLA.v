`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2018 03:33:08 PM
// Design Name: 
// Module Name: CLA
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


module CLA (p, g, cin, c, cout);
	input [3:0] p,g; 
	input cin;
	output [2:0] c;
	output cout;

	assign c[0] = g[0] || (p[0]&&cin);
	assign c[1] = g[1] || (p[1]&&(g[0] || (p[0]&cin)));
	assign c[2] = g[2] || (p[2]&& (g[1] || (p[1]&&(g[0] || (p[0]&&cin)))));
	assign cout = g[3] || (p[3]&&(g[2] || (p[2]&&(g[1] || (p[1]&&(g[0] || (p[0]&&cin)))))));

endmodule