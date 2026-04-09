module jkf(
    input J,
    input K,
    input clk1,
    input res,
    output Q,
    output Q_nt
    );
    
   // wire d_flip;
    //assign d_flip = (J&~Q)|(~K&Q);
    
    dff d_flop(
        .D((J&~Q)|(~K&Q)),
        .clk(clk1),
        .Q(Q),
        .Q_nt(Q_nt),
        .res(res)
    ); 
endmodule