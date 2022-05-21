----------------------------------------------------------------------------------
-- Autor: Hector Toral
-- ASM:
-- [0, 1, s(i-2), s(i-1), s(i), n]
-- Data ----------
-- lw r1 #4  r0;	cte = 1
-- lw r2 #8  r0; 	s[i-2] <- 0
-- lw r3 #12 r0;  s[i-1] <- 1
-- lw r5 #4  r0;	i
-- lw r6 #20 r0; 	n, fn de la serie fibonacci
-- Loop ----------
-- add r4 r3  r2; 	s[i] = s[i-1] + s[i-2]
-- add r5 r5  r1; 	i++
-- sw  r4 #12 r0; 	s(i-1) <- s(i)
-- sw  r3 #8  r0;		s(i-2) <- s(i-1)
-- lw  r3 #12 r0;		
-- lw  r2 #8  r0;
-- beq r5 r6  #1;		break
-- beq r0 r0  #-8;	go to loop
-- sw r4 #16  r0;		s(i) en mem = numero de fibonacci en pos n.
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity memoriaRAM_I is port (
		  CLK : in std_logic;
		  ADDR : in std_logic_vector (31 downto 0); --Dir 
        Din : in std_logic_vector (31 downto 0);--entrada de datos para el puerto de escritura
        WE : in std_logic;		-- write enable	
		  RE : in std_logic;		-- read enable		  
		  Dout : out std_logic_vector (31 downto 0));
end memoriaRAM_I;

architecture Behavioral of memoriaRAM_I is
type RamType is array(0 to 127) of std_logic_vector(31 downto 0);
signal RAM : RamType := (
		X"08010004", X"08020008", X"0803000c", X"08050004", X"08060014", X"04622000", X"04a12800", X"0c04000c", 
		X"0c030008", X"08020008", X"0803000c", X"10a60001", X"1000fff8", X"0c040010", X"00000000", X"00000000", 
		X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", 
		X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000",
		X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", 
		X"00000000", X"00000000",	X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000",
		X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", 
		X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000",
		X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000",
		X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000",
		X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000",
		X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000",
		X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000",
		X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000",
		X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000",
		X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000", X"00000000");
signal dir_7:  std_logic_vector(6 downto 0); 
begin
 
 dir_7 <= ADDR(8 downto 2);
 process (CLK)
    begin
        if (CLK'event and CLK = '1') then
            if (WE = '1') then -- solo se escribe si WE vale 1
                RAM(conv_integer(dir_7)) <= Din;
            end if;
        end if;
    end process;

    Dout <= RAM(conv_integer(dir_7)) when (RE='1') else "00000000000000000000000000000000"; --solo se lee si RE vale 1

end Behavioral;


