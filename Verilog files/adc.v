module adc (
    input wire clk,
    input wire reset,
    input wire analog_in,
    output reg digital_out
);

always @(posedge clk) begin
	$display("Hello, World!");
    if (reset) begin
        digital_out <= 0;
    end else begin
        if (analog_in > 0) begin
            digital_out <= 1;
        end else begin
            digital_out <= 0;
        end
    end
end

endmodule
