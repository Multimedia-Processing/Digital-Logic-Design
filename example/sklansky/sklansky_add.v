module Black_cell (
    Gi,Pi,
    Go,Po
);
    input wire [1:0] Gi,Pi;
    output wire Go,Po;
    assign Go = Gi[1] | (Pi[1] & Gi[0]);
    assign Po = Pi[0] & Pi[1];
endmodule

module Gray_cell (
    Gi,Pi,
    Go
);
    input wire [1:0] Gi;
    input wire Pi;
    output wire Go;
    assign Go = Gi[1] | (Pi & Gi[0]);
endmodule

module sklansky (
    A,B,Cin,
    S,Cout
);
input wire [15:0]A,B;
input wire Cin;
output wire Cout;
output wire [15:0]S;
wire [16:0]g,p;
assign g[0] = Cin;
assign p[0] = 1'b0;
assign g[16:1] = A & B;
assign p[16:1] = A ^ B;

wire g1[15:0];
wire p1[15:1];
wire g2[15:0];
wire p2[15:1];
wire g3[15:0];
wire p3[15:1];
wire g4[15:0];
wire p4[15:1];

//stage 1
Gray_cell G_1_1({g[1], g[0]}, p[1], g1[1]);
Black_cell B_1_2({g[2], g[1]}, {p[2], p[1]}, g1[2], p1[2]);
Black_cell B_1_3({g[3], g[2]}, {p[3], p[2]}, g1[3], p1[3]);
Black_cell B_1_4({g[4], g[3]}, {p[4], p[3]}, g1[4], p1[4]);
Black_cell B_1_5({g[5], g[4]}, {p[5], p[4]}, g1[5], p1[5]);
Black_cell B_1_6({g[6], g[5]}, {p[6], p[5]}, g1[6], p1[6]);
Black_cell B_1_7({g[7], g[6]}, {p[7], p[6]}, g1[7], p1[7]);
Black_cell B_1_8({g[8], g[7]}, {p[8], p[7]}, g1[8], p1[8]);
Black_cell B_1_9({g[9], g[8]}, {p[9], p[8]}, g1[9], p1[9]);
Black_cell B_1_10({g[10], g[9]}, {p[10], p[9]}, g1[10], p1[10]);
Black_cell B_1_11({g[11], g[10]}, {p[11], p[10]}, g1[11], p1[11]);
Black_cell B_1_12({g[12], g[11]}, {p[12], p[11]}, g1[12], p1[12]);
Black_cell B_1_13({g[13], g[12]}, {p[13], p[12]}, g1[13], p1[13]);
Black_cell B_1_14({g[14], g[13]}, {p[14], p[13]}, g1[14], p1[14]);
Black_cell B_1_15({g[15], g[14]}, {p[15], p[14]}, g1[15], p1[15]);

//stage 2
Gray_cell G_2_2({g1[2], g[0]}, p1[2], g2[2]);
Gray_cell G_2_3({g1[3], g1[1]}, p1[3], g2[3]);
Black_cell B_2_4({g1[4], g1[2]}, {p1[4], p1[2]}, g2[4], p2[4]);
Black_cell B_2_5({g1[5], g1[3]}, {p1[5], p1[3]}, g2[5], p2[5]);
Black_cell B_2_6({g1[6], g1[4]}, {p1[6], p1[4]}, g2[6], p2[6]);
Black_cell B_2_7({g1[7], g1[5]}, {p1[7], p1[5]}, g2[7], p2[7]);
Black_cell B_2_8({g1[8], g1[6]}, {p1[8], p1[6]}, g2[8], p2[8]);
Black_cell B_2_9({g1[9], g1[7]}, {p1[9], p1[7]}, g2[9], p2[9]);
Black_cell B_2_10({g1[10], g1[8]}, {p1[10], p1[8]}, g2[10], p2[10]);
Black_cell B_2_11({g1[11], g1[9]}, {p1[11], p1[9]}, g2[11], p2[11]);
Black_cell B_2_12({g1[12], g1[10]}, {p1[12], p1[10]}, g2[12], p2[12]);
Black_cell B_2_13({g1[13], g1[11]}, {p1[13], p1[11]}, g2[13], p2[13]);
Black_cell B_2_14({g1[14], g1[12]}, {p1[14], p1[12]}, g2[14], p2[14]);
Black_cell B_2_15({g1[15], g1[13]}, {p1[15], p1[13]}, g2[15], p2[15]);

//stage 3
Gray_cell G_3_4({g2[4], g[0]}, p2[4], g3[4]);
Gray_cell G_3_5({g2[5], g1[1]}, p2[5], g3[5]);
Gray_cell G_3_6({g2[6], g2[2]}, p2[6], g3[6]);
Gray_cell G_3_7({g2[7], g2[3]}, p2[7], g3[7]);
Black_cell B_3_8({g2[8], g2[4]}, {p2[8], p2[4]}, g3[8], p3[8]);
Black_cell B_3_9({g2[9], g2[5]}, {p2[9], p2[5]}, g3[9], p3[9]);
Black_cell B_3_10({g2[10], g2[6]}, {p2[10], p2[6]}, g3[10], p3[10]);
Black_cell B_3_11({g2[11], g2[7]}, {p2[11], p2[7]}, g3[11], p3[11]);
Black_cell B_3_12({g2[12], g2[8]}, {p2[12], p2[8]}, g3[12], p3[12]);
Black_cell B_3_13({g2[13], g2[9]}, {p2[13], p2[9]}, g3[13], p3[13]);
Black_cell B_3_14({g2[14], g2[10]}, {p2[14], p2[10]}, g3[14], p3[14]);
Black_cell B_3_15({g2[15], g2[11]}, {p2[15], p2[11]}, g3[15], p3[15]);

//stage 4
Gray_cell G_4_8({g3[8], g[0]}, p3[8], g4[8]);
Gray_cell G_4_9({g3[9], g1[1]}, p3[9], g4[9]);
Gray_cell G_4_10({g3[10], g2[2]}, p3[10], g4[10]);
Gray_cell G_4_11({g3[11], g2[3]}, p3[11], g4[11]);
Gray_cell G_4_12({g3[12], g3[4]}, p3[12], g4[12]);
Gray_cell G_4_13({g3[13], g3[5]}, p3[13], g4[13]);
Gray_cell G_4_14({g3[14], g3[6]}, p3[14], g4[14]);
Gray_cell G_4_15({g3[15], g3[7]}, p3[15], g4[15]);

assign S = p[16:1] ^ { g4[15], g4[14], g4[13], g4[12], g4[11], g4[10], g4[9], g4[8],
                       g3[7], g3[6], g3[5], g3[4], g2[3], g2[2], g1[1], g[0]};
assign Cout = g[16] | (p[16] & g4[15]);




endmodule
