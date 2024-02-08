module s2l(
    input wire [2:0] switch, // 3 input switches
    output wire [7:0] ld // 8 LEDs
);

reg [7:0] registers [0:7]; // Array of 8 registers
reg [7:0] led;
always @* begin
    // Use the value of the switch to select the register
	 registers[0] <= 8'b10011001;
	 registers[1] <= 8'b01100110;
    case(switch)
        3'b000: led = registers[0];
        3'b001: led = registers[1];
        3'b010: led = registers[2];
        3'b011: led = registers[3];
        3'b100: led = registers[4];
        3'b101: led = registers[5];
        3'b110: led = registers[6];
        3'b111: led = registers[7];
        default: led = 8'b00000000; // Default case
    endcase
end


assign ld = led;
endmodule
