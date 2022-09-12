// Timescale indicates unit of delays.
// `timescale unit / precision
// Where delays are given as:
// #unit.precision
`timescale 1 ns/100 ps
// Test bench module declaration
// Always end test bench module names with _tb for clarity, and use no port list
module Counter_tb;

	// Test Bench Generated Signals
	reg clock;
	reg reset;
	
	// DUT Output Signals
	wire [3:0] out;
	
// Device Under Test. Instance typically named "dut", or "ModuleName_dut".
Counter counter4bit_dut (
.clock ( clock ),
.reset ( reset ),
.out ( out )
); 


// Test Bench Logic
initial begin
	//Print to console that the simulation has started. $time is the current sim time.
	$display("%d ns\tSimulation Started",$time);
	//Monitor changes to any values listed, and automatically print to the console
	//when they change. There can only be one $monitor per simulation.
	$monitor("%d ns\tm=%d\tq=%d\tp=%d",$time,clock,reset,out);
	
	//Initialise values
	clock <= 0; 
	reset <= 0; 
	#10;
	clock <= 1; //1 
	#10;
	clock <= 0; 
	#10; 
	
	clock <= 1; //2
	#10;
	clock <= 0; 
	reset <= 1;//Module will reset output value to 4'b0000 
	#10; 
	
	clock <= 1; //3
	#10;
	clock <= 0; 
	#10; 

	clock <= 1; //4
	reset <= 0;
	#10;
	clock <= 0; 
	#10; 
	
	clock <= 1; //5
	#10;
	clock <= 0; 
	#10; 
	
	clock <= 1; //6
	#10;
	clock <= 0; 
	#10; 
	
	clock <= 1; //7
	#10;
	clock <= 0; 
	#10; 
	
	clock <= 1; //8
	#10;
	clock <= 0; 
	#10; 
	
	clock <= 1; //9
	#10;
	clock <= 0; 
	#10; 
	
	clock <= 1; //10
	#10;
	clock <= 0; 
	#10; 
	
	clock <= 1; //11
	#10;
	clock <= 0; 
	#10; 
	
	clock <= 1; //12
	#10;
	clock <= 0; 
	#10; 
	
	clock <= 1; //13
	#10;
	clock <= 0; 
	#10; 
	
	clock <= 1; //14
	#10;
	clock <= 0; 
	#10; 
	
	clock <= 1; //15
	#10;
	clock <= 0; 
	#10; 
	
	clock <= 1; //16
	#10;
	clock <= 0; 
	#10; 
	
	clock <= 1; //17
	#10;
	clock <= 0; 
	#10; 
	
	clock <= 1; //18
	#10;
	clock <= 0; 
	#10; 
	
	clock <= 1; //19
	#10;
	clock <= 0; 
	#10; 
	
	clock <= 1; //20
	#10;
	clock <= 0; 
	#10;		
	
	clock <= 1; //21
	reset <= 1;//Module will reset output value to 4'b0000 
	#10;
	clock <= 0;
	reset <= 0;
	#10; 
	
	clock <= 1; //22
	#10;
	clock <= 0; 
	#10; 
	
	reset <= 1;//Module will reset output value to 4'b0000 
	
	$display("%d ns\tSimulation Finished",$time); //Finished
	//There are no other processes running in this testbench, so "run -all" in
	//ModelSim will finish the simulation automatically now.
	//We can also use $stop(); to finish the simulation whenever we want.
end
endmodule
