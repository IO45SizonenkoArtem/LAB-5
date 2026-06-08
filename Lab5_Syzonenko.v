`timescale 1 ns/1 ps

module Lab5_Syzonenko (
    input [2:0] A,    
    input EN,         
    output [7:0] F    
);

    wire [7:0] dec_out;
    
    assign dec_out[0] = (~A[2] & ~A[1] & ~A[0]);
    assign dec_out[1] = (~A[2] & ~A[1] &  A[0]);
    assign dec_out[2] = (~A[2] &  A[1] & ~A[0]);
    assign dec_out[3] = (~A[2] &  A[1] &  A[0]);
    assign dec_out[4] = ( A[2] & ~A[1] & ~A[0]);
    assign dec_out[5] = ( A[2] & ~A[1] &  A[0]);
    assign dec_out[6] = ( A[2] &  A[1] & ~A[0]);
    assign dec_out[7] = ( A[2] &  A[1] &  A[0]);

    assign F = (EN == 1'b0) ? dec_out : 8'bzzzzzzzz;

endmodule
