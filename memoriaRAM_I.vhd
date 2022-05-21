----------------------------------------------------------------------------------
-- Autor: Hector Toral
-- ASM:
-- lw 	 r1  #4  r0;
-- lw 	 r2  #4  r0;
-- lwfp r3  #36 r0;
-- lwfp r4  #36 r0;
-- lw 	 r10 #8  r0;
-- lwfp r10 #40 r0;
-- add  r5 r1 r2;
-- add  r7 r5 r5;
-- add  r5 r1 r2;
-- lw	 r7 #0 r5;
-- add	 r5 r1 r2;
-- sw	 r10 #4 r5;
-- add  r5 r1 r2;
-- lwfp r7 #32 r5;
-- add  r5 r1 r2;
-- swfp r10 #36 r5;
-- add  r5 r1 r2;
-- nop;
-- add  r7 r5 r5;
-- add  r5 r1 r2;
-- nop;
-- lw   r7 #0 r5;
-- add  r5 r1 r2;
-- nop;	
-- sw   r10 #4 r5;
-- add  r5 r1 r2;
-- nop;
-- lwfp r7 #32 r5;
-- add  r5 r1 r2;
-- nop;
-- swfp r10 #36 r5;
-- lw   r5 #8 r0;
-- nop;
-- add	 r7 r5 r5;
-- lw   r5 #8 r0;	
-- nop;
-- lw   r7 #4 r5;
-- lw	 r5 #8 r0;
-- nop;
-- sw	 r10 #4 r5;
-- lw   r5 #8 r0;
-- nop;
-- lwfp r7 #32 r5;
-- lw	 r5 #8 r0;
-- nop;
-- swfp r10 #36 r5;
-- addfp r5 r3 r4;
-- lw 	 r5 #8 r0;
-- add	 r7 r5 r5;
-- lw   r5 #8 r0;
-- lw   r7 #0 r5;
-- lw	 r5 #8 r0;
-- sw	 r7 #4 r5;
-- lw	 r5 #8 r0;
-- beq	 r1 r5 #1;
-- lw   r5 #8 r0;
-- lwfp r7 #32 r5;
-- lw	 r5  #8 r0;
-- swfp r10 #36 r5;
-- lwfp  r5 #36 r0;
-- addfp r7 r5 r5;
-- lwfp  r5  #40 r0;
-- swfp  r10 #36 r5;
-- beq r1 r1 #1;
-- sw	r7 #4 r5;
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
		X"08010004", X"08020004", X"88030024", X"88040024", X"080a0008", X"880a0028", X"04222800", X"04a53800",
		X"04222800", X"08a70000", X"04222800", X"0caa0004", X"04222800", X"88a70020", X"04222800", X"8caa0024",
		X"04222800", X"00000000", X"04a53800", X"04222800", X"00000000", X"08a70000", X"04222800", X"00000000", 
		X"0caa0004", X"04222800", X"00000000", X"88a70020", X"04222800", X"00000000", X"8caa0024", X"08050008",
		X"00000000", X"04a53800", X"08050008", X"00000000", X"08a70004", X"08050008", X"00000000", X"0caa0004", 
		X"08050008", X"00000000",	X"88a70020", X"08050008", X"00000000", X"8caa0024", X"84642800", X"08050008", 
		X"04a53800", X"08050008", X"08a70000", X"08050008", X"0ca70004", X"08050008", X"10250001", X"08050008", 
		X"88a70020", X"08050008", X"8caa0024", X"88050024", X"84a53800", X"10210001", X"0ca70004", X"00000000",
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


