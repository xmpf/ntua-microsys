/* Author: Michalis Papadopoullos (031 14702)
 * Exercise 5
 * Implementation of schematic 3.25 (dataflow) - (Morris Mano 5e)
 */

module Schematic3_25df (F, A, B, C, D);
    output F;
    input A, B, C, D;
    wire w1, w2, w3, w4, w5, w6;
    assign w1 = ~A;
    assign w2 = ~B;
    assign w3 = ~D;

    assign w4 = (~w1) & (~B);
    assign w5 = (~A) & (~w2);
    assign w6 = ~(C | w3);

    assign w7 = ~(w4 | w5);
    assign F = (~w7) & (~w6);
endmodule
