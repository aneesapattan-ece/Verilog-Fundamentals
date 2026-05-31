module basic_gates(
    input A,
    input B,
    output AND_OUT,
    output OR_OUT,
    output XOR_OUT,
    output NAND_OUT,
    output NOR_OUT
);

assign AND_OUT  = A & B;
assign OR_OUT   = A | B;
assign XOR_OUT  = A ^ B;
assign NAND_OUT = ~(A & B);
assign NOR_OUT  = ~(A | B);

endmodule
