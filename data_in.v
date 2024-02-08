module data_in (
    input wire digital_value, // 4-bit digital value from the ADC
    output wire led          // LED outputs
);

assign led = digital_value;

endmodule
