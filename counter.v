`timescale 1ns/1ns

module counter(
input wire clk,
input wire reset,
input wire signal,
output wire [17:0] led
);

reg [17:0] counter = 18'b000000000000000000;

always @(posedge clk or negedge reset) begin
	if (clk || !reset) begin
		if (signal) begin
			counter <= counter + 18'b000000000000000001;
		end
	end
end

assign led = counter;
endmodule