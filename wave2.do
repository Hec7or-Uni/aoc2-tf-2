onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench_md_mas_mc/clk
add wave -noupdate /testbench_md_mas_mc/reset
add wave -noupdate /testbench_md_mas_mc/Mem_ready
add wave -noupdate -group UC_MC /testbench_md_mas_mc/uut/MC/Unidad_Control/RE
add wave -noupdate -group UC_MC /testbench_md_mas_mc/uut/MC/Unidad_Control/WE
add wave -noupdate -group UC_MC /testbench_md_mas_mc/uut/MC/Unidad_Control/hit0
add wave -noupdate -group UC_MC /testbench_md_mas_mc/uut/MC/Unidad_Control/hit1
add wave -noupdate -group UC_MC /testbench_md_mas_mc/uut/MC/Unidad_Control/via_2_rpl
add wave -noupdate -group UC_MC /testbench_md_mas_mc/uut/MC/Unidad_Control/addr_non_cacheable
add wave -noupdate -group Bus /testbench_md_mas_mc/uut/controlador_MD/bus_Read
add wave -noupdate -group Bus /testbench_md_mas_mc/uut/controlador_MD/bus_Write
add wave -noupdate -group Bus /testbench_md_mas_mc/uut/controlador_MD/Bus_Frame
add wave -noupdate -group Bus /testbench_md_mas_mc/uut/controlador_MD/MD_Bus_DEVsel
add wave -noupdate -group Bus /testbench_md_mas_mc/uut/controlador_MD/MD_Bus_TRDY
add wave -noupdate -group Bus /testbench_md_mas_mc/uut/controlador_MD/bus_last_word
add wave -noupdate -group VIA0 /testbench_md_mas_mc/uut/MC/Via_0/hit
add wave -noupdate -group VIA0 /testbench_md_mas_mc/uut/MC/Via_0/Tag
add wave -noupdate -group VIA0 /testbench_md_mas_mc/uut/MC/Via_0/Dir_cjto
add wave -noupdate -group VIA0 /testbench_md_mas_mc/uut/MC/Via_0/Dir_word
add wave -noupdate -group VIA0 /testbench_md_mas_mc/uut/MC/Via_0/num_via
add wave -noupdate -group VIA0 /testbench_md_mas_mc/uut/MC/Dout_via0
add wave -noupdate -group VIA1 /testbench_md_mas_mc/uut/MC/Via_1/hit
add wave -noupdate -group VIA1 /testbench_md_mas_mc/uut/MC/Via_1/Tag
add wave -noupdate -group VIA1 /testbench_md_mas_mc/uut/MC/Via_1/Dir_cjto
add wave -noupdate -group VIA1 /testbench_md_mas_mc/uut/MC/Via_1/Dir_word
add wave -noupdate -group VIA1 /testbench_md_mas_mc/uut/MC/Via_1/num_via
add wave -noupdate -group VIA1 /testbench_md_mas_mc/uut/MC/Dout_via1
add wave -noupdate /testbench_md_mas_mc/uut/MC/palabra_UC
add wave -noupdate /testbench_md_mas_mc/uut/MC/mux_origen
add wave -noupdate /testbench_md_mas_mc/uut/MC/Din
add wave -noupdate /testbench_md_mas_mc/uut/MC/MC_Bus_Din
add wave -noupdate /testbench_md_mas_mc/uut/MC/Dout
add wave -noupdate -group CACHE /testbench_md_mas_mc/uut/MC/dir_cjto
add wave -noupdate -group CACHE /testbench_md_mas_mc/uut/MC/dir_word
add wave -noupdate -group CACHE /testbench_md_mas_mc/uut/MC/RE
add wave -noupdate -group CACHE /testbench_md_mas_mc/uut/MC/WE
add wave -noupdate -group CACHE /testbench_md_mas_mc/uut/MC/WE_via0
add wave -noupdate -group CACHE /testbench_md_mas_mc/uut/MC/WE_via1
add wave -noupdate -group CACHE /testbench_md_mas_mc/uut/MC/Tag
add wave -noupdate -group CACHE /testbench_md_mas_mc/uut/MC/Tags_WE_via0
add wave -noupdate -group CACHE /testbench_md_mas_mc/uut/MC/Tags_WE_via1
add wave -noupdate -group CACHE /testbench_md_mas_mc/uut/MC/mux_output
add wave -noupdate -group Arbitraje /testbench_md_mas_mc/uut/Arbitraje/bus_frame
add wave -noupdate -group Arbitraje /testbench_md_mas_mc/uut/Arbitraje/last_word
add wave -noupdate -group Arbitraje /testbench_md_mas_mc/uut/Arbitraje/Bus_TRDY
add wave -noupdate -group Arbitraje /testbench_md_mas_mc/uut/Arbitraje/Req0
add wave -noupdate -group Arbitraje /testbench_md_mas_mc/uut/Arbitraje/Req1
add wave -noupdate -group Arbitraje /testbench_md_mas_mc/uut/Arbitraje/Grant0
add wave -noupdate -group Arbitraje /testbench_md_mas_mc/uut/Arbitraje/Grant1
add wave -noupdate /testbench_md_mas_mc/uut/MC/MC_send_data
add wave -noupdate /testbench_md_mas_mc/uut/MC/via_2_rpl
add wave -noupdate -group Contadores /testbench_md_mas_mc/uut/MC/m_count
add wave -noupdate -group Contadores /testbench_md_mas_mc/uut/MC/w_count
add wave -noupdate -expand -group {Salida Mips} -radix unsigned /testbench_md_mas_mc/uut/MC/ADDR
add wave -noupdate -expand -group {Salida Mips} /testbench_md_mas_mc/uut/MC/MC_send_data
add wave -noupdate -expand -group {Salida Mips} /testbench_md_mas_mc/uut/MC/MC_frame
add wave -noupdate -expand -group {Salida Mips} /testbench_md_mas_mc/uut/MC/MC_Bus_ADDR
add wave -noupdate -expand -group {Salida Mips} /testbench_md_mas_mc/uut/MC/MC_Bus_data_out
add wave -noupdate -expand -group {Salida Mips} /testbench_md_mas_mc/uut/MC/MC_bus_Rd_Wr
add wave -noupdate -expand -group {Salida Mips} /testbench_md_mas_mc/uut/MC/MC_Bus_Req
add wave -noupdate -expand -group {Salida Mips} /testbench_md_mas_mc/uut/MC/MC_last_word
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {8 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 306
configure wave -valuecolwidth 115
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
WaveRestoreZoom {0 ps} {94116 ps}
