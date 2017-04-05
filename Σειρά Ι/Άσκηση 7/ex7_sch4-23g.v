/* Author: Michalis Papadopoullos (031 14702)
 * Exercise 7
 * Implementation of schematic 4.23 (gate level) - (Morris Mano 5e)
 */

module Schematic4_23G (output x, y, V, input D0, D1, D2, D3);
    wire w1, w2, w3;
    not (w1, D2);
    and (w2, w1, D1);
    or  (w3, D3, D2);

    or  (y, D3, w2);
    assign x = w3;
    or  (V, D0, D1, w3);
endmodule
