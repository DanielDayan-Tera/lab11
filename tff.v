module tff(
    input T,
    input clk,
    input res,
    output Q,
    output Q_nt
    );
//   wire qout, dout;
//   assign dout = T ^ qout;
//   dff df(.Q(qout), .D(dout), .clk(clk), .res(res));
//   wire nand1, nand2, Qo, nQo, nor1, nor2;
   
//   assign nand1 = (T & Qo & clk);
//   assign nand2 = (T & nQo & clk);
//   assign nor1 = (~(nand1 | nand2));
//   assign nor2 = (~(nand2 | nand1));
   
//   assign Q = nor1;
//   assign Q_nt = nor2;
         
        jkf jk_flip(
            .J(T),
            .K(T),
            .clk1(clk),
            .Q(Q),
            .Q_nt(Q_nt),
            .res(res)
        );
endmodule

