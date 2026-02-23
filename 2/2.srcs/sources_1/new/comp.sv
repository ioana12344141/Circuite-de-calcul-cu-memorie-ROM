
module comp(
     input logic  in0,
     input logic [2:0] in1,
     output logic  lt_flag ,
     output logic  eq_flag 
    );
    
    assign lt_flag =  ( in1 < in0 );
    assign eq_flag =  ( in1 == in0 );
endmodule
