
module TOP(
    input logic [1:0] instr_addr ,
    input logic [2:0] A ,
    input logic [2:0] B ,
    output logic lt_flag ,
    output logic eq_flag , 
    output logic [2:0] alu_out , 
    output logic  carry_flag
    );
    
    logic [5:0] rom1 ;
    logic [2:0] outalb , outo , outs  , outshl , outmux4 ;
    logic ltflag , eqflag , carryflag ;
    logic [3:0] outadd ;
    
    
    rom ROM(
    .instr_addr(instr_addr),
    .out(rom1)
    );
    
    mux2 MUX2(
    .in0(A) ,
    .in1(B) ,
    .sel(rom1[3] ) ,
    .out(outalb)
    );
    
    or_bw OR( 
    .in0(outalb),
    .in1(rom1[2:0]),
    .out(outo) 
    );
    
     sub SUB(
     .in0(outalb),
     .in1(rom1[2:0]),
     .out(outs)
    );
    
     add ADD(
    .in0(outalb),
    .in1(rom1[2:0] ),
    .out(outadd)
    );
    
     shl SHL(
     .in0(outalb),
     .in1(rom1[1:0] ),
     .out(outshl)
    );
    
     mux4 MUX4(
    .in0(outo) , 
    .in1(outs) , 
    .in2(outa) , 
    .in3(outshl) ,
    .sel(rom1[5:4]) ,
    .out(outmux4)  
    );
    
    comp COMP(
    .in0(0),
    .in1(outmux4),
    .lt_flag(ltflag) ,
    .eq_flag(eqflag) 
    );
endmodule
