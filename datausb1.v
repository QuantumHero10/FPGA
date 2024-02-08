module datausb1(
    input wire clk,          // FPGA clock input
    input wire rst,          // Reset signal
    output wire tx,          // RS-232 transmit pin
    output wire tx_ready,    // Transmission ready signal
    input wire [7:0] data,   // Data to be transmitted
    input wire start_tx      // Start transmission signal
);

reg [11:0] baud_counter;    // Baud rate counter
reg [9:0] bit_counter;      // Bit counter
reg [7:0] tx_data;          // Data to be transmitted
reg tx_busy;                // Transmission in progress
reg tx_bit;                 // Temporary variable for the bit to be transmitted

assign tx = tx_bit;         // Connect the temporary variable to the RS-232 transmit pin
assign tx_ready = ~tx_busy; // The transmission is ready when tx_busy is low

always @(posedge clk or posedge rst) begin
    if (rst) begin
        baud_counter <= 0;
        bit_counter <= 0;
        tx_data <= 8'b0;
        tx_busy <= 0;
    end else if (start_tx && !tx_busy) begin
        baud_counter <= 0;
        bit_counter <= 0;
        tx_data <= data;
        tx_busy <= 1;
    end else if (baud_counter == 0 && bit_counter < 10) begin
        baud_counter <= 520; // For 9600 baud rate, you can calculate the proper value
        tx_bit <= tx_data[bit_counter];
        bit_counter <= bit_counter + 1;
    end else if (baud_counter == 0 && bit_counter == 10) begin
        baud_counter <= 520; // To allow for stop bit(s)
        tx_bit <= 1; // Stop bit
        bit_counter <= 0;
        tx_busy <= 0;
    end else begin
        baud_counter <= baud_counter - 1;
    end
end

endmodule
