
module shl(
     input logic [2:0] in0,
     input logic [2:0] in1,
     output logic [2:0] out
    );
    
    assign out = in0 << 1;
endmodule
