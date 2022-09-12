// Timescale indicates unit of delays.
// `timescale unit / precision
// Where delays are given as:
// #unit.precision
`timescale 1 ns/100 ps
// Test bench module declaration
// Always end test bench module names with _tb for clarity, and use no port list
module DFlipFlopWithAclr_tb;

	// Test Bench Generated Signals
	reg clock;
	reg reset;
	reg d;
	
	// DUT Output Signals
	wire q;
	
// Device Under Test. Instance typically named "dut", or "ModuleName_dut".
DFlipFlopWithAclr dflipflopwithaclr_dut (
.clock ( clock ),
.reset ( reset ),
.d ( d ),
.q ( q )
); 


// Test Bench Logic
initial begin
//Print to console that the simulation has started. $time is the current sim time.
$display("%d ns\tSimulation Started",$time);
//Monitor changes to any values listed, and automatically print to the console
//when they change. There can only be one $monitor per simulation.
$monitor("%d ns\tm=%d\tq=%d\tp=%d",$time,clock,reset,d,q);
	//Initialise clock low, reset high, d high
	clock = 1'b0;
	reset = 1'b1;
	d = 1'b1;
	#10; //Wait 10 units.
	clock = 1'b1;	
	#1;
	d = 1'b0;
	#10; 
	clock = 1'b0;
	#10; //Wait 10 units.
	clock = 1'b1;	
	#1;
	d = 1'b1;	
	#10; 
	clock = 1'b0;
	#10; //Wait 10 units.
	clock = 1'b1;	
	#1;
	d = 1'b0;	
	#10; 
	clock = 1'b0;
	#10; //Wait 10 units.
	clock = 1'b1;	
	#1;
	d = 1'b1;
	#10; 
	clock = 1'b0;	
	#10;
	
	$display("%d ns\tSimulation Finished",$time); //Finished
	//There are no other processes running in this testbench, so "run -all" in
	//ModelSim will finish the simulation automatically now.
	//We can also use $stop(); to finish the simulation whenever we want.
end
endmodule
