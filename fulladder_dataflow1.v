`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2018 03:31:04 PM
// Design Name: 
// Module Name: fulladder_dataflow1
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


module fulladder_dataflow(a, b, cin, s, p, g);
	input a, b, cin;
	output s, p, g;
	
	//assign s = (~a&&(~b||cin + b||~cin)) + (a&&((~b&&~cin) + (b&&cin)));
    assign s =(~a&&~b&&cin)||(~a&&b&&~cin)||(a&&~b&&~cin)||(a&&b&&cin);
	assign p = a || b;
	assign g = a&&b;

endmodule
