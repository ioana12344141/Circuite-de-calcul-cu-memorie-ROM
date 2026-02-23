module comp(
 input logic[3:0] in0,
 input logic[3:0] in1,
 output logic [2:0] out
    );
assign out = {(in1<in0), (in1==in0), (in1>in0)};
endmodule