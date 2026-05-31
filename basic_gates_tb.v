module testbench;

reg A;
reg B;

wire AND_OUT;
wire OR_OUT;
wire XOR_OUT;
wire NAND_OUT;
wire NOR_OUT;

basic_gates uut(
    .A(A),
    .B(B),
    .AND_OUT(AND_OUT),
    .OR_OUT(OR_OUT),
    .XOR_OUT(XOR_OUT),
    .NAND_OUT(NAND_OUT),
    .NOR_OUT(NOR_OUT)
);

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);

    A = 0; B = 0;
    #5;

    A = 0; B = 1;
    #5;

    A = 1; B = 0;
    #5;

    A = 1; B = 1;
    #5;

    $finish;

end

endmodule