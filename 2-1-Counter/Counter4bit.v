/*
 * 4 bit Counter 
 * ================
 *
 * A simple 4 bit Counter Example
 *
 */

module Counter (
    input clock,  // Declare input port for clock to ensure counter can count
    input reset,  // Declare input port for reset to set the output to 0000 when counter reaches 5'b10000
    output reg[3:0] out  // Declare 4-bit output port for output Counter value 
);

// Instantiate full adders for bits 0 to 3
    Adder4Bit Counter4BitFullAdder (
        .cin (clock   ),
        .a   (sum     ),
        .b   (        ),
        .sum (out     ),
        .cout(reset   )
    );
endmodule
