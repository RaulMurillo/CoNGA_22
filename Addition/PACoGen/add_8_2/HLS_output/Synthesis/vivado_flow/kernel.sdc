create_clock -name clk_virt -period 20
set_input_delay -clock clk_virt 5 [get_ports in1]
set_input_delay -clock clk_virt 5 [get_ports in2]
set_output_delay -clock clk_virt 5 [get_ports out]
