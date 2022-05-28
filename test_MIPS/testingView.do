onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/clk
add wave -noupdate /testbench/reset
add wave -noupdate /testbench/uut/Mem_D/MC/Unidad_Control/hit
add wave -noupdate /testbench/uut/Mem_ready
add wave -noupdate -group paradas -radix unsigned /testbench/uut/paradas_control
add wave -noupdate -group paradas -radix unsigned /testbench/uut/paradas_datos
add wave -noupdate -group paradas -radix unsigned /testbench/uut/paradas_fp
add wave -noupdate -group paradas -radix unsigned /testbench/uut/paradas_mem
add wave -noupdate -group Cache /testbench/uut/Mem_D/MC/Unidad_Control/RE
add wave -noupdate -group Cache /testbench/uut/Mem_D/MC/Unidad_Control/WE
add wave -noupdate -group Cache /testbench/uut/Mem_D/MC/Unidad_Control/hit0
add wave -noupdate -group Cache /testbench/uut/Mem_D/MC/Unidad_Control/hit1
add wave -noupdate -group Cache /testbench/uut/Mem_D/MC/Unidad_Control/addr_non_cacheable
add wave -noupdate -group Cache /testbench/uut/Mem_D/MC/Unidad_Control/bus_TRDY
add wave -noupdate -group Cache /testbench/uut/Mem_D/MC/Unidad_Control/via_2_rpl
add wave -noupdate -group Cache /testbench/uut/Mem_D/MC/Unidad_Control/last_word
add wave -noupdate /testbench/uut/ALU_MIPs/Dout
add wave -noupdate /testbench/uut/MDR
add wave -noupdate /testbench/uut/Mem_out
add wave -noupdate -color Cyan -radix hexadecimal /testbench/uut/IR_ID
add wave -noupdate -color Cyan /testbench/uut/Mem_D/MC/Unidad_Control/state
add wave -noupdate -radix unsigned /testbench/uut/IO_input
add wave -noupdate -group md /testbench/uut/Mem_D/controlador_MD/MD/CLK
add wave -noupdate -group md /testbench/uut/Mem_D/controlador_MD/MD/ADDR
add wave -noupdate -group md /testbench/uut/Mem_D/controlador_MD/MD/Din
add wave -noupdate -group md /testbench/uut/Mem_D/controlador_MD/MD/WE
add wave -noupdate -group md /testbench/uut/Mem_D/controlador_MD/MD/RE
add wave -noupdate -group md /testbench/uut/Mem_D/controlador_MD/MD/enable
add wave -noupdate -group md /testbench/uut/Mem_D/controlador_MD/MD/Dout
add wave -noupdate -group md -childformat {{/testbench/uut/Mem_D/controlador_MD/MD/RAM(2) -radix unsigned} {/testbench/uut/Mem_D/controlador_MD/MD/RAM(3) -radix unsigned} {/testbench/uut/Mem_D/controlador_MD/MD/RAM(4) -radix float32} {/testbench/uut/Mem_D/controlador_MD/MD/RAM(5) -radix float32} {/testbench/uut/Mem_D/controlador_MD/MD/RAM(6) -radix unsigned}} -subitemconfig {/testbench/uut/Mem_D/controlador_MD/MD/RAM(2) {-height 15 -radix unsigned} /testbench/uut/Mem_D/controlador_MD/MD/RAM(3) {-radix unsigned} /testbench/uut/Mem_D/controlador_MD/MD/RAM(4) {-radix float32} /testbench/uut/Mem_D/controlador_MD/MD/RAM(5) {-radix float32} /testbench/uut/Mem_D/controlador_MD/MD/RAM(6) {-radix unsigned}} /testbench/uut/Mem_D/controlador_MD/MD/RAM
add wave -noupdate -group md /testbench/uut/Mem_D/controlador_MD/MD/dir_7
add wave -noupdate -group para /testbench/uut/Kill_IF
add wave -noupdate -group para /testbench/uut/inc_paradas_mem
add wave -noupdate -group para /testbench/uut/Parar_ID
add wave -noupdate -group para /testbench/uut/Parar_EX_FP
add wave -noupdate -group via0 /testbench/uut/Mem_D/MC/Via_0/CLK
add wave -noupdate -group via0 /testbench/uut/Mem_D/MC/Via_0/reset
add wave -noupdate -group via0 -radix unsigned /testbench/uut/Mem_D/MC/Via_0/Dir_word
add wave -noupdate -group via0 -radix unsigned /testbench/uut/Mem_D/MC/Via_0/Dir_cjto
add wave -noupdate -group via0 -radix unsigned -childformat {{/testbench/uut/Mem_D/MC/Via_0/Tag(25) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Tag(24) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Tag(23) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Tag(22) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Tag(21) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Tag(20) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Tag(19) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Tag(18) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Tag(17) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Tag(16) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Tag(15) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Tag(14) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Tag(13) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Tag(12) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Tag(11) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Tag(10) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Tag(9) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Tag(8) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Tag(7) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Tag(6) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Tag(5) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Tag(4) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Tag(3) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Tag(2) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Tag(1) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Tag(0) -radix unsigned}} -subitemconfig {/testbench/uut/Mem_D/MC/Via_0/Tag(25) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Tag(24) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Tag(23) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Tag(22) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Tag(21) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Tag(20) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Tag(19) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Tag(18) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Tag(17) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Tag(16) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Tag(15) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Tag(14) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Tag(13) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Tag(12) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Tag(11) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Tag(10) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Tag(9) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Tag(8) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Tag(7) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Tag(6) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Tag(5) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Tag(4) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Tag(3) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Tag(2) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Tag(1) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Tag(0) {-radix unsigned}} /testbench/uut/Mem_D/MC/Via_0/Tag
add wave -noupdate -group via0 -radix unsigned -childformat {{/testbench/uut/Mem_D/MC/Via_0/Din(31) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(30) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(29) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(28) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(27) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(26) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(25) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(24) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(23) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(22) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(21) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(20) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(19) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(18) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(17) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(16) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(15) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(14) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(13) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(12) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(11) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(10) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(9) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(8) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(7) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(6) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(5) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(4) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(3) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(2) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(1) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/Din(0) -radix unsigned}} -subitemconfig {/testbench/uut/Mem_D/MC/Via_0/Din(31) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(30) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(29) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(28) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(27) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(26) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(25) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(24) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(23) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(22) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(21) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(20) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(19) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(18) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(17) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(16) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(15) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(14) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(13) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(12) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(11) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(10) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(9) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(8) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(7) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(6) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(5) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(4) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(3) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(2) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(1) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/Din(0) {-radix unsigned}} /testbench/uut/Mem_D/MC/Via_0/Din
add wave -noupdate -group via0 -radix unsigned /testbench/uut/Mem_D/MC/Via_0/RE
add wave -noupdate -group via0 -radix unsigned /testbench/uut/Mem_D/MC/Via_0/WE
add wave -noupdate -group via0 -radix unsigned /testbench/uut/Mem_D/MC/Via_0/Tags_WE
add wave -noupdate -group via0 -radix unsigned /testbench/uut/Mem_D/MC/Via_0/hit
add wave -noupdate -group via0 -radix unsigned /testbench/uut/Mem_D/MC/Via_0/Dout
add wave -noupdate -group via0 -radix unsigned -childformat {{/testbench/uut/Mem_D/MC/Via_0/MC_data(0) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_data(1) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_data(2) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_data(3) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_data(4) -radix float32} {/testbench/uut/Mem_D/MC/Via_0/MC_data(5) -radix float32} {/testbench/uut/Mem_D/MC/Via_0/MC_data(6) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_data(7) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_data(8) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_data(9) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_data(10) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_data(11) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_data(12) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_data(13) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_data(14) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_data(15) -radix unsigned}} -expand -subitemconfig {/testbench/uut/Mem_D/MC/Via_0/MC_data(0) {-height 15 -radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_data(1) {-height 15 -radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_data(2) {-height 15 -radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_data(3) {-height 15 -radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_data(4) {-height 15 -radix float32} /testbench/uut/Mem_D/MC/Via_0/MC_data(5) {-height 15 -radix float32} /testbench/uut/Mem_D/MC/Via_0/MC_data(6) {-height 15 -radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_data(7) {-height 15 -radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_data(8) {-height 15 -radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_data(9) {-height 15 -radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_data(10) {-height 15 -radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_data(11) {-height 15 -radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_data(12) {-height 15 -radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_data(13) {-height 15 -radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_data(14) {-height 15 -radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_data(15) {-height 15 -radix unsigned}} /testbench/uut/Mem_D/MC/Via_0/MC_data
add wave -noupdate -group via0 -radix unsigned -childformat {{/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0) -radix unsigned -childformat {{/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(25) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(24) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(23) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(22) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(21) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(20) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(19) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(18) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(17) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(16) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(15) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(14) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(13) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(12) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(11) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(10) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(9) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(8) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(7) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(6) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(5) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(4) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(3) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(2) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(1) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(0) -radix unsigned}}} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1) -radix unsigned -childformat {{/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(25) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(24) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(23) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(22) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(21) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(20) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(19) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(18) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(17) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(16) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(15) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(14) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(13) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(12) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(11) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(10) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(9) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(8) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(7) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(6) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(5) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(4) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(3) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(2) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(1) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(0) -radix unsigned}}} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(2) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(3) -radix unsigned}} -expand -subitemconfig {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0) {-radix unsigned -childformat {{/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(25) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(24) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(23) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(22) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(21) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(20) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(19) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(18) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(17) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(16) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(15) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(14) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(13) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(12) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(11) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(10) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(9) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(8) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(7) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(6) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(5) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(4) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(3) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(2) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(1) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(0) -radix unsigned}}} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(25) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(24) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(23) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(22) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(21) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(20) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(19) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(18) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(17) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(16) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(15) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(14) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(13) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(12) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(11) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(10) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(9) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(8) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(7) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(6) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(5) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(4) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(3) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(2) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(1) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(0)(0) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1) {-radix unsigned -childformat {{/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(25) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(24) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(23) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(22) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(21) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(20) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(19) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(18) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(17) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(16) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(15) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(14) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(13) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(12) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(11) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(10) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(9) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(8) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(7) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(6) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(5) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(4) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(3) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(2) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(1) -radix unsigned} {/testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(0) -radix unsigned}}} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(25) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(24) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(23) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(22) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(21) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(20) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(19) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(18) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(17) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(16) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(15) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(14) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(13) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(12) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(11) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(10) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(9) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(8) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(7) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(6) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(5) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(4) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(3) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(2) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(1) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(1)(0) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(2) {-radix unsigned} /testbench/uut/Mem_D/MC/Via_0/MC_Tags(3) {-radix unsigned}} /testbench/uut/Mem_D/MC/Via_0/MC_Tags
add wave -noupdate -group via0 -radix unsigned /testbench/uut/Mem_D/MC/Via_0/valid_bits_in
add wave -noupdate -group via0 -radix unsigned /testbench/uut/Mem_D/MC/Via_0/valid_bits_out
add wave -noupdate -group via0 -radix unsigned /testbench/uut/Mem_D/MC/Via_0/mask
add wave -noupdate -group via0 -radix unsigned /testbench/uut/Mem_D/MC/Via_0/valid_bit
add wave -noupdate -group via0 -radix unsigned /testbench/uut/Mem_D/MC/Via_0/Dir_MC
add wave -noupdate -group via0 -radix unsigned /testbench/uut/Mem_D/MC/Via_0/MC_Tags_Dout
add wave -noupdate -group via1 /testbench/uut/Mem_D/MC/Via_1/CLK
add wave -noupdate -group via1 /testbench/uut/Mem_D/MC/Via_1/reset
add wave -noupdate -group via1 /testbench/uut/Mem_D/MC/Via_1/Dir_word
add wave -noupdate -group via1 /testbench/uut/Mem_D/MC/Via_1/Dir_cjto
add wave -noupdate -group via1 /testbench/uut/Mem_D/MC/Via_1/Tag
add wave -noupdate -group via1 -radix float32 /testbench/uut/Mem_D/MC/Via_1/Din
add wave -noupdate -group via1 /testbench/uut/Mem_D/MC/Via_1/RE
add wave -noupdate -group via1 /testbench/uut/Mem_D/MC/Via_1/WE
add wave -noupdate -group via1 /testbench/uut/Mem_D/MC/Via_1/Tags_WE
add wave -noupdate -group via1 /testbench/uut/Mem_D/MC/Via_1/hit
add wave -noupdate -group via1 /testbench/uut/Mem_D/MC/Via_1/Dout
add wave -noupdate -group via1 -expand /testbench/uut/Mem_D/MC/Via_1/MC_data
add wave -noupdate -group via1 /testbench/uut/Mem_D/MC/Via_1/MC_Tags
add wave -noupdate -group via1 /testbench/uut/Mem_D/MC/Via_1/valid_bits_in
add wave -noupdate -group via1 /testbench/uut/Mem_D/MC/Via_1/valid_bits_out
add wave -noupdate -group via1 /testbench/uut/Mem_D/MC/Via_1/mask
add wave -noupdate -group via1 /testbench/uut/Mem_D/MC/Via_1/valid_bit
add wave -noupdate -group via1 /testbench/uut/Mem_D/MC/Via_1/Dir_MC
add wave -noupdate -group via1 -radix unsigned /testbench/uut/Mem_D/MC/Via_1/MC_Tags_Dout
add wave -noupdate -radix unsigned /testbench/uut/Mem_D/MC/Dout
add wave -noupdate -group {register fp} /testbench/uut/FP_Register_bank/clk
add wave -noupdate -group {register fp} /testbench/uut/FP_Register_bank/reset
add wave -noupdate -group {register fp} /testbench/uut/FP_Register_bank/RA
add wave -noupdate -group {register fp} /testbench/uut/FP_Register_bank/RB
add wave -noupdate -group {register fp} /testbench/uut/FP_Register_bank/RW
add wave -noupdate -group {register fp} -radix decimal /testbench/uut/FP_Register_bank/BusW
add wave -noupdate -group {register fp} /testbench/uut/FP_Register_bank/RegWrite
add wave -noupdate -group {register fp} /testbench/uut/FP_Register_bank/BusA
add wave -noupdate -group {register fp} /testbench/uut/FP_Register_bank/BusB
add wave -noupdate -group {register fp} -childformat {{/testbench/uut/FP_Register_bank/reg_file(1) -radix float32} {/testbench/uut/FP_Register_bank/reg_file(2) -radix float32}} -expand -subitemconfig {/testbench/uut/FP_Register_bank/reg_file(1) {-radix float32} /testbench/uut/FP_Register_bank/reg_file(2) {-radix float32}} /testbench/uut/FP_Register_bank/reg_file
add wave -noupdate -group {banco enteros} /testbench/uut/INT_Register_bank/clk
add wave -noupdate -group {banco enteros} /testbench/uut/INT_Register_bank/reset
add wave -noupdate -group {banco enteros} /testbench/uut/INT_Register_bank/RA
add wave -noupdate -group {banco enteros} /testbench/uut/INT_Register_bank/RB
add wave -noupdate -group {banco enteros} /testbench/uut/INT_Register_bank/RW
add wave -noupdate -group {banco enteros} /testbench/uut/INT_Register_bank/BusW
add wave -noupdate -group {banco enteros} /testbench/uut/INT_Register_bank/RegWrite
add wave -noupdate -group {banco enteros} /testbench/uut/INT_Register_bank/BusA
add wave -noupdate -group {banco enteros} /testbench/uut/INT_Register_bank/BusB
add wave -noupdate -group {banco enteros} -radix unsigned -childformat {{/testbench/uut/INT_Register_bank/reg_file(0) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(1) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(2) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(3) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(4) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(5) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(6) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(7) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(8) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(9) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(10) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(11) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(12) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(13) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(14) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(15) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(16) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(17) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(18) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(19) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(20) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(21) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(22) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(23) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(24) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(25) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(26) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(27) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(28) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(29) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(30) -radix unsigned} {/testbench/uut/INT_Register_bank/reg_file(31) -radix unsigned}} -expand -subitemconfig {/testbench/uut/INT_Register_bank/reg_file(0) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(1) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(2) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(3) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(4) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(5) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(6) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(7) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(8) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(9) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(10) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(11) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(12) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(13) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(14) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(15) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(16) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(17) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(18) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(19) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(20) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(21) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(22) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(23) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(24) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(25) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(26) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(27) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(28) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(29) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(30) {-height 15 -radix unsigned} /testbench/uut/INT_Register_bank/reg_file(31) {-height 15 -radix unsigned}} /testbench/uut/INT_Register_bank/reg_file
add wave -noupdate -group {bkreg mem wb} /testbench/uut/Banco_MEM_WB/ALU_out_MEM
add wave -noupdate -group {bkreg mem wb} /testbench/uut/Banco_MEM_WB/ALU_out_WB
add wave -noupdate -group {bkreg mem wb} /testbench/uut/Banco_MEM_WB/MEM_out
add wave -noupdate -group {bkreg mem wb} -radix unsigned /testbench/uut/Banco_MEM_WB/MDR
add wave -noupdate -group {bkreg mem wb} /testbench/uut/Banco_MEM_WB/clk
add wave -noupdate -group {bkreg mem wb} /testbench/uut/Banco_MEM_WB/reset
add wave -noupdate -group {bkreg mem wb} /testbench/uut/Banco_MEM_WB/load
add wave -noupdate -group {bkreg mem wb} /testbench/uut/Banco_MEM_WB/MemtoReg_MEM
add wave -noupdate -group {bkreg mem wb} /testbench/uut/Banco_MEM_WB/RegWrite_MEM
add wave -noupdate -group {bkreg mem wb} /testbench/uut/Banco_MEM_WB/MemtoReg_WB
add wave -noupdate -group {bkreg mem wb} /testbench/uut/Banco_MEM_WB/RegWrite_WB
add wave -noupdate -group {bkreg mem wb} /testbench/uut/Banco_MEM_WB/RW_MEM
add wave -noupdate -group {bkreg mem wb} /testbench/uut/Banco_MEM_WB/RW_WB
add wave -noupdate -group {banco ex mem} /testbench/uut/Banco_EX_MEM/ALU_out_EX
add wave -noupdate -group {banco ex mem} /testbench/uut/Banco_EX_MEM/ALU_out_MEM
add wave -noupdate -group {banco ex mem} /testbench/uut/Banco_EX_MEM/clk
add wave -noupdate -group {banco ex mem} /testbench/uut/Banco_EX_MEM/reset
add wave -noupdate -group {banco ex mem} /testbench/uut/Banco_EX_MEM/load
add wave -noupdate -group {banco ex mem} /testbench/uut/Banco_EX_MEM/MemWrite_EX
add wave -noupdate -group {banco ex mem} /testbench/uut/Banco_EX_MEM/MemRead_EX
add wave -noupdate -group {banco ex mem} /testbench/uut/Banco_EX_MEM/MemtoReg_EX
add wave -noupdate -group {banco ex mem} /testbench/uut/Banco_EX_MEM/RegWrite_EX
add wave -noupdate -group {banco ex mem} /testbench/uut/Banco_EX_MEM/MemWrite_MEM
add wave -noupdate -group {banco ex mem} /testbench/uut/Banco_EX_MEM/MemRead_MEM
add wave -noupdate -group {banco ex mem} /testbench/uut/Banco_EX_MEM/MemtoReg_MEM
add wave -noupdate -group {banco ex mem} /testbench/uut/Banco_EX_MEM/RegWrite_MEM
add wave -noupdate -group {banco ex mem} /testbench/uut/Banco_EX_MEM/BusB_EX
add wave -noupdate -group {banco ex mem} /testbench/uut/Banco_EX_MEM/BusB_MEM
add wave -noupdate -group {banco ex mem} /testbench/uut/Banco_EX_MEM/RW_EX
add wave -noupdate -group {banco ex mem} /testbench/uut/Banco_EX_MEM/RW_MEM
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1125224 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 164
configure wave -valuecolwidth 51
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {1084527 ps} {1167819 ps}