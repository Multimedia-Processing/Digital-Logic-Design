module decoder_6x20 (clock, reset, coder, decoder);
  input clock, reset;
  input [5:0] coder;
  output [19:0] decoder;
  reg [2:0] row_traffic_lights, column_traffic_lights;
  reg [6:0] row_binary, column_binary;

  always @ (posedge clock) begin
    if (reset) begin
      row_binary = 0;
      column_binary = 0;
      row_traffic_lights = 0;
      column_traffic_lights = 0;

    end else if (0 <= coder && coder < 28) begin
      row_binary += 1;
      column_binary = 0;
      row_traffic_lights = 3'b001;
      column_traffic_lights = 3'b100;

    end else if (28 <= coder && coder < 32) begin
      row_binary = 0;
      column_binary = 0;
      row_traffic_lights = 3'b010;
      column_traffic_lights = 3'b100;

    end else if (32 <= coder && coder < 60) begin
      row_binary = 0;
      column_binary += 1;
      row_traffic_lights = 3'b100;
      column_traffic_lights = 3'b001;

    end else if (60 <= coder && coder < 64) begin
      row_binary = 0;
      column_binary = 0;
      row_traffic_lights = 3'b100;
      column_traffic_lights = 3'b010;

    end else begin
        row_binary = 7'b1111111;
        column_binary = 7'b1111111;
        row_traffic_lights = 3'b111;
        column_traffic_lights = 3'b111;
    end
  end

  assign decoder = {row_traffic_lights, column_traffic_lights,
    row_binary, column_binary};

endmodule // decoder_6x20
