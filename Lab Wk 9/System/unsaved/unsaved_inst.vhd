	component unsaved is
		port (
			clk_clk         : in  std_logic                     := 'X'; -- clk
			to_hex_readdata : out std_logic_vector(31 downto 0);        -- readdata
			reset_reset_n   : in  std_logic                     := 'X'  -- reset_n
		);
	end component unsaved;

	u0 : component unsaved
		port map (
			clk_clk         => CONNECTED_TO_clk_clk,         --    clk.clk
			to_hex_readdata => CONNECTED_TO_to_hex_readdata, -- to_hex.readdata
			reset_reset_n   => CONNECTED_TO_reset_reset_n    --  reset.reset_n
		);

