/* Author: Michalis Papadopoullos (031 14702)
 * Exercise 5
 * Implementation of schematic 3.24 - (Morris Mano 5e)
 */

module Schematic3_24(A, B, C, D, E, Eb, F);
input A, B, C, D, E, Eb;
output F;
wire w1, w2, w3, w4, w5;
nor (w1, A, B);
nor (w2, C, D);
not (w3, w1);
not (w4, w2);
not (w5, Eb);
and (F, w5, w4, w3);
endmodule
