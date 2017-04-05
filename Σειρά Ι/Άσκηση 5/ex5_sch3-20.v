/* Author: Michalis Papadopoullos (031 14702)
 * Exercise 5
 * Implementation of schematic 3.20 - (Morris Mano 5e)
 */

module Schematic3_20 (A, B, C, D, F);
  input A, B, C, D;
  output F;
  wire w1, w2, w3, w4, w5;
  and (w1, C, D);   // 1st lvl :: w1 = C & D
  not (w5, C);      // w5 = ~C
  and (w2, B, w5);  // 1st lvl :: w2 = B & (~C)
  or  (w3, w1, B);  // 2nd lvl :: w3 = w1 | B
  and (w4, w3, A);  // 3rd lvl :: w4 = w3 & A
  or  (F, w2, w4);  // 4th lvl :: F = w2 & w4
endmodule
