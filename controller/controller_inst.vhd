	component controller is
		port (
			clk_clk                                                        : in    std_logic                     := 'X';             -- clk
			pio_0_external_connection_export                               : out   std_logic;                                        -- export
			reset_reset_n                                                  : in    std_logic                     := 'X';             -- reset_n
			w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_addr  : out   std_logic_vector(12 downto 0);                    -- sdram_addr
			w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_ba    : out   std_logic_vector(1 downto 0);                     -- sdram_ba
			w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_cas_n : out   std_logic;                                        -- sdram_cas_n
			w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_cke   : out   std_logic;                                        -- sdram_cke
			w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_cs_n  : out   std_logic;                                        -- sdram_cs_n
			w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_dq    : inout std_logic_vector(15 downto 0) := (others => 'X'); -- sdram_dq
			w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_dqm   : out   std_logic_vector(1 downto 0);                     -- sdram_dqm
			w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_ras_n : out   std_logic;                                        -- sdram_ras_n
			w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_we_n  : out   std_logic                                         -- sdram_we_n
		);
	end component controller;

	u0 : component controller
		port map (
			clk_clk                                                        => CONNECTED_TO_clk_clk,                                                        --                                                clk.clk
			pio_0_external_connection_export                               => CONNECTED_TO_pio_0_external_connection_export,                               --                          pio_0_external_connection.export
			reset_reset_n                                                  => CONNECTED_TO_reset_reset_n,                                                  --                                              reset.reset_n
			w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_addr  => CONNECTED_TO_w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_addr,  -- w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end.sdram_addr
			w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_ba    => CONNECTED_TO_w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_ba,    --                                                   .sdram_ba
			w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_cas_n => CONNECTED_TO_w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_cas_n, --                                                   .sdram_cas_n
			w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_cke   => CONNECTED_TO_w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_cke,   --                                                   .sdram_cke
			w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_cs_n  => CONNECTED_TO_w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_cs_n,  --                                                   .sdram_cs_n
			w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_dq    => CONNECTED_TO_w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_dq,    --                                                   .sdram_dq
			w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_dqm   => CONNECTED_TO_w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_dqm,   --                                                   .sdram_dqm
			w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_ras_n => CONNECTED_TO_w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_ras_n, --                                                   .sdram_ras_n
			w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_we_n  => CONNECTED_TO_w9825g6kh_sdramcontroller_100mhz_cl3_0_conduit_end_sdram_we_n   --                                                   .sdram_we_n
		);

