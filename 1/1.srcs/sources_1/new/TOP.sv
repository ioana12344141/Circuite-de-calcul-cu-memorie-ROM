module TOP(
    input logic [1:0] instr_addr,
    input logic [3:0] A,
    input logic [3:0] B,
    output logic [3:0] alu_out,
    output logic lt_flag,
    output logic eg_flag,
    output logic gt_flag
    );
logic [6:0] instr;
logic [3:0] mx2_out;
logic [3:0] sb_out, xr_out,ad_out,sl_out;

rom ROM(
    .in(instr_addr),
    .out(intr)
    );
mux2 MUX2(
    .in0(instr[3:0]),
    .in1(B),
    .sel(instr[4]),
    .out(mx2_out)
    );
 sub SUB(
 .in0(A),
 .in1(mx2_out),
 .out(sb_out)
);
xor_bw XORBW(
 .in0(A),
 .in1(mx2_out),
 .out(xr_out)
    );
and_bw ANDBW(
 .in0(A),
 .in1(mx2_out),
 .out(ad_out) 
    );
shl SHL(
 .in0(A),
 .in1(mx2_out),
 .out(sl_out) 
 );
 mux4 MUX4(
    .in0(sb_out),
    .in1(xr_out),
    .in2(ad_out),
    .in3(sl_out),
    .sel(instr[6:5]),
    .out(alu_out)
    );
comp COMP(
 .in0(0),
 .in1(alu_out),
 .out({lt_flag,eg_flag,gt_flag})
    );
endmodule
