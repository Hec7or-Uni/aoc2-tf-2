onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /testbench_md_mas_mc/clk
add wave -noupdate -radix hexadecimal /testbench_md_mas_mc/reset
add wave -noupdate -radix hexadecimal /testbench_md_mas_mc/Mem_ready
add wave -noupdate -group UC_MC /testbench_md_mas_mc/uut/MC/Unidad_Control/RE
add wave -noupdate -group UC_MC /testbench_md_mas_mc/uut/MC/Unidad_Control/WE
add wave -noupdate -group UC_MC /testbench_md_mas_mc/uut/MC/Unidad_Control/hit0
add wave -noupdate -group UC_MC /testbench_md_mas_mc/uut/MC/Unidad_Control/hit1
add wave -noupdate -group UC_MC /testbench_md_mas_mc/uut/MC/Unidad_Control/via_2_rpl
add wave -noupdate -group UC_MC /testbench_md_mas_mc/uut/MC/Unidad_Control/addr_non_cacheable
add wave -noupdate -group UC_MC /testbench_md_mas_mc/uut/MC/MC_last_word
add wave -noupdate -group Bus /testbench_md_mas_mc/uut/controlador_MD/bus_Read
add wave -noupdate -group Bus /testbench_md_mas_mc/uut/controlador_MD/bus_Write
add wave -noupdate -group Bus /testbench_md_mas_mc/uut/controlador_MD/Bus_Frame
add wave -noupdate -group Bus /testbench_md_mas_mc/uut/controlador_MD/MD_Bus_DEVsel
add wave -noupdate -group Bus /testbench_md_mas_mc/uut/controlador_MD/MD_Bus_TRDY
add wave -noupdate -group Bus /testbench_md_mas_mc/uut/controlador_MD/bus_last_word
add wave -noupdate -group VIA0 -radix unsigned /testbench_md_mas_mc/uut/MC/Via_0/MC_data
add wave -noupdate -group VIA0 /testbench_md_mas_mc/uut/MC/Via_0/hit
add wave -noupdate -group VIA0 -radix unsigned /testbench_md_mas_mc/uut/MC/Via_0/Tag
add wave -noupdate -group VIA0 /testbench_md_mas_mc/uut/MC/Via_0/Dir_cjto
add wave -noupdate -group VIA0 /testbench_md_mas_mc/uut/MC/Via_0/Dir_word
add wave -noupdate -group VIA0 /testbench_md_mas_mc/uut/MC/Via_0/num_via
add wave -noupdate -group VIA0 -radix unsigned /testbench_md_mas_mc/uut/MC/Dout_via0
add wave -noupdate -group VIA1 /testbench_md_mas_mc/uut/MC/Via_1/hit
add wave -noupdate -group VIA1 -radix unsigned /testbench_md_mas_mc/uut/MC/Via_1/Tag
add wave -noupdate -group VIA1 /testbench_md_mas_mc/uut/MC/Via_1/Dir_cjto
add wave -noupdate -group VIA1 /testbench_md_mas_mc/uut/MC/Via_1/Dir_word
add wave -noupdate -group VIA1 /testbench_md_mas_mc/uut/MC/Via_1/num_via
add wave -noupdate -group VIA1 -radix unsigned /testbench_md_mas_mc/uut/MC/Dout_via1
add wave -noupdate -group VIA1 -radix unsigned /testbench_md_mas_mc/uut/MC/Via_1/MC_data
add wave -noupdate -radix hexadecimal /testbench_md_mas_mc/uut/MC/palabra_UC
add wave -noupdate -radix hexadecimal /testbench_md_mas_mc/uut/MC/mux_origen
add wave -noupdate -radix unsigned /testbench_md_mas_mc/uut/MC/Din
add wave -noupdate -radix unsigned /testbench_md_mas_mc/uut/MC/MC_Bus_Din
add wave -noupdate -radix unsigned /testbench_md_mas_mc/uut/MC/Dout
add wave -noupdate -group CACHE /testbench_md_mas_mc/uut/MC/dir_cjto
add wave -noupdate -group CACHE /testbench_md_mas_mc/uut/MC/dir_word
add wave -noupdate -group CACHE /testbench_md_mas_mc/uut/MC/RE
add wave -noupdate -group CACHE /testbench_md_mas_mc/uut/MC/WE
add wave -noupdate -group CACHE /testbench_md_mas_mc/uut/MC/WE_via0
add wave -noupdate -group CACHE /testbench_md_mas_mc/uut/MC/WE_via1
add wave -noupdate -group CACHE -radix unsigned /testbench_md_mas_mc/uut/MC/Tag
add wave -noupdate -group CACHE /testbench_md_mas_mc/uut/MC/Tags_WE_via0
add wave -noupdate -group CACHE /testbench_md_mas_mc/uut/MC/Tags_WE_via1
add wave -noupdate -group CACHE /testbench_md_mas_mc/uut/MC/mux_output
add wave -noupdate -group CACHE -radix unsigned /testbench_md_mas_mc/uut/MC/Dout
add wave -noupdate -group CACHE /testbench_md_mas_mc/uut/MC/ADDR
add wave -noupdate -group Arbitraje /testbench_md_mas_mc/uut/Arbitraje/bus_frame
add wave -noupdate -group Arbitraje /testbench_md_mas_mc/uut/Arbitraje/last_word
add wave -noupdate -group Arbitraje /testbench_md_mas_mc/uut/Arbitraje/Bus_TRDY
add wave -noupdate -group Arbitraje /testbench_md_mas_mc/uut/Arbitraje/Req0
add wave -noupdate -group Arbitraje /testbench_md_mas_mc/uut/Arbitraje/Req1
add wave -noupdate -group Arbitraje /testbench_md_mas_mc/uut/Arbitraje/Grant0
add wave -noupdate -group Arbitraje /testbench_md_mas_mc/uut/Arbitraje/Grant1
add wave -noupdate -radix hexadecimal /testbench_md_mas_mc/uut/MC/MC_send_data
add wave -noupdate -radix hexadecimal /testbench_md_mas_mc/uut/MC/via_2_rpl
add wave -noupdate -group Contadores /testbench_md_mas_mc/uut/MC/m_count
add wave -noupdate -group Contadores /testbench_md_mas_mc/uut/MC/w_count
add wave -noupdate -group {Salida Mips} -radix hexadecimal /testbench_md_mas_mc/uut/MC/ADDR
add wave -noupdate -group {Salida Mips} -radix hexadecimal /testbench_md_mas_mc/uut/MC/MC_send_data
add wave -noupdate -group {Salida Mips} -radix hexadecimal /testbench_md_mas_mc/uut/MC/MC_frame
add wave -noupdate -group {Salida Mips} -radix hexadecimal /testbench_md_mas_mc/uut/MC/MC_Bus_ADDR
add wave -noupdate -group {Salida Mips} -radix hexadecimal /testbench_md_mas_mc/uut/MC/MC_Bus_data_out
add wave -noupdate -group {Salida Mips} -radix hexadecimal /testbench_md_mas_mc/uut/MC/MC_bus_Rd_Wr
add wave -noupdate -group {Salida Mips} -radix hexadecimal /testbench_md_mas_mc/uut/MC/MC_Bus_Req
add wave -noupdate -group {Salida Mips} -radix hexadecimal /testbench_md_mas_mc/uut/MC/MC_last_word
add wave -noupdate /testbench_md_mas_mc/uut/MC/Unidad_Control/state
add wave -noupdate /testbench_md_mas_mc/uut/MC/Unidad_Control/next_state
add wave -noupdate /testbench_md_mas_mc/uut/controlador_MD/state
add wave -noupdate /testbench_md_mas_mc/uut/controlador_MD/next_state
add wave -noupdate -group MD -childformat {{/testbench_md_mas_mc/uut/controlador_MD/MD/RAM(18) -radix hexadecimal}} -expand -subitemconfig {/testbench_md_mas_mc/uut/controlador_MD/MD/RAM(18) {-height 15 -radix hexadecimal}} /testbench_md_mas_mc/uut/controlador_MD/MD/RAM
add wave -noupdate -group MD /testbench_md_mas_mc/uut/controlador_MD/MD/ADDR
add wave -noupdate -group MD /testbench_md_mas_mc/uut/controlador_MD/MD/Din
add wave -noupdate -group MD /testbench_md_mas_mc/uut/controlador_MD/MD/WE
add wave -noupdate -group MD /testbench_md_mas_mc/uut/controlador_MD/MD/RE
add wave -noupdate -group MD /testbench_md_mas_mc/uut/controlador_MD/MD/Dout
add wave -noupdate -group Scratch /testbench_md_mas_mc/uut/M_scratch/MD_scratch/CLK
add wave -noupdate -group Scratch -radix decimal /testbench_md_mas_mc/uut/M_scratch/MD_scratch/ADDR
add wave -noupdate -group Scratch /testbench_md_mas_mc/uut/M_scratch/MD_scratch/Din
add wave -noupdate -group Scratch /testbench_md_mas_mc/uut/M_scratch/MD_scratch/WE
add wave -noupdate -group Scratch /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RE
add wave -noupdate -group Scratch /testbench_md_mas_mc/uut/M_scratch/MD_scratch/enable
add wave -noupdate -group Scratch -radix unsigned /testbench_md_mas_mc/uut/M_scratch/MD_scratch/Dout
add wave -noupdate -group Scratch -radix unsigned -childformat {{/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(0) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(1) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(2) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(3) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(4) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(5) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(6) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(7) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(8) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(9) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(10) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(11) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(12) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(13) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(14) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(15) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(16) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(17) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(18) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(19) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(20) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(21) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(22) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(23) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(24) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(25) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(26) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(27) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(28) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(29) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(30) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(31) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(32) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(33) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(34) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(35) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(36) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(37) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(38) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(39) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(40) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(41) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(42) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(43) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(44) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(45) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(46) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(47) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(48) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(49) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(50) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(51) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(52) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(53) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(54) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(55) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(56) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(57) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(58) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(59) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(60) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(61) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(62) -radix unsigned} {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(63) -radix unsigned}} -subitemconfig {/testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(0) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(1) {-height 15 -radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(2) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(3) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(4) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(5) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(6) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(7) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(8) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(9) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(10) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(11) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(12) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(13) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(14) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(15) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(16) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(17) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(18) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(19) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(20) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(21) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(22) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(23) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(24) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(25) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(26) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(27) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(28) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(29) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(30) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(31) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(32) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(33) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(34) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(35) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(36) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(37) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(38) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(39) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(40) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(41) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(42) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(43) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(44) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(45) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(46) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(47) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(48) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(49) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(50) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(51) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(52) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(53) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(54) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(55) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(56) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(57) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(58) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(59) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(60) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(61) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(62) {-radix unsigned} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM(63) {-radix unsigned}} /testbench_md_mas_mc/uut/M_scratch/MD_scratch/RAM
add wave -noupdate -group Scratch /testbench_md_mas_mc/uut/M_scratch/MD_scratch/dir_7
add wave -noupdate -group {output reg scratch} -radix unsigned /testbench_md_mas_mc/uut/M_scratch/output_reg/Din
add wave -noupdate -group {output reg scratch} /testbench_md_mas_mc/uut/M_scratch/output_reg/clk
add wave -noupdate -group {output reg scratch} /testbench_md_mas_mc/uut/M_scratch/output_reg/reset
add wave -noupdate -group {output reg scratch} /testbench_md_mas_mc/uut/M_scratch/output_reg/load
add wave -noupdate -group {output reg scratch} -radix unsigned /testbench_md_mas_mc/uut/M_scratch/output_reg/Dout
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1087129 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 417
configure wave -valuecolwidth 71
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
WaveRestoreZoom {963228 ps} {1353468 ps}
