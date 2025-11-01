//Jean Guiraud and Alan Bernal
//Spring 2025
//Section 2
//Date Created: 4/4/2025
//This code counts ups and down

module counter (reset, sResetn, Clock, updown, Q);
	input reset;
	input sResetn, Clock, updown;
	output reg [7:0] Q;
	
	always @(negedge sResetn or posedge Clock) begin
			if (!sResetn)
					Q <= 8'b00000000; // Asynchronous reset to 0
			else if (updown) begin // Counting Up
				if (Q == 8'b00001001) // Max value 9
                Q <= 8'b00000000; // Roll-over to 0
             else
                Q <= Q + 1;
          end else begin // Counting Down
             if (Q == 8'b00000000) // Min value 0
                 Q <= 8'b00001001; // Roll-over to 9
             else
                Q <= Q - 1;
          end
   end
endmodule