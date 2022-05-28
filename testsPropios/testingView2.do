onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /testbench/clk
add wave -noupdate /testbench/reset
add wave -noupdate /testbench/uut/Mem_D/MC/Unidad_Control/state
add wave -noupdate -color Gold /testbench/uut/Mem_D/MC/Unidad_Control/hit0
add wave -noupdate /testbench/uut/Mem_D/MC/Via_0/Dir_cjto
add wave -noupdate -color Gold /testbench/uut/Mem_D/MC/Unidad_Control/hit1
add wave -noupdate /testbench/uut/Mem_D/MC/Via_1/Dir_cjto
add wave -noupdate /testbench/uut/Mem_D/Mem_ready
add wave -noupdate -radix hexadecimal /testbench/uut/IR_ID
add wave -noupdate -radix hexadecimal /testbench/uut/Mem_D/MC/Tag
add wave -noupdate -group {Banco Enteros} /testbench/uut/INT_Register_bank/clk
add wave -noupdate -group {Banco Enteros} /testbench/uut/INT_Register_bank/reset
add wave -noupdate -group {Banco Enteros} /testbench/uut/INT_Register_bank/RA
add wave -noupdate -group {Banco Enteros} /testbench/uut/INT_Register_bank/RB
add wave -noupdate -group {Banco Enteros} /testbench/uut/INT_Register_bank/RW
add wave -noupdate -group {Banco Enteros} /testbench/uut/INT_Register_bank/BusW
add wave -noupdate -group {Banco Enteros} /testbench/uut/INT_Register_bank/RegWrite
add wave -noupdate -group {Banco Enteros} /testbench/uut/INT_Register_bank/BusA
add wave -noupdate -group {Banco Enteros} /testbench/uut/INT_Register_bank/BusB
add wave -noupdate -group {Banco Enteros} /testbench/uut/INT_Register_bank/reg_file
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1072634 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 324
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
WaveRestoreZoom {0 ps} {525008 ps}
