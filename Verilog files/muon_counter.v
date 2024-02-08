module counter_with_timer (
  input wire clk,                // Clock signal
  input wire reset,              // Reset signal
  input wire [7:0] digital_in,   // 8-bit digital input
  output wire [7:0] count,       // Counter output
  output wire [31:0] count_time  // Counter time
);

  reg [7:0] count_reg;          // Counter register
  reg [31:0] count_time_reg;    // Counter time register
  reg counting;                 // Flag to indicate counting
  reg [31:0] start_time;        // Start time for counting
  reg [31:0] end_time;          // End time for counting
  reg [7:0] previous_value;     // Previous input value

  // Always block for clocked logic
  always @(posedge clk or posedge reset) begin
    if (reset) begin
      count_reg <= 8'b0;
      count_time_reg <= 32'b0;
      counting <= 1'b0;
    end else begin
      // Check if the input value is above 127
      if (digital_in > 127) begin
        // If not already counting, start counting
        if (!counting) begin
          start_time <= $time;
          counting <= 1'b1;
        end
      end else begin
        // If counting and input is not above 127, stop counting
        if (counting) begin
          end_time <= $time;
          counting <= 1'b0;
          // Calculate the count time and increment the count
          count_time_reg <= count_time_reg + (end_time - start_time);
          count_reg <= count_reg + 1;
        end
      end
      previous_value <= digital_in;
    end
  end

  // Output assignments
  assign count = count_reg;
  assign count_time = count_time_reg;

  // Always block for writing data to a text file
  always @(posedge clk) begin
    if (counting) begin
      // Open a text file in append mode
      $fopen("count_log.txt", "a", file_handle);
      // Write the count time and count to the text file
      $fwrite(file_handle, "%d, %d\n", count_time_reg, count_reg);
      // Close the file
      $fclose(file_handle);
    end
  end

endmodule
