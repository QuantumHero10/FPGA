module flash_adc (
  input wire clk,          // Clock signal
  input wire [7:0] analog_in, // 8-bit analog input
  output wire [7:0] digital_out // 8-bit digital output
);

  wire [7:0] comparisons [0:255]; // Array of comparators
  
  // Instantiate 256 comparators
  generate
    genvar i;
    for (i = 0; i < 256; i = i + 1) begin : comparator_gen
      assign comparisons[i] = (analog_in >= i) ? 8'b1 : 8'b0;
    end
  endgenerate

  // Output priority encoder
  always @ (posedge clk) begin
    integer j;
    digital_out = 8'b0;
    for (j = 0; j < 256; j = j + 1) begin
      if (comparisons[j] == 1'b1) begin
        digital_out = j;
        break;
      end
    end
  end

endmodule
