/* Author: Michalis Papadopoullos (031 14702)
 * Exercise 7
 * Implementation of schematic 4.23 (behavioral level) - (Morris Mano 5e)
 */

module Schematic4_23G (x, y, V, D);
    output reg x, y, V;
    input reg[3:0] D;
    always @(D[0], D[1], D[2], D[3]) begin
      case (D) // table 4.8 page 156
        4'b0000: {x, y, V} = 3'bxx0;
        4'b1000: {x, y, V} = 3'b001;
        4'bx100: {x, y, V} = 3'b011;
        4'bxx10: {x, y, V} = 3'b101;
        4'bxxx1: {x, y, V} = 3'b111;
        default: {x, y, V} = 3'b000;
      endcase
    end

endmodule
