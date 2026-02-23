
module mux2(
    input logic [2:0] in0 ,
    input logic [2:0] in1 ,
    input logic sel ,
    output logic [2:0] out
    );
    
    always_comb begin 
        case(sel)
        1'b0 : out = in0;
        1'b1 : out = in1;
        endcase
    end
endmodule
