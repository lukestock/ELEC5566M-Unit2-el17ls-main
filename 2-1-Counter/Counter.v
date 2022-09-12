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
    output [3:0] out  // Declare 4-bit output port for output Counter value 
);

	wire [3:0] return;

// Instantiate full adders for bits 0 to 3
    Adder4Bit Counter4BitFullAdder (
        .cin (           ),
        .a   (clock + {(4){reset}}),
        .b   (return[3:0] + {(4){reset}}),
        .sum (return[3:0]), 
		  .cout(          )
    );
	 
	 assign out[3:0] = return[3:0];
	 
endmodule