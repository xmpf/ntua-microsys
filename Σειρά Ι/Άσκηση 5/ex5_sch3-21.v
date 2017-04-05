/* Author: Michalis Papadopoullos (031 14702)
 * Exercise 5
 * Implementation of schematic 3.21b - (Morris Mano 5e)
 */

 module Schematic3_21b (A, B, C, D, F);
    input A, B, C, D;
    output F;
    wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11;
    not (w5, B); // w5 = ~B
    not (w6, A); // w6 = ~A
    not (w7, C); // w7 = ~C
    not (w8, D); // w8 = ~D
    nand (w1, A, w5);
    nand (w2, B, w6);
    or  (w3, C, w8);
    not (w9, w1);
    not (w10, w2);
    or (w11, w9, w10);
    nand (w4, w3, w11);
    not (F, w4);
 endmodule
