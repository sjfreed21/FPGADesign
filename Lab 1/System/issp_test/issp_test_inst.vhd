	component issp_test is
		port (
			source : out std_logic_vector(1 downto 0);                    -- source
			probe  : in  std_logic_vector(1 downto 0) := (others => 'X')  -- probe
		);
	end component issp_test;

	u0 : component issp_test
		port map (
			source => CONNECTED_TO_source, -- sources.source
			probe  => CONNECTED_TO_probe   --  probes.probe
		);

