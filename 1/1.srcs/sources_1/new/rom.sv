module rom(
    input logic [1:0] in,
    output logic [6:0] out
    );

always_comb begin
    case(in)
        2'd0: out=7'b0000000;
        2'd1: out=7'b0110111;
        2'd2: out=7'b1001111;
        2'd3: out=7'b1110011;
    endcase
end

endmodule
