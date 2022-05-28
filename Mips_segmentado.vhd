----------------------------------------------------------------------------------
-- Description: Mips segmentado basado en el de clase. 
-- Ver características específicas en el guión de la práctica.
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MIPs_segmentado is
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
					 IO_input: in STD_LOGIC_VECTOR (31 downto 0);
			  output : out  STD_LOGIC_VECTOR (31 downto 0));
end MIPs_segmentado;

architecture Behavioral of MIPs_segmentado is
component reg32 is
    Port ( Din : in  STD_LOGIC_VECTOR (31 downto 0);
           clk : in  STD_LOGIC;
		   reset : in  STD_LOGIC;
           load : in  STD_LOGIC;
           Dout : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
---------------------------------------------------------------

component counter is
	Port ( clk	 : in  STD_LOGIC;
				 reset : in  STD_LOGIC;
				 count_enable : in  STD_LOGIC;
				 load : in  STD_LOGIC;
				 D_in	: in  STD_LOGIC_VECTOR (7 downto 0);
		 count : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

component adder32 is
    Port ( Din0 : in  STD_LOGIC_VECTOR (31 downto 0);
           Din1 : in  STD_LOGIC_VECTOR (31 downto 0);
           Dout : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component mux2_1 is
  Port (  DIn0 : in  STD_LOGIC_VECTOR (31 downto 0);
          DIn1 : in  STD_LOGIC_VECTOR (31 downto 0);
		   		ctrl : in  STD_LOGIC;
          Dout : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component MD_mas_MC is port (
	CLK : in std_logic;
	reset: in std_logic; 
	ADDR : in std_logic_vector (31 downto 0); --Dir solicitada por el Mips
	Din : in std_logic_vector (31 downto 0);--entrada de datos desde el Mips
	WE : in std_logic;		-- write enable	del MIPS
	RE : in std_logic;		-- read enable del MIPS	
	IO_input: in std_logic_vector (31 downto 0); --dato que viene de una entrada del sistema
	Mem_ready: out std_logic; -- indica si podemos hacer la operación solicitada en el ciclo actual
	Dout : out std_logic_vector (31 downto 0) --dato que se envía al Mips
		  ); 
end component;

component memoriaRAM_I is port (
		  CLK : in std_logic;
		  ADDR : in std_logic_vector (31 downto 0); --Dir 
          Din : in std_logic_vector (31 downto 0); --entrada de datos para el puerto de escritura
          WE : in std_logic;		-- write enable	
		  RE : in std_logic;		-- read enable		  
		  Dout : out std_logic_vector (31 downto 0));
end component;

component Banco_ID is
 Port (  IR_in : in  STD_LOGIC_VECTOR (31 downto 0); -- instrucción leida en IF
         PC4_in:  in  STD_LOGIC_VECTOR (31 downto 0); -- PC+4 sumado en IF
		 clk : in  STD_LOGIC;
		 reset : in  STD_LOGIC;
         load : in  STD_LOGIC;
         IR_ID : out  STD_LOGIC_VECTOR (31 downto 0); -- instrucción en la etapa ID
         PC4_ID:  out  STD_LOGIC_VECTOR (31 downto 0)); -- PC+4 en la etapa ID
end component;

COMPONENT BReg
    PORT(
         clk : IN  std_logic;
		 reset : in  STD_LOGIC;
         RA : IN  std_logic_vector(4 downto 0);
         RB : IN  std_logic_vector(4 downto 0);
         RW : IN  std_logic_vector(4 downto 0);
         BusW : IN  std_logic_vector(31 downto 0);
         RegWrite : IN  std_logic;
         BusA : OUT  std_logic_vector(31 downto 0);
         BusB : OUT  std_logic_vector(31 downto 0)
        );
END COMPONENT;

component Ext_signo is
    Port ( inm : in  STD_LOGIC_VECTOR (15 downto 0);
           inm_ext : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component two_bits_shifter is
    Port ( Din : in  STD_LOGIC_VECTOR (31 downto 0);
           Dout : out  STD_LOGIC_VECTOR (31 downto 0));
end component;

component UC is
Port ( IR_op_code : in  STD_LOGIC_VECTOR (5 downto 0);
	Branch : out  STD_LOGIC;
	RegDst : out  STD_LOGIC;
	ALUSrc : out  STD_LOGIC;
	MemWrite : out  STD_LOGIC;
	MemRead : out  STD_LOGIC;
	MemtoReg : out  STD_LOGIC;
	RegWrite : out  STD_LOGIC;
-- Nuevas señales para FP
	FP_add	: out  STD_LOGIC; -- indica que es una suma en FP
	FP_mem	: out  STD_LOGIC; -- indica que es el acceso a memoria debe usar el banco de registros FP
	RegWrite_FP : out  STD_LOGIC -- indica que la instrucción escribe en el banco de registros  
-- Fin Nuevas señales
           );
end component;

-- Unidad de detección de riesgos
-- Completar el componente UD de los fuentes, instanciarlo y conectarlo donde se indica en la etapa ID
component UD is
Port (   	Reg_Rs_ID: in  STD_LOGIC_VECTOR (4 downto 0); --registros Rs y Rt en la etapa ID
		  	Reg_Rt_ID	: in  STD_LOGIC_VECTOR (4 downto 0);
			MemRead_EX	: in std_logic; -- info sobre la instr en EX (destino, si lee de memoria y si escribe en registro)
			RegWrite_EX	: in std_logic;
			RW_EX		: in  STD_LOGIC_VECTOR (4 downto 0);
			RegWrite_Mem	: in std_logic; -- informacion sobre la instruccion en Mem (destino y si escribe en registro)
			RW_Mem		: in  STD_LOGIC_VECTOR (4 downto 0);
			IR_op_code	: in  STD_LOGIC_VECTOR (5 downto 0); -- c'odigo de operaci'on de la instrucci'on en IEEE
			PCSrc		: in std_logic; -- 1 cuando se produce un salto 0 en caso contrario
			FP_add_EX	: in std_logic; -- Indica si la instrucci'on en EX es un ADDFP
			FP_done : in std_logic;
			RegWrite_FP_EX	: in std_logic; -- Indica que la instrucción en EX escribe en el banco de registros de FP
			RW_FP_EX	: in  STD_LOGIC_VECTOR (4 downto 0); --Indica en qué registro del banco FP escribe
			RegWrite_FP_MEM : in std_logic; -- Indica que la instrucción en EX escribe en el banco de registros de FP
			RW_FP_MEM	: in  STD_LOGIC_VECTOR (4 downto 0); --Indica en qué registro del banco FP escribe
			Kill_IF		: out  STD_LOGIC; -- Indica que la instrucci'on en IF no debe ejecutarse (fallo en la predicci'on de salto tomado)
			Parar_ID	: out  STD_LOGIC; -- Indica que las etapas ID y previas deben parar
			Parar_EX_FP	: out  STD_LOGIC); -- Indica que las etapas EX y previas deben parar
end component;

COMPONENT Banco_EX
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         load : IN  std_logic;
         busA : IN  std_logic_vector(31 downto 0);
         busB : IN  std_logic_vector(31 downto 0);
         busA_EX : OUT  std_logic_vector(31 downto 0);
         busB_EX : OUT  std_logic_vector(31 downto 0);
	 inm_ext: IN  std_logic_vector(31 downto 0);
	 inm_ext_EX: OUT  std_logic_vector(31 downto 0);
         RegDst_ID : IN  std_logic;
         ALUSrc_ID : IN  std_logic;
         MemWrite_ID : IN  std_logic;
         MemRead_ID : IN  std_logic;
         MemtoReg_ID : IN  std_logic;
         RegWrite_ID : IN  std_logic;
         RegDst_EX : OUT  std_logic;
         ALUSrc_EX : OUT  std_logic;
         MemWrite_EX : OUT  std_logic;
         MemRead_EX : OUT  std_logic;
         MemtoReg_EX : OUT  std_logic;
         RegWrite_EX : OUT  std_logic;
	 Reg_Rs_ID : in  std_logic_vector(4 downto 0);
	 Reg_Rs_EX : out std_logic_vector(4 downto 0);
	 ALUctrl_ID: in STD_LOGIC_VECTOR (2 downto 0);
	 ALUctrl_EX: out STD_LOGIC_VECTOR (2 downto 0);
         Reg_Rt_ID : IN  std_logic_vector(4 downto 0);
         Reg_Rd_ID : IN  std_logic_vector(4 downto 0);
         Reg_Rt_EX : OUT  std_logic_vector(4 downto 0);
         Reg_Rd_EX : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;

    COMPONENT Banco_EX_FP is
    Port ( clk : in  STD_LOGIC;
	   reset : in  STD_LOGIC;
	   load : in  STD_LOGIC;
	   RegWrite_FP_ID : in  STD_LOGIC;
           RegWrite_FP_EX : out  STD_LOGIC;
	   FP_add_ID : in  STD_LOGIC;
           FP_add_EX : out  STD_LOGIC;
           FP_mem_ID : in  STD_LOGIC;
           FP_mem_EX : out  STD_LOGIC;
           busA_FP : in  std_logic_vector(31 downto 0);
           busB_FP : in  std_logic_vector(31 downto 0);
           busA_FP_EX : OUT  std_logic_vector(31 downto 0);
           busB_FP_EX : OUT  std_logic_vector(31 downto 0);
	   Reg_Rd_FP_ID: IN  std_logic_vector(4 downto 0);
	   Reg_Rd_FP_EX: OUT  std_logic_vector(4 downto 0);
           Reg_Rs_FP_ID : IN  std_logic_vector(4 downto 0);
           Reg_Rs_FP_EX : OUT  std_logic_vector(4 downto 0);
           Reg_Rt_FP_ID : IN  std_logic_vector(4 downto 0);
           Reg_Rt_FP_EX : OUT  std_logic_vector(4 downto 0);
           RegDst_ID : in  STD_LOGIC;
           RegDst_FP_EX : out  STD_LOGIC);
 	END COMPONENT;
    
-- Unidad de anticipación de operandos
-- Completar el componente proporcionado en los fuentes
    COMPONENT UA
	Port(
		Reg_Rs_EX: IN  std_logic_vector(4 downto 0); 
		Reg_Rt_EX: IN  std_logic_vector(4 downto 0);
		RegWrite_MEM: IN std_logic;
		RW_MEM: IN  std_logic_vector(4 downto 0);
		RegWrite_WB: IN std_logic;
		RW_WB: IN  std_logic_vector(4 downto 0);
		MUX_ctrl_A: out std_logic_vector(1 downto 0);
		MUX_ctrl_B: out std_logic_vector(1 downto 0)
		);
	end component;
-- Mux 4 a 1
	component mux4_1_32bits is
	Port (  DIn0 : in  STD_LOGIC_VECTOR (31 downto 0);
		DIn1 : in  STD_LOGIC_VECTOR (31 downto 0);
		DIn2 : in  STD_LOGIC_VECTOR (31 downto 0);
		DIn3 : in  STD_LOGIC_VECTOR (31 downto 0);
		ctrl : in  std_logic_vector(1 downto 0);
		Dout : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	COMPONENT ALU
    PORT(
         DA : IN  std_logic_vector(31 downto 0);
         DB : IN  std_logic_vector(31 downto 0);
         ALUctrl : IN  std_logic_vector(2 downto 0);
         Dout : OUT  std_logic_vector(31 downto 0)
               );
    END COMPONENT;
	-- Sumador en FP
	component FP_ADD_SUB is
	port(A      : in  std_logic_vector(31 downto 0);
       B      : in  std_logic_vector(31 downto 0);
       clk    : in  std_logic;
       reset  : in  std_logic;
       go     : in  std_logic;
       done   : out std_logic;
       result : out std_logic_vector(31 downto 0)
       );
	end component;
	 
	component mux2_5bits is
	Port ( DIn0 : in  STD_LOGIC_VECTOR (4 downto 0);
		   DIn1 : in  STD_LOGIC_VECTOR (4 downto 0);
		   ctrl : in  STD_LOGIC;
		   Dout : out  STD_LOGIC_VECTOR (4 downto 0));
	end component;
	
COMPONENT Banco_MEM
    PORT(
         ALU_out_EX : IN  std_logic_vector(31 downto 0);
         ALU_out_MEM : OUT  std_logic_vector(31 downto 0);
         clk : IN  std_logic;
         reset : IN  std_logic;
         load : IN  std_logic;
         MemWrite_EX : IN  std_logic;
         MemRead_EX : IN  std_logic;
         MemtoReg_EX : IN  std_logic;
         RegWrite_EX : IN  std_logic;
         MemWrite_MEM : OUT  std_logic;
         MemRead_MEM : OUT  std_logic;
         MemtoReg_MEM : OUT  std_logic;
         RegWrite_MEM : OUT  std_logic;
         BusB_EX : IN  std_logic_vector(31 downto 0);
         BusB_MEM : OUT  std_logic_vector(31 downto 0);
         RW_EX : IN  std_logic_vector(4 downto 0);
         RW_MEM : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
 
    COMPONENT Banco_MEM_FP is
	Port ( 	ADD_FP_out : in  STD_LOGIC_VECTOR (31 downto 0); 
		ADD_FP_out_MEM : out  STD_LOGIC_VECTOR (31 downto 0); -- instrucción leida en IF
        	clk : in  STD_LOGIC;
		reset : in  STD_LOGIC;
         	load : in  STD_LOGIC;
		RegWrite_FP_EX : in  STD_LOGIC;
		RegWrite_FP_MEM : out  STD_LOGIC;
		FP_mem_EX: in  STD_LOGIC;
		FP_mem_MEM : out  STD_LOGIC;
		RW_FP_EX: in  STD_LOGIC_VECTOR (4 downto 0); 
		RW_FP_MEM : out  STD_LOGIC_VECTOR (4 downto 0) 
	); -- PC+4 en la etapa ID
     END COMPONENT;
    COMPONENT Banco_WB
    PORT(
         ALU_out_MEM : IN  std_logic_vector(31 downto 0);
         ALU_out_WB : OUT  std_logic_vector(31 downto 0);
         MEM_out : IN  std_logic_vector(31 downto 0);
         MDR : OUT  std_logic_vector(31 downto 0);
         clk : IN  std_logic;
         reset : IN  std_logic;
         load : IN  std_logic;
         MemtoReg_MEM : IN  std_logic;
         RegWrite_MEM : IN  std_logic;
         MemtoReg_WB : OUT  std_logic;
         RegWrite_WB : OUT  std_logic;
         RW_MEM : IN  std_logic_vector(4 downto 0);
         RW_WB : OUT  std_logic_vector(4 downto 0)
        );
    END COMPONENT; 
    COMPONENT Banco_WB_FP is
	Port ( 	ADD_FP_out_MEM : in  STD_LOGIC_VECTOR (31 downto 0); 
		ADD_FP_out_WB : out  STD_LOGIC_VECTOR (31 downto 0); 
		clk : in  STD_LOGIC;
		reset : in  STD_LOGIC;
        	load : in  STD_LOGIC;
		RegWrite_FP_MEM : in  STD_LOGIC;
		RegWrite_FP_WB : out  STD_LOGIC;
            	FP_mem_MEM : in  STD_LOGIC;
            	FP_mem_WB : out  STD_LOGIC;
            	RW_FP_MEM : in  STD_LOGIC_VECTOR (4 downto 0);
            	RW_FP_WB : out  STD_LOGIC_VECTOR (4 downto 0));
     END COMPONENT; 
CONSTANT ARIT : STD_LOGIC_VECTOR (5 downto 0) := "000001";
signal load_PC, PCSrc, RegWrite, RegWrite_ID, RegWrite_EX, RegWrite_MEM, RegWrite_WB, Z, Branch, RegDst_ID, RegDst_EX, ALUSrc_ID, ALUSrc_EX: std_logic;
signal MemtoReg_ID, MemtoReg_EX, MemtoReg_MEM, MemtoReg_WB, MemWrite, MemWrite_ID, MemWrite_EX, MemWrite_MEM, MemRead, MemRead_ID, MemRead_EX, MemRead_MEM: std_logic;
signal PC_in, PC_out, four, PC4, Dirsalto_ID, IR_in, IR_ID, PC4_ID, inm_ext_EX, ALU_Src_out, cero : std_logic_vector(31 downto 0);
signal BusW, BusA, BusB, BusA_EX, BusB_EX, BusB_MEM, inm_ext, inm_ext_x4, ALU_out_EX, ALU_out_MEM, ALU_out_WB, Mem_out, MDR : std_logic_vector(31 downto 0);
signal RW_EX, RW_MEM, RW_WB, Reg_Rs_ID, Reg_Rs_EX, Reg_Rt_ID, Reg_Rd_EX, Reg_Rt_EX: std_logic_vector(4 downto 0);
signal ALUctrl_ID, ALUctrl_EX : std_logic_vector(2 downto 0);
signal ALU_INT_out, Mux_A_out, Mux_B_out: std_logic_vector(31 downto 0);
signal IR_op_code: std_logic_vector(5 downto 0);
signal MUX_ctrl_A, MUX_ctrl_B : std_logic_vector(1 downto 0);
signal RegWrite_FP, RegWrite_FP_ID, RegWrite_FP_EX, RegWrite_FP_EX_mux_out, RegWrite_FP_MEM, RegWrite_FP_WB : std_logic;
signal FP_add, FP_add_ID, FP_add_EX, FP_done: std_logic;
signal FP_mem, FP_mem_EX, FP_mem_MEM, FP_mem_WB : std_logic;
signal RegDst_FP_EX : std_logic;
signal RW_FP_EX, RW_FP_MEM, RW_FP_WB : std_logic_vector(4 downto 0);
signal BusW_FP: std_logic_vector(31 downto 0);
signal busA_FP, busA_FP_EX, busB_FP, busB_FP_EX, BusB_4_MD: std_logic_vector(31 downto 0);
signal Reg_Rd_FP_EX, Reg_Rs_FP_EX, Reg_Rt_FP_EX : std_logic_vector(4 downto 0);
signal MUX_ctrl_A_FP, MUX_ctrl_B_FP : std_logic_vector(1 downto 0);
signal Mux_A_out_FP, Mux_B_out_FP: std_logic_vector(31 downto 0);
signal ADD_FP_out, ADD_FP_out_MEM, ADD_FP_out_WB: std_logic_vector(31 downto 0);
signal load_EX_FP : std_logic;
signal Kill_IF, Parar_ID, Parar_EX_FP, load_IF_ID, PEFP, PID, KIF : std_logic;
signal IR_KILL: std_logic_vector(31 downto 0);
signal paradas_control, paradas_datos, paradas_fp, ciclos: std_logic_vector(7 downto 0);
signal Mem_ready, load_mem_ready : std_logic;
signal paradas_mem: std_logic_vector(7 downto 0); 
signal inc_paradas_mem : std_logic;

begin
count_clk: counter port map (clk => clk, reset => reset, count_enable => '1', load => '0', D_in => "00000000", count => ciclos);

KIF 	<= '1' when Kill_IF = '1' and parar_ID = '0' and parar_EX_FP = '0' and Mem_ready = '1' else '0';
PID 	<= '1' when parar_ID = '1' and parar_EX_FP = '0' and Mem_ready = '1' else '0';
PEFP	<= '1' when parar_EX_FP = '1' and Mem_ready = '1' else '0';
inc_paradas_mem  <= '1' when Mem_ready = '0' else '0';

count_paradas: counter port map (clk => clk, reset => reset, count_enable => KIF, load => '0', D_in => "00000000", count => paradas_control);
count_datos: counter port map (clk => clk, reset => reset, count_enable => PID, load => '0', D_in => "00000000", count => paradas_datos);
count_fp: counter port map (clk => clk, reset => reset, count_enable => PEFP, load => '0', D_in => "00000000", count => paradas_fp);
cont_paradas_memoria: counter port map (clk => clk, reset => reset, count_enable => inc_paradas_mem , load=> '0', D_in => "00000000", count => paradas_mem);

pc: reg32 port map ( Din => PC_in, clk => clk, reset => reset, load => load_PC, Dout => PC_out );
------------------------------------------------------------------------------------
-- vale '1' porque en esta versión base el procesador no para nunca
-- Si queremos detener una instrucción en la etapa fetch habrá que ponerlo a '0'
-- load_PC <= '1';
load_PC <= '0' when Parar_ID = '1' or Parar_EX_FP = '1' or Mem_ready = '0' else '1';
------------------------------------------------------------------------------------
four <= "00000000000000000000000000000100";
cero <= "00000000000000000000000000000000";

adder_4: adder32 port map (Din0 => PC_out, Din1 => four, Dout => PC4);
------------------------------------------------------------------------------------
-- Este mux elige entre PC+4 o la Dirección de salto generada en ID
muxPC: mux2_1 port map (Din0 => PC4, DIn1 => Dirsalto_ID, ctrl => PCSrc, Dout => PC_in);
------------------------------------------------------------------------------------
-- si leemos una instrucción equivocada tenemos que modificar el código de operación antes de almacenarlo en memoria
Mem_I: memoriaRAM_I PORT MAP (CLK => CLK, ADDR => PC_out, Din => cero, WE => '0', RE => '1', Dout => IR_in);
------------------------------------------------------------------------------------
-- el load vale uno porque este procesador no para nunca. Si queremos que una instrucción no avance habrá que poner el load a '0'
load_IF_ID <= '0' when Parar_ID = '1' or Parar_EX_FP = '1' or Mem_ready ='0' else '1';
IR_KILL <= cero when Kill_IF = '1' else IR_in;
Banco_IF_ID: Banco_ID port map ( IR_in => IR_KILL, PC4_in => PC4, clk => clk, reset => reset, load => load_IF_ID, IR_ID => IR_ID, PC4_ID => PC4_ID);
------------------------------------------Etapa ID-------------------------------------------------------------------
Reg_Rs_ID <= IR_ID(25 downto 21);
Reg_Rt_ID <= IR_ID(20 downto 16);
--------------------------------------------------
-- BANCOS DE REGISTROS
-- En esta versión del MIPS hay dos bancos de registros. Los dos con las mismas entradas en los puertos de lectura, pero distintas en el de escritura.
-- Banco de registros de enteros
INT_Register_bank: BReg PORT MAP (clk => clk, reset => reset, RA => Reg_Rs_ID, RB => Reg_Rt_ID, RW => RW_WB, BusW => BusW, RegWrite => RegWrite_WB, BusA => BusA, BusB => BusB);
-- Banco de registros de FP									
FP_Register_bank: BReg PORT MAP (clk => clk, reset => reset, RA => Reg_Rs_ID, RB => Reg_Rt_ID, RW => RW_FP_WB, BusW => BusW_FP, RegWrite => RegWrite_FP_WB, BusA => BusA_FP, BusB => BusB_FP);

-------------------------------------------------------------------------------------
sign_ext: Ext_signo port map (inm => IR_ID(15 downto 0), inm_ext => inm_ext);

two_bits_shift: two_bits_shifter	port map (Din => inm_ext, Dout => inm_ext_x4);

adder_dir: adder32 port map (Din0 => inm_ext_x4, Din1 => PC4_ID, Dout => Dirsalto_ID);

Z <= '1' when (busA=busB) else '0';

------------------------Unidad de detención-----------------------------------
-- Debéis completar la unidad y conectarla con el resto del procesador para que sus órdenes se cumplan.
-- Ahora mismo sus salidas son 0 y no se usan en ningún sitio
-- No cambiar los nombres de las señales que se proporcionan!
-------------------------------------------------------------------------------------
-- instanciar aquí la UD y conectarla
Unidad_det: UD port map (Reg_Rs_ID => Reg_Rs_ID, Reg_Rt_ID => Reg_Rt_ID, MemRead_EX => MemRead_EX, RegWrite_EX => RegWrite_EX, RW_EX => RW_EX, 
												RegWrite_Mem => RegWrite_Mem, RW_Mem => RW_Mem, IR_op_code => IR_op_code, PCSrc => PCSrc, FP_add_EX => FP_add_EX, FP_done => FP_done,
												RegWrite_FP_EX => RegWrite_FP_EX, RW_FP_EX => RW_FP_EX, RegWrite_FP_MEM => RegWrite_FP_MEM, RW_FP_MEM => RW_FP_MEM, 
												Kill_IF => Kill_IF, Parar_ID => Parar_ID, Parar_EX_FP => Parar_EX_FP);
-------------------------------------------------------------------------------------
IR_op_code <= IR_ID(31 downto 26);

UC_seg: UC port map (IR_op_code => IR_op_code, Branch => Branch, RegDst => RegDst_ID,  ALUSrc => ALUSrc_ID, MemWrite => MemWrite,  
							MemRead => MemRead, MemtoReg => MemtoReg_ID, RegWrite => RegWrite, 
							--Señales nuevas
							FP_add => FP_add, FP_mem => FP_mem, RegWrite_FP => RegWrite_FP);

-- Si nos paran en ID enviamos ceros en las señales que escriben, empiezan la suma de fp o activan la memoria
-- Pero este MIPS base no para: tenéis que cambiarlo al completar y conectar la UD.
-- Os dejamos una pista en este código

RegWrite_FP_ID	<= '0' when Parar_ID = '1' or Parar_EX_FP = '1' else RegWrite_FP;
RegWrite_ID			<= '0' when Parar_ID = '1' or Parar_EX_FP = '1' else RegWrite;
FP_add_ID				<= '0' when Parar_ID = '1' or Parar_EX_FP = '1' else FP_add;
MemWrite_ID			<= '0' when Parar_ID = '1' or Parar_EX_FP = '1' else MemWrite;
MemRead_ID			<= '0' when Parar_ID = '1' or Parar_EX_FP = '1' else MemRead;
-------------------------------------------------------------------------------------
-- Si es una instrucción de salto y se activa la señal Z se carga la dirección de salto, sino PC+4 	
PCSrc <= Branch AND Z; 				
-- si la operación es aritmética (es decir: IR_op_code= "000001") miro el campo funct
-- como sólo hay 4 operaciones en la alu, basta con los bits menos significativos del campo func de la instrucción	
-- si no es aritmética le damos el valor de la suma (000)
ALUctrl_ID <= IR_ID(2 downto 0) when IR_op_code= ARIT else "000";

-- Banco ID/EX parte de enteros
Banco_ID_EX: Banco_EX PORT MAP ( 	clk => clk, reset => reset, load => load_EX_FP, busA => busA, busB => busB, busA_EX => busA_EX, busB_EX => busB_EX,
					RegDst_ID => RegDst_ID, ALUSrc_ID => ALUSrc_ID, MemWrite_ID => MemWrite_ID, MemRead_ID => MemRead_ID,
					MemtoReg_ID => MemtoReg_ID, RegWrite_ID => RegWrite_ID, RegDst_EX => RegDst_EX, ALUSrc_EX => ALUSrc_EX,
					MemWrite_EX => MemWrite_EX, MemRead_EX => MemRead_EX, MemtoReg_EX => MemtoReg_EX, RegWrite_EX => RegWrite_EX,
					-- Nuevo (para la anticipación)
					Reg_Rs_ID => Reg_Rs_ID,
					Reg_Rs_EX => Reg_Rs_EX,
					--Fin nuevo
					ALUctrl_ID => ALUctrl_ID, ALUctrl_EX => ALUctrl_EX, inm_ext => inm_ext, inm_ext_EX=> inm_ext_EX,
					Reg_Rt_ID => IR_ID(20 downto 16), Reg_Rd_ID => IR_ID(15 downto 11), Reg_Rt_EX => Reg_Rt_EX, Reg_Rd_EX => Reg_Rd_EX);		
-- Extensión banco ID/EX para FP
Banco_ID_EX_FP: Banco_EX_FP PORT MAP ( 	clk => clk, reset => reset, load => load_EX_FP, 
					RegWrite_FP_ID => RegWrite_FP_ID, RegWrite_FP_EX => RegWrite_FP_EX,
					FP_add_ID => FP_add_ID, FP_add_EX => FP_add_EX,
					FP_mem_ID => FP_mem, FP_mem_EX => FP_mem_EX,
					busA_FP => busA_FP, busB_FP => busB_FP, busA_FP_EX => busA_FP_EX, busB_FP_EX => busB_FP_EX,	
					Reg_Rd_FP_ID => IR_ID(15 downto 11), Reg_Rd_FP_EX => Reg_Rd_FP_EX,
					Reg_Rs_FP_ID => Reg_Rs_ID, Reg_Rs_FP_EX => Reg_Rs_FP_EX,
					Reg_Rt_FP_ID => IR_ID(20 downto 16), Reg_Rt_FP_EX => Reg_Rt_FP_EX,
					RegDst_ID => RegDst_ID, RegDst_FP_EX => RegDst_FP_EX);		

load_EX_FP <= '0' when Parar_EX_FP = '1' or Mem_ready = '0' else '1';
------------------------------------------Etapa EX-------------------------------------------------------------------
---------------------------------------------------------------------------------
-- Unidad de anticipación de enteros incompleta. Ahora mismo selecciona siempre la entrada 0
-- Entradas: Reg_Rs_EX, Reg_Rt_EX, RegWrite_MEM, RW_MEM, RegWrite_WB, RW_WB
-- Salidas: MUX_ctrl_A, MUX_ctrl_B

Unidad_Ant_INT: UA port map (	Reg_Rs_EX => Reg_Rs_EX, Reg_Rt_EX => Reg_Rt_EX, RegWrite_MEM => RegWrite_MEM, RW_MEM => RW_MEM,
							RegWrite_WB => RegWrite_WB, RW_WB => RW_WB, MUX_ctrl_A => MUX_ctrl_A, MUX_ctrl_B => MUX_ctrl_B);
-- Muxes para la anticipación
Mux_A: mux4_1_32bits port map  ( DIn0 => BusA_EX, DIn1 => ALU_out_MEM, DIn2 => busW, DIn3 => cero, ctrl => MUX_ctrl_A, Dout => Mux_A_out);
Mux_B: mux4_1_32bits port map  ( DIn0 => BusB_EX, DIn1 => ALU_out_MEM, DIn2 => busW, DIn3 => cero, ctrl => MUX_ctrl_B, Dout => Mux_B_out);

----------------------------------------------------------------------------------
---------------------------------------------------------------------------------
-- EN esta versión no hay Unidad de anticipación de FPs
-- Hay que detener en sus riesgos
----------------------------------------------------------------------------------


muxALU_src: mux2_1 port map (Din0 => Mux_B_out, DIn1 => inm_ext_EX, ctrl => ALUSrc_EX, Dout => ALU_Src_out);

ALU_MIPs: ALU PORT MAP ( DA => Mux_A_out, DB => ALU_Src_out, ALUctrl => ALUctrl_EX, Dout => ALU_out_EX);

-- Sumador FP. El número de ciclos que necesita es variable en función de los operandos. 
-- FP_add_EX indica al sumador que debe realizar una suma en FP. Cuando termina activa la señal done. 
-- La salida sólo dura un ciclo. 
-- A y B no pueden cambiar durante la operación

ADD_FP: FP_ADD_SUB port map (A => busA_FP_EX,B => busB_FP_EX, clk => clk, reset => reset, go => FP_add_EX, done => FP_done, result => ADD_FP_out);

-- la siguiente línea es un mux que elige entre el registro B de INT y el de FP
BusB_4_MD <= busB_FP_EX when (FP_mem_EX='1') else Mux_B_out;

mux_dst: mux2_5bits port map (Din0 => Reg_Rt_EX, DIn1 => Reg_Rd_EX, ctrl => RegDst_EX, Dout => RW_EX);
--mux_dst_FP
mux_dst_FP: mux2_5bits port map (Din0 => Reg_Rt_FP_EX, DIn1 => Reg_Rd_FP_EX, ctrl => RegDst_FP_EX, Dout => RW_FP_EX);


Banco_EX_MEM: Banco_MEM PORT MAP ( ALU_out_EX => ALU_out_EX, ALU_out_MEM => ALU_out_MEM, clk => clk, reset => reset, load => load_mem_ready, MemWrite_EX => MemWrite_EX,
		MemRead_EX => MemRead_EX, MemtoReg_EX => MemtoReg_EX, RegWrite_EX => RegWrite_EX, MemWrite_MEM => MemWrite_MEM, MemRead_MEM => MemRead_MEM,
		MemtoReg_MEM => MemtoReg_MEM, RegWrite_MEM => RegWrite_MEM, 
	-- Si metemos cortos lo que hay que guardar aquí no es el registro B, sino la salida de la red de cortos
	-- Además hay dos RBs, hay que elegir el que toque con el mux que usa FP_mem
	BusB_EX => BusB_4_MD,
	BusB_MEM => BusB_MEM, RW_EX => RW_EX, RW_MEM => RW_MEM);
												
--Extensión para instrucciones de FP

Banco_EX_FP_MEM: Banco_MEM_FP PORT MAP ( 	ADD_FP_out => ADD_FP_out, ADD_FP_out_MEM => ADD_FP_out_MEM, clk => clk, reset => reset, load => load_mem_ready, 
						RegWrite_FP_EX => RegWrite_FP_EX_mux_out, RegWrite_FP_MEM => RegWrite_FP_MEM, 
						FP_mem_EX => FP_mem_EX, FP_mem_MEM => FP_mem_MEM,
						RW_FP_EX => RW_FP_EX, RW_FP_MEM => RW_FP_MEM);

RegWrite_FP_EX_mux_out <= '0' when Parar_EX_FP = '1' else RegWrite_FP_EX;
------------------------------------------Etapa MEM-------------------------------------------------------------------

Mem_D: MD_mas_MC PORT MAP (CLK => CLK, ADDR => ALU_out_MEM, Din => BusB_MEM, WE => MemWrite_MEM, RE => MemRead_MEM, reset => reset, IO_input => IO_input, Mem_ready => Mem_ready, Dout => Mem_out);


Banco_MEM_WB: Banco_WB PORT MAP ( ALU_out_MEM => ALU_out_MEM, ALU_out_WB => ALU_out_WB, Mem_out => Mem_out, MDR => MDR, clk => clk, reset => reset, 
				load => load_mem_ready, 
				MemtoReg_MEM => MemtoReg_MEM, RegWrite_MEM => RegWrite_MEM, MemtoReg_WB => MemtoReg_WB, RegWrite_WB => RegWrite_WB, 
				RW_MEM => RW_MEM, RW_WB => RW_WB );

--
Banco_MEM_WB_FP: Banco_WB_FP PORT MAP ( 	ADD_FP_out_MEM	=> ADD_FP_out_MEM, 
						ADD_FP_out_WB	=> ADD_FP_out_WB, 
						clk => clk, reset => reset, load => load_mem_ready, 
						RegWrite_FP_MEM => RegWrite_FP_MEM, 
						RegWrite_FP_WB => RegWrite_FP_WB,
						FP_mem_MEM => FP_mem_MEM, 
						FP_mem_WB => FP_mem_WB, 
						RW_FP_MEM => RW_FP_MEM, 
						RW_FP_WB => RW_FP_WB);

load_mem_ready <= Mem_ready;

------------------------------------------Etapa WB-------------------------------------------------------------------

mux_busW: mux2_1 port map (Din0 => ALU_out_WB, DIn1 => MDR, ctrl => MemtoReg_WB, Dout => busW);
-- Mux MemtoReg para el banco FP
mux_busW_FP: mux2_1 port map (Din0 => ADD_FP_out_WB, DIn1 => MDR, ctrl => FP_mem_WB, Dout => busW_FP);

-----------
-- output no se usa para nada. Está puesto para que el sistema tenga alguna salida al exterior.
output <= IR_ID;
end Behavioral;

