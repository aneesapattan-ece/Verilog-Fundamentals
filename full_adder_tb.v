module testbench;

reg A;
reg B;
reg Cin;

wire SUM;
wire Cout;

full_adder uut(
    .A(A),
    .B(B),
    .Cin(Cin),
    .SUM(SUM),
    .Cout(Cout)
);

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);

    A=0; B=0; Cin=0; #10;
    A=0; B=0; Cin=1; #10;
    A=0; B=1; Cin=0; #10;
    A=0; B=1; Cin=1; #10;
    A=1; B=0; Cin=0; #10;
    A=1; B=0; Cin=1; #10;
    A=1; B=1; Cin=0; #10;
    A=1; B=1; Cin=1; #10;

    $finish;

end

endmodule