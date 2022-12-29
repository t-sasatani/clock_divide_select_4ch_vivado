`timescale 10ns/1ns

module top_tb;
    //define signal
    reg     r_clk;
    reg     [34:0]   r_io_in;
    wire    w_out;
    //reg     [4:0]   r_clock_counter_a;
    //reg     [4:0]   r_clock_div_factor_a;

    //1MHz clock signal generation
    initial begin
        r_clk = 0;
        r_io_in = 35'b1_00000011_00000010_00000001_00000000_00;
    end
            
    always #(1)
        r_clk <= ~r_clk;
    always #(400)
        r_io_in[0] <= ~r_io_in[0];
    always #(200)
        r_io_in[1] <= ~r_io_in[1];
    //read out top module
    top top_inst(
        //.clock_div_factor_a (r_clock_div_factor_a),
        //.clock_counter_a    (r_clock_counter_a),
        .clk        (r_clk),
        .io_in      (r_io_in),
        .out        (w_out)
    );

endmodule