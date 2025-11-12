//Jean Guiraud and Alan Bernal
//Spring 2025
//Section 2
//Date Created: 4/4/2025
//This code is for a clock timer

module timer_module(clock, reset, slow_clock);

input clock, reset; 
output reg slow_clock;

parameter lowcount = 25000000;
reg [24:0] count;

	always @(posedge clock or negedge reset) begin
		if (!reset) begin
			count <= 0;
			slow_clock <= 0;
		end else if (count == lowcount -1) begin
			count <= 0;
			slow_clock <= ~slow_clock;
		end else begin
			count <= count + 1;
		end
	end
	
endmodule
