`timescale 100ns/1ns

module top_tb;
    //define signal
    reg     [26:0]   r_io_in;
    wire    w_out;
    //reg     [4:0]   r_clock_counter_a;
    //reg     [4:0]   r_clock_div_factor_a;

    //1MHz clock signal generation
    initial begin
        r_io_in = 26'b000011_000010_000111_000000_011;
    end
            
    always #(1)
        r_io_in[0] <= ~r_io_in[0];
    always #(400)
        r_io_in[1] <= ~r_io_in[1];
    always #(200)
        r_io_in[2] <= ~r_io_in[2];
    //read out top module
    top top_inst(
        //.clock_div_factor_a (r_clock_div_factor_a),
        //.clock_counter_a    (r_clock_counter_a),
        .io_in      (r_io_in),
        .out        (w_out)
    );

endmodule