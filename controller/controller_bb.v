
module controller (
	clk_clk,
	pio_0_external_connection_export,
	reset_reset_n,
	w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_addr,
	w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_ba,
	w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_cas_n,
	w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_cke,
	w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_cs_n,
	w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_dq,
	w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_dqm,
	w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_ras_n,
	w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_we_n);	

	input		clk_clk;
	output		pio_0_external_connection_export;
	input		reset_reset_n;
	output	[12:0]	w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_addr;
	output	[1:0]	w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_ba;
	output		w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_cas_n;
	output		w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_cke;
	output		w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_cs_n;
	inout	[15:0]	w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_dq;
	output	[1:0]	w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_dqm;
	output		w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_ras_n;
	output		w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_we_n;
endmodule
