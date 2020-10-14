	component Lab7 is
		port (
			clk_clk           : in  std_logic                    := 'X';             -- clk
			pio_0_ex_export   : out std_logic_vector(7 downto 0);                    -- export
			pio_1_ex_in_port  : in  std_logic                    := 'X';             -- in_port
			pio_1_ex_out_port : out std_logic;                                       -- out_port
			pio_2_ex_export   : in  std_logic_vector(9 downto 0) := (others => 'X')  -- export
		);
	end component Lab7;

	u0 : component Lab7
		port map (
			clk_clk           => CONNECTED_TO_clk_clk,           --      clk.clk
			pio_0_ex_export   => CONNECTED_TO_pio_0_ex_export,   -- pio_0_ex.export
			pio_1_ex_in_port  => CONNECTED_TO_pio_1_ex_in_port,  -- pio_1_ex.in_port
			pio_1_ex_out_port => CONNECTED_TO_pio_1_ex_out_port, --         .out_port
			pio_2_ex_export   => CONNECTED_TO_pio_2_ex_export    -- pio_2_ex.export
		);

