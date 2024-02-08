`timescale 1ns/1ns

module AND_gate (
    input a, // First input
    input b, // Second input
    output w, // Output
    output x,
    output y,
    output z
);

assign w = a & b; //AND Gate
assign x = a | b; //OR Gate
assign y = !(a & b); //NAND Gate
assign z = !(a | b); //NOR Gate

endmodule
