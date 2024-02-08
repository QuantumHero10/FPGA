`timescale 1ns/1ns

module fpga2usb(
input wire clk,
input wire reset,
input wire signal,
output wire [5:0] led,
output wire [5:0] usb,
input wire [5:0] switch
);

reg [5:0] ld;
reg b = 1'b1;

always @(posedge clk or negedge reset) begin
	if (clk | !reset) begin
	if (b) begin
		b <= 1'b0;
		ld = 6'b000000;
	end
	case(switch)
		6'b000001: begin ld = 6'b000001; end
		6'b000010: begin ld = 6'b000010; end
		6'b000011: begin ld = 6'b000011; end
		6'b000100: begin ld = 6'b000100; end
		6'b000101: begin ld = 6'b000101; end
		6'b000110: begin ld = 6'b000110; end
		6'b000111: begin ld = 6'b000111; end
		6'b001000: begin ld = 6'b001000; end
		6'b001001: begin ld = 6'b001001; end
		6'b001010: begin ld = 6'b001010; end
		6'b001011: begin ld = 6'b001011; end
		6'b001100: begin ld = 6'b001100; end
		6'b001101: begin ld = 6'b001101; end
		6'b001110: begin ld = 6'b001110; end
		6'b001111: begin ld = 6'b001111; end
		6'b010000: begin ld = 6'b010000; end
		6'b010001: begin ld = 6'b010001; end
		6'b010010: begin ld = 6'b010010; end
		6'b010011: begin ld = 6'b010011; end
		6'b010100: begin ld = 6'b010100; end
		6'b010101: begin ld = 6'b010101; end
		6'b010110: begin ld = 6'b010110; end
		6'b010111: begin ld = 6'b010111; end
		6'b011000: begin ld = 6'b011000; end
		6'b011001: begin ld = 6'b011001; end
		6'b011010: begin ld = 6'b011010; end
		6'b011011: begin ld = 6'b011011; end
		6'b011100: begin ld = 6'b011100; end
		6'b011101: begin ld = 6'b011101; end
		6'b011110: begin ld = 6'b011110; end
		6'b011111: begin ld = 6'b011111; end
		6'b100000: begin ld = 6'b100000; end
		6'b100001: begin ld = 6'b100001; end
		6'b100010: begin ld = 6'b100010; end
		6'b100011: begin ld = 6'b100011; end
		6'b100100: begin ld = 6'b100100; end
		6'b100101: begin ld = 6'b100101; end
		6'b100110: begin ld = 6'b100110; end
		6'b100111: begin ld = 6'b100111; end
		6'b101000: begin ld = 6'b101000; end
		6'b101001: begin ld = 6'b101001; end
		6'b101010: begin ld = 6'b101010; end
		6'b101011: begin ld = 6'b101011; end
		6'b101100: begin ld = 6'b101100; end
		6'b101101: begin ld = 6'b101101; end
		6'b101110: begin ld = 6'b101110; end
		6'b101111: begin ld = 6'b101111; end
		6'b110000: begin ld = 6'b110000; end
		6'b110001: begin ld = 6'b110001; end
		6'b110010: begin ld = 6'b110010; end
		6'b110011: begin ld = 6'b110011; end
		6'b110100: begin ld = 6'b110100; end
		6'b110101: begin ld = 6'b110101; end
		6'b110110: begin ld = 6'b110110; end
		6'b110111: begin ld = 6'b110111; end
		6'b111000: begin ld = 6'b111000; end
		6'b111001: begin ld = 6'b111001; end
		6'b111010: begin ld = 6'b111010; end
		6'b111011: begin ld = 6'b111011; end
		6'b111100: begin ld = 6'b111100; end
		6'b111101: begin ld = 6'b111101; end
		6'b111110: begin ld = 6'b111110; end
		6'b111111: begin ld = 6'b111111; end
		default: ld = 6'b000000;
	endcase
	end
end

assign led = ld;
assign usb = ld;

endmodule