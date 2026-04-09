module top(
    output [6:0]led,
    input btnU,
    input btnC
    );
    
     //Ripple Counter
    wire t1_out, t2_out;
    
    tff t1( .T(1'b1), .clk(btnC), .Q(t1_out), .res(btnU));
    tff t2( .T(1'b1), .clk(t1_out), .Q(t2_out), .res(btnU));
    tff t3( .T(1'b1), .clk(t2_out), .Q(led[2]), .res(btnU));
    
    assign led[0] = t1_out;
    assign led[1] = t2_out;
    
    //Mod Counter
    wire d1out,d2out,d3out, f1out, f2out, f3out, carry1, carry2, is_six;
    
    //fulladders
    fulladder f1 (.A(d1out), .B(1'b1), .Y(f1out), .Cout(carry1), .Cin(1'b0));
    fulladder f2 (.A(d2out), .B(1'b0) ,.Y(f2out), .Cin(carry1), .Cout(carry2));
    fulladder f3 (.A(d3out), .B(1'b0),.Y(f3out), .Cin(carry2));
    
    assign is_six = (~f1out & f2out & f3out);
    
    //dflipflops
    dff d1 (.Q(d1out), .D(f1out), .res(btnU | is_six), .clk(btnC));
    dff d2 (.Q(d2out), .D(f2out), .res(btnU | is_six), .clk(btnC));
    dff d3 (.Q(d3out), .D(f3out), .res(btnU | is_six), .clk(btnC));
    dff d4 (.Q(led[6]), .D(is_six ^ led[6]), .clk(btnC), .res(1'b0));
    
    assign led[3] = d1out;
    assign led[4] = d2out;
    assign led[5] = d3out;
    
   
    
endmodule
