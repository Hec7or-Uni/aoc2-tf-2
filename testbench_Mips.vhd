-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
   COMPONENT MIPs_segmentado is
      Port ( clk : in  STD_LOGIC;
      reset : in  STD_LOGIC;
      --Nuevo
         IO_input: in STD_LOGIC_VECTOR (31 downto 0);
            output : out  STD_LOGIC_VECTOR (31 downto 0));
   END COMPONENT;

   SIGNAL clk, reset :  std_logic;
   SIGNAL output, IO_input :  std_logic_vector(31 downto 0);
          
  -- Clock period definitions
   constant CLK_period : time := 10 ns;
   BEGIN
      IO_input <= x"00ABCDEF";

  -- Component Instantiation
   uut: MIPs_segmentado PORT MAP(clk => clk, reset => reset, IO_input => IO_input, output => output);

-- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;

 stim_proc: process
   begin		
      reset <= '1';
      wait for CLK_period*2;
		reset <= '0';
		wait for CLK_period*20;
		wait;
   end process;

  END;
