onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/uut/Mem_D/MC/Unidad_Control/hit
add wave -noupdate /testbench/uut/Mem_ready
add wave -noupdate -group paradas -radix unsigned /testbench/uut/paradas_control
add wave -noupdate -group paradas -radix unsigned /testbench/uut/paradas_datos
add wave -noupdate -group paradas -radix unsigned /testbench/uut/paradas_fp
add wave -noupdate -group paradas -radix unsigned /testbench/uut/paradas_mem
add wave -noupdate -expand -group Cache /testbench/uut/Mem_D/MC/Unidad_Control/RE
add wave -noupdate -expand -group Cache /testbench/uut/Mem_D/MC/Unidad_Control/WE
add wave -noupdate -expand -group Cache /testbench/uut/Mem_D/MC/Unidad_Control/hit0
add wave -noupdate -expand -group Cache /testbench/uut/Mem_D/MC/Unidad_Control/hit1
add wave -noupdate -expand -group Cache /testbench/uut/Mem_D/MC/Unidad_Control/addr_non_cacheable
add wave -noupdate -expand -group Cache /testbench/uut/Mem_D/MC/Unidad_Control/bus_TRDY
add wave -noupdate -expand -group Cache /testbench/uut/Mem_D/MC/Unidad_Control/via_2_rpl
add wave -noupdate -expand -group Cache /testbench/uut/Mem_D/MC/Unidad_Control/last_word
add wave -noupdate /testbench/uut/ALU_MIPs/Dout
add wave -noupdate /testbench/uut/MDR
add wave -noupdate /testbench/uut/Mem_out
add wave -noupdate -radix hexadecimal /testbench/uut/IR_ID
add wave -noupdate /testbench/uut/Mem_D/MC/Unidad_Control/state
add wave -noupdate /testbench/uut/IO_input
add wave -noupdate -expand -group para /testbench/uut/Kill_IF
add wave -noupdate -expand -group para /testbench/uut/inc_paradas_mem
add wave -noupdate -expand -group para /testbench/uut/Parar_ID
add wave -noupdate -expand -group para /testbench/uut/Parar_EX_FP
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {54975 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 301
configure wave -valuecolwidth 100
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
WaveRestoreZoom {17799 ps} {104327 ps}
