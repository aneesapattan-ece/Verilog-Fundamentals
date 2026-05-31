module testbench;

reg I0;
reg I1;
reg I2;
reg I3;

wire Y1;
wire Y0;

encoder_4to2 uut(
    .I0(I0),
    .I1(I1),
    .I2(I2),
    .I3(I3),
    .Y1(Y1),
    .Y0(Y0)
);

initial begin

    $dumpfile("dump.vcd");
    $dumpvars(0, testbench);

    I0=1; I1=0; I2=0; I3=0;
    #10;

    I0=0; I1=1; I2=0; I3=0;
    #10;

    I0=0; I1=0; I2=1; I3=0;
    #10;

    I0=0; I1=0; I2=0; I3=1;
    #10;

    $finish;

end

endmodule