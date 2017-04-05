/* Author: Michalis Papadopoullos (031 14702)
 * Exercise 5
 * Implementation of schematic 3.20b - (Morris Mano 5e)
 */


 module Schematic3_20b (F, A, B, C, D);
 output F;
 input A, B, C, D;
 wire w1, w2, w3, w4;
 assign w1 = ~(C & D);
 assign w2 = (~w1) | B;
 assign w3 = ~(B & (~C));
 assign w4 = ~(A & w2);
 assign F = (~w4) | (~w3);
 endmodule
