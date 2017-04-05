/* Author: Michalis Papadopoullos (031 14702)
 * Exercise 5
 * Implementation of schematic 3.24 (dataflow) - (Morris Mano 5e)
 */

module Schematic3_24df (F, A, B, C, D, E);
    output F;
    input A, B, C, D, E;
    wire w1, w2, w3;
    assign w1 = ~(A | B);
    assign w2 = ~(C | D);
    assign w3 = ~E;
    assign F = (~w1) & (~w2) & (~w3);

endmodule
