module testbench;

reg A;
reg B;
reg S;

wire Y;

mux_2to1 uut(
    .A(A),
    .B(B),
    .S(S),
    .Y(Y)
);

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);

    A=0; B=1; S=0;
    #10;

    A=0; B=1; S=1;
    #10;

    A=1; B=0; S=0;
    #10;

    A=1; B=0; S=1;
    #10;

    $finish;

end

endmodule