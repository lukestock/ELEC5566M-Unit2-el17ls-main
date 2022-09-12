/*
 * N-Bit Counter
 * =============
 *
 * Add description here
 *
 */

module CounterNBit #(
    //Parameter list within the #(...)
    parameter WIDTH = 10,                //Default to 10bits wide 
    parameter INCREMENT = 1,             //Amount to increment counter by each cycle
    parameter MAX_VALUE = (2**WIDTH)-1   //e.g. Maximum value default is 2^WIDTH - 1
)(
    //Port list within the (...) as before
    input                    clock, 
    input                    reset,
    input                    enable,
    output reg [(WIDTH-1):0] countValue  //Output is declared as "WIDTH" bits wide
);
localparam ZERO = {(WIDTH){1'b0}}; //A local parameter. The value 0, WIDTH bits wide.

always @( posedge clock ) begin // At to rising edge of clock
    if ( reset  ) 
		countValue <= ZERO; // Reset countValue to WIDTH'B0xxx...
	 else if ( enable == 1 ) 
		countValue <= countValue + 1; // Increment binary output value by 1, if enable is set high.
	 else if ( countValue == MAX_VALUE )
	   countValue <= ZERO; // Reset countValue to WIDTH'B0xxx... iteration.	

end
endmodule
