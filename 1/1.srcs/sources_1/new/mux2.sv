module mux2(
    input logic [3:0] in0,
    input logic [3:0] in1,
    input logic sel,
    output logic [3:0] out
    );
always_comb begin
    case(sel)
        1'd0: out = in0;
        1'd1: out = in1;
        default: out =4'd0;
    endcase
    
end
endmodule
