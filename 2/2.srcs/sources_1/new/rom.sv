
module rom(
     input logic [1:0] instr_addr,
     output logic [5:0] out
    );
    
    always_comb begin 
        case(instr_addr)
            2'b00 :out = 6'b000010 ;
            2'b01 :out = 6'b001011 ;
            2'b10 :out = 6'b010001 ;
            2'b11 :out = 6'b011001 ;
        endcase
    end    
endmodule
