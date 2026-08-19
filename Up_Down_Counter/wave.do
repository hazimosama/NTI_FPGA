onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TB -color Red -radix binary /UP_Down_Counter_TOP_TB/CLK_IN_TB
add wave -noupdate -expand -group TB -color {Cornflower Blue} -radix binary /UP_Down_Counter_TOP_TB/reset_n_TB
add wave -noupdate -expand -group TB -radix binary /UP_Down_Counter_TOP_TB/enable_TB
add wave -noupdate -expand -group TB -radix binary /UP_Down_Counter_TOP_TB/up_TB
add wave -noupdate -expand -group TB -color Cyan -radix binary /UP_Down_Counter_TOP_TB/segment_TB
add wave -noupdate -expand -group Clock_Divider -radix binary /UP_Down_Counter_TOP_TB/DUT/U0_Clock_Divider/CLK_OUT
add wave -noupdate -expand -group Clock_Divider -color Gold -radix binary /UP_Down_Counter_TOP_TB/DUT/U0_Clock_Divider/counter
add wave -noupdate -expand -group Binary_7Segment -color Magenta -radix binary /UP_Down_Counter_TOP_TB/DUT/U0_Binary_to_7Segment/binary
add wave -noupdate -expand -group Binary_7Segment -radix binary /UP_Down_Counter_TOP_TB/DUT/U0_Binary_to_7Segment/segment
add wave -noupdate -expand -group Up_Down_Counter -radix binary /UP_Down_Counter_TOP_TB/DUT/U0_Up_Down_Counter/enable
add wave -noupdate -expand -group Up_Down_Counter -radix binary /UP_Down_Counter_TOP_TB/DUT/U0_Up_Down_Counter/up
add wave -noupdate -expand -group Up_Down_Counter -radix binary /UP_Down_Counter_TOP_TB/DUT/U0_Up_Down_Counter/count
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {82643 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
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
WaveRestoreZoom {0 ps} {252 ns}
