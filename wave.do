onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /testbench/clk
add wave -noupdate -color Red -radix hexadecimal /testbench/reset
add wave -noupdate -color Cyan -radix hexadecimal /testbench/uut/pc/Dout
add wave -noupdate -radix hexadecimal /testbench/uut/IR_in
add wave -noupdate -color Cyan -radix hexadecimal /testbench/uut/IR_ID
add wave -noupdate -radix hexadecimal /testbench/uut/PCSrc
add wave -noupdate -radix hexadecimal /testbench/uut/Branch
add wave -noupdate -group BR_INT /testbench/uut/INT_Register_bank/RA
add wave -noupdate -group BR_INT /testbench/uut/INT_Register_bank/RB
add wave -noupdate -group BR_INT /testbench/uut/INT_Register_bank/RW
add wave -noupdate -group BR_INT /testbench/uut/INT_Register_bank/BusW
add wave -noupdate -group BR_INT /testbench/uut/INT_Register_bank/RegWrite
add wave -noupdate -group BR_INT /testbench/uut/INT_Register_bank/BusA
add wave -noupdate -group BR_INT /testbench/uut/INT_Register_bank/BusB
add wave -noupdate -group BR_INT /testbench/uut/INT_Register_bank/reg_file
add wave -noupdate -group BR_FP /testbench/uut/FP_Register_bank/RA
add wave -noupdate -group BR_FP /testbench/uut/FP_Register_bank/RB
add wave -noupdate -group BR_FP /testbench/uut/FP_Register_bank/RW
add wave -noupdate -group BR_FP /testbench/uut/FP_Register_bank/BusW
add wave -noupdate -group BR_FP /testbench/uut/FP_Register_bank/RegWrite
add wave -noupdate -group BR_FP /testbench/uut/FP_Register_bank/BusA
add wave -noupdate -group BR_FP /testbench/uut/FP_Register_bank/BusB
add wave -noupdate -group BR_FP /testbench/uut/FP_Register_bank/reg_file
add wave -noupdate -group ADD_FP /testbench/uut/ADD_FP/A
add wave -noupdate -group ADD_FP /testbench/uut/ADD_FP/B
add wave -noupdate -group ADD_FP /testbench/uut/ADD_FP/result
add wave -noupdate -group ADD_FP /testbench/uut/ADD_FP/done
add wave -noupdate -group ALU_MIPS /testbench/uut/ALU_MIPs/DA
add wave -noupdate -group ALU_MIPS /testbench/uut/ALU_MIPs/DB
add wave -noupdate -group ALU_MIPS /testbench/uut/ALU_MIPs/Dout
add wave -noupdate -radix hexadecimal /testbench/uut/ALU_out_EX
add wave -noupdate -radix hexadecimal /testbench/uut/Mem_D/RAM
add wave -noupdate -group Anticipación -color Gold /testbench/uut/MUX_ctrl_A
add wave -noupdate -group Anticipación -color Gold /testbench/uut/MUX_ctrl_B
add wave -noupdate -group Anticipación -color Gold /testbench/uut/Mux_A_out
add wave -noupdate -group Anticipación -color Gold /testbench/uut/Mux_B_out
add wave -noupdate -group Detención -color Gold /testbench/uut/Kill_IF
add wave -noupdate -group Detención -color Gold /testbench/uut/Parar_ID
add wave -noupdate -group Detención -color Gold /testbench/uut/Parar_EX_FP
add wave -noupdate -group Contadores -color {Orange Red} /testbench/uut/paradas_control
add wave -noupdate -group Contadores -color {Orange Red} /testbench/uut/paradas_datos
add wave -noupdate -group Contadores -color {Orange Red} /testbench/uut/paradas_fp
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {275000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 191
configure wave -valuecolwidth 81
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
WaveRestoreZoom {0 ps} {787500 ps}
