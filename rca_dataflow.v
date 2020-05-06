`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2018 03:29:25 PM
// Design Name: 
// Module Name: rca_dataflow
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


module rca_dataflow(a,b,cin,sum,cout);

input [3:0] a,b;
input cin; 
output [3:0] sum; 
output cout;
wire [3:0] p,g;
wire [2:0] c;
//wire temp =0;

fulladder_dataflow add1(a[0],b[0],cin,sum[0],p[0],g[0]);
 fulladder_dataflow add2(a[1],b[1],c[0],sum[1],p[1],g[1]); 
  fulladder_dataflow add3(a[2],b[2],c[1],sum[2],p[2],g[2]);
  fulladder_dataflow add4(a[3],b[3],c[2],sum[3],p[3],g[3]);
  
  CLA look(p,g,cin,c,cout); 
  
  
endmodule
