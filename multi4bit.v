module multi4bit 
    // Parameters section
    #( parameter N = 4)
    // Ports section
    (input [N-1:0] a,
     input [N-1:0] b,
     output reg [7:0] sum);
    
    // Wildcard operator is best for the procedure's
    // sensitivity list (control list)
    always @(*) begin
       sum[7:0] = a[N-1:0] * b[N-1:0];
       //prod = a * b;
    end  
 
endmodule
