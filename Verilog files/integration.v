module integration (
    input wire clk, // clock signal
    input wire rst, // reset signal
    input wire signed [15:0] in, // input signal
    output reg signed [31:0] out // output integral
);

// Parameters
parameter T = 16'd1000; // number of samples in integration interval
parameter DT = 16'd1; // sampling interval

// Internal signals
reg signed [31:0] acc; // accumulator

// Sequential logic
always @(posedge clk) begin
    if (rst) begin
        acc <= 0;
        out <= 0;
    end else begin
        acc <= acc + in;
        if (acc >= T) begin
            out <= acc * DT;
            acc <= 0;
        end
    end
end

endmodule
