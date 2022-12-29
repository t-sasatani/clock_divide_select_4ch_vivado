# Internal clock 100 MHz?
set_property    PACKAGE_PIN E3        [get_ports { i_clk    }]
set_property    IOSTANDARD  LVCMOS33   [get_ports { i_clk    }]

# LED
set_property    PACKAGE_PIN C17        [get_ports { o_chirp  }]
set_property    IOSTANDARD  LVCMOS33   [get_ports { o_chirp  }]