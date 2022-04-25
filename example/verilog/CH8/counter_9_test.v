`include "counter_9.v"

module counter_9_test ();
  reg clock = 1'b0;
  reg reset = 1'b0;
  wire [3:0] q;

  parameter PERIOD = 200;
  parameter real DUTY_CYCLE = 0.5;
  parameter OFFSET = 0;

  initial begin
    #OFFSET;
    forever
      begin
        clock = 1'b0;
        #(PERIOD - (PERIOD * DUTY_CYCLE)) clock = 1'b1;
        #(PERIOD * DUTY_CYCLE);
      end
  end

  counter_9 UUT (clock, reset, q);


  initial begin
    #2200;
    $finish;
  end

  initial begin
    #23;
    reset = 1;
  end
endmodule // counter_9_test
