module ones_compliment(
    input[3:0] A,B,
    output[3:0] Y
    );
    
    wire[3:0] sum;
    wire[4:0] carry1;
    wire[4:0] carry2;
    genvar i;
    
    generate 
        full_adder lsb(
            .A(A[0]),
            .B(B[0]),
            .Y(sum[0]),
            .Cin(1'b0),
            .Cout(carry1[1])
        );
        
        for (i = 1; i < 4; i = i + 1) begin
            full_adder adder(
                .A(A[i]),
                .B(B[i]),
                .Y(sum[i]),
                .Cin(carry1[i]),
                .Cout(carry1[i+1])
            );
        end
        
        //NEXT HALF
        
         full_adder lsb2(
            .A(sum[0]),
            .B(carry1[4]),
            .Y(Y[0]),
            .Cin(1'b0),
            .Cout(carry2[0])
        );
        
        for (i = 1; i < 4; i = i + 1) begin
            full_adder adder(
                .A(sum[i]),
                .B(1'b0),
                .Y(Y[i]),
                .Cin(carry2[i-1]),
                .Cout(carry2[i])
            );
        
        end
        
    endgenerate
endmodule