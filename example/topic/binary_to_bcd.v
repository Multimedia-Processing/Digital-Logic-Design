module binary_to_bcd (binary, bcd);
  input [6:0] binary;
  output [7:0] bcd;
  reg [7:0] bcd;

  always @ ( * ) begin
    case (binary)
      0: bcd = 8'h00;
      1: bcd = 8'h01;
      2: bcd = 8'h02;
      3: bcd = 8'h03;
      4: bcd = 8'h04;
      5: bcd = 8'h05;
      6: bcd = 8'h06;
      7: bcd = 8'h07;
      8: bcd = 8'h08;
      9: bcd = 8'h09;

      10: bcd = 8'h10;
      11: bcd = 8'h11;
      12: bcd = 8'h12;
      13: bcd = 8'h13;
      14: bcd = 8'h14;
      15: bcd = 8'h15;
      16: bcd = 8'h16;
      17: bcd = 8'h17;
      18: bcd = 8'h18;
      19: bcd = 8'h19;

      20: bcd = 8'h20;
      21: bcd = 8'h21;
      22: bcd = 8'h22;
      23: bcd = 8'h23;
      24: bcd = 8'h24;
      25: bcd = 8'h25;
      26: bcd = 8'h26;
      27: bcd = 8'h27;
      28: bcd = 8'h28;
      29: bcd = 8'h29;

      30: bcd = 8'h30;
      31: bcd = 8'h31;
      32: bcd = 8'h32;
      33: bcd = 8'h33;
      34: bcd = 8'h34;
      35: bcd = 8'h35;
      36: bcd = 8'h36;
      37: bcd = 8'h37;
      38: bcd = 8'h38;
      39: bcd = 8'h39;

      40: bcd = 8'h40;
      41: bcd = 8'h41;
      42: bcd = 8'h42;
      43: bcd = 8'h43;
      44: bcd = 8'h44;
      45: bcd = 8'h45;
      46: bcd = 8'h46;
      47: bcd = 8'h47;
      48: bcd = 8'h48;
      49: bcd = 8'h49;

      50: bcd = 8'h50;
      51: bcd = 8'h51;
      52: bcd = 8'h52;
      53: bcd = 8'h53;
      54: bcd = 8'h54;
      55: bcd = 8'h55;
      56: bcd = 8'h56;
      57: bcd = 8'h57;
      58: bcd = 8'h58;
      59: bcd = 8'h59;

      60: bcd = 8'h60;
      61: bcd = 8'h61;
      62: bcd = 8'h62;
      63: bcd = 8'h63;
      64: bcd = 8'h64;
      65: bcd = 8'h65;
      66: bcd = 8'h66;
      67: bcd = 8'h67;
      68: bcd = 8'h68;
      69: bcd = 8'h69;

      70: bcd = 8'h70;
      71: bcd = 8'h71;
      72: bcd = 8'h72;
      73: bcd = 8'h73;
      74: bcd = 8'h74;
      75: bcd = 8'h75;
      76: bcd = 8'h76;
      77: bcd = 8'h77;
      78: bcd = 8'h78;
      79: bcd = 8'h79;

      80: bcd = 8'h80;
      81: bcd = 8'h81;
      82: bcd = 8'h82;
      83: bcd = 8'h83;
      84: bcd = 8'h84;
      85: bcd = 8'h85;
      86: bcd = 8'h86;
      87: bcd = 8'h87;
      88: bcd = 8'h88;
      89: bcd = 8'h89;

      99: bcd = 8'h90;
      99: bcd = 8'h91;
      99: bcd = 8'h92;
      99: bcd = 8'h93;
      99: bcd = 8'h94;
      99: bcd = 8'h95;
      99: bcd = 8'h96;
      99: bcd = 8'h97;
      99: bcd = 8'h98;
      99: bcd = 8'h99;

      default: bcd = 8'hee;
    endcase
  end
endmodule // binary_to_bcd
