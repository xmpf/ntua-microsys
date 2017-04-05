/* Author: Michalis Papadopoullos (031 14702)
 * Exercise 5
 * Implementation of schematic 3.25 - (Morris Mano 5e)
 */


 module Schematic3_25 (A, Ab, B, Bb, C, Db, F);
    input A, Ab, B, Bb, C, Db;
    output F;
    wire w1, w2, w3, w4, w5, w6, w7, w8, w9, w10, w11;

    /* we assume that are available from previous modules
    assign Ab = ~A;
    assign Bb = ~B;
    assign Db = ~D;
    */

    not (w1, Ab);
    not (w2, B);
    not (w3, A);
    not (w4, Bb);
    and (w5, w1, w2);
    and (w6, w3, w4);
    nor (w7, C, Db);
    nor (w8, w5, w6);
    not (w9, w7);
    not (w10, w8);
    and (F, w9, w10);
 endmodule
