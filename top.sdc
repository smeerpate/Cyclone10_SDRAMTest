create_clock -name CLOCK_50 -period 20.000 [get_ports {CLOCK_50}]
derive_pll_clocks -create_base_clocks
derive_clock_uncertainty
