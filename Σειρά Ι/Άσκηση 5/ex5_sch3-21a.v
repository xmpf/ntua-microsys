/* Author: Michalis Papadopoullos (031 14702)
 * Exercise 5
 * Implementation of schematic 3.21a - (Morris Mano 5e)
 */

 module Schematic3_21a (F, A, B, C, D);
    output F;
    input A, B, C, D;
    wire w1, w2, w3, w4;
    assign w1 = A & (~B);
    assign w2 = (~A) & B;
    assign w3 = C | (~D);
    assign w4 = w1 | w2;
    assign F = w4 & w3

 endmodule
