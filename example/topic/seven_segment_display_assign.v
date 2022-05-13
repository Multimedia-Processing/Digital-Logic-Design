module seven_segment_display_assign (data, display);
input [3:0] data;
output [6:0] display;
wire A, B, C, D;
wire a, b, c, d, e, f, g;

assign {A, B, C, D} = data;
assign display = {a, b, c, d, e, f, g};


assign a = (~B & ~D) | (A & ~C & ~D) | (A & ~B & ~C) | (~A & B & D) | (
  ~A & C) | (B & C) | (C & ~D);
assign b = (~B & ~D) | (~A & ~C & ~D) | (A & ~B & ~C) | (A & ~C & D) | (
  ~A & ~B) | (~A & C & D);
assign c = (~A & ~C & ~D) | (~A & B) | (A & ~B) | (~C & D) | (~A & D);
assign d =  (~A & ~B & ~D) | (A & ~C) | (B & ~C & D) | (A & ~B & D) | (
  ~A & ~B & C) | (~A & C & ~D) | (B & C & ~D);
assign e = (~B & ~D) | (A & B) | (A & C) | (C & ~D);
assign f =  (~C & ~D) | (~A & B) | (A & ~B) | (A & C);
assign g = (~A & B & ~C) | (A & ~B & ~C) | (B & ~C & D) | (A & D) | (
  ~A & ~B & C) | (A & C) | (C & ~D);

endmodule // seven_segment_display_assign
