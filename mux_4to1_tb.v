module testbench;

reg I0;
reg I1;
reg I2;
reg I3;
reg S1;
reg S0;

wire Y;

mux_4to1 uut(
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .S1(S1),
    .S0(S0),
    .Y(Y)
);

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);

    // Set input values
    I0 = 0;
    I1 = 1;
    I2 = 0;
    I3 = 1;

    // Select I0
    S1 = 0; S0 = 0;
    #10;

    // Select I1
    S1 = 0; S0 = 1;
    #10;

    // Select I2
    S1 = 1; S0 = 0;
    #10;

    // Select I3
    S1 = 1; S0 = 1;
    #10;

    $finish;

end

endmodule