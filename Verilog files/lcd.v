module lcd (
    input clk, // Clock signal
    input reset, // Reset signal
    input [7:0] data_in, // 8-bit input data
    output reg [7:0] data_out // 8-bit output data
);

// Internal registers
reg [7:0] data_reg;

// Synchronous reset
always @(posedge clk) begin
    if (reset) begin
        data_reg <= 8'h000;
    end else begin
        data_reg <= data_in;
    end
end

// Output assignment
assign data_out = data_reg;

endmodule
