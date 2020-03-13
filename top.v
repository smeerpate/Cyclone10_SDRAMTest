module top

(
   // Input Ports
   input CLOCK_50,
   input RESET_N,
   output USER_LED,
   output [7:0]   SMG_Data,
   output [2:0]   Scan_Sig,
   input USER_PB,
   // DRAM connections.
   output [12:0]  DRAM_ADDR,
   output [1:0]   DRAM_BA,
   output         DRAM_CAS_N,
   output         DRAM_CKE,
   output         DRAM_CS_N,
   inout  [15:0]  DRAM_DQ,
   output [1:0]   DRAM_DQM,
   output         DRAM_RAS_N,
   output         DRAM_WE_N,
   output         DRAM_CLK
);

wire clk150;
wire clk150_g;

/*
De sdram controller moet elke rij van elke bank gerefreshed hebben in 64ms.
Dus 8192 (=2^13) refresh cycli in (max) 64ms. Dat is één refreshcyclus elke 7.8125µs.
Als we nu veilighedshalve 50ms nemen dan komt dat op één refreshcyclus elke 6.1µs.
*/
   controller u0 (
      .clk_clk                                                          (clk150_g),
      .w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_addr    (DRAM_ADDR),
      .w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_ba      (DRAM_BA),
      .w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_cas_n   (DRAM_CAS_N),
      .w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_cke     (DRAM_CKE),
      .w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_cs_n    (DRAM_CS_N),
      .w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_dq      (DRAM_DQ),
      .w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_dqm     (DRAM_DQM),
      .w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_ras_n   (DRAM_RAS_N),
      .w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_we_n    (DRAM_WE_N),
      .pio_0_external_connection_export                                 (USER_LED),
      .reset_reset_n                                                    (USER_PB)
   );
   

// Warning (15064): PLL "pll0:pll0_inst|altpll:altpll_component|pll0_altpll:auto_generated|pll1" output port clk[0] feeds output pin "DRAM_CLK~output" via non-dedicated routing -- jitter performance depends on switching rate of other design elements. Use PLL dedicated clock outputs to ensure jitter performance
// misschien moet ik hier een aparte uitgang nemen voor de SRAM
pll0  pll0_inst (
   .inclk0 ( CLOCK_50 ),
   .c0 ( clk150 ),
   .c1 (DRAM_CLK) // DRAM clock is shifted 5ns from clk150.
   );
   
c10_clkctrl c10_clkctrl_inst (
      .inclk  (clk150),
      .outclk (clk150_g)
   );
   
smg_interface smg_interface_inst(
      .CLK( CLOCK_50 ),
      .RSTn( RESET_N ),
      .Number_Sig( USER_PB ? 12'h025 : 12'h000 ),
      .SMG_Data( SMG_Data ),
      .Scan_Sig( Scan_Sig )
   );

endmodule
