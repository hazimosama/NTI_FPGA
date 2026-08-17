onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TOP_TB -color Red /Gray_to_7Segment_TOP_TB/gray_TB
add wave -noupdate -expand -group TOP_TB -color Cyan /Gray_to_7Segment_TOP_TB/binary_TB
add wave -noupdate -expand -group TOP_TB /Gray_to_7Segment_TOP_TB/segment_TB
add wave -noupdate -expand -group Gray_to_Binary_4bit -color Blue /Gray_to_7Segment_TOP_TB/DUT/U0/gray
add wave -noupdate -expand -group Gray_to_Binary_4bit /Gray_to_7Segment_TOP_TB/DUT/U0/binary
add wave -noupdate -expand -group Binary_to_7segment_TB -color Gold /Gray_to_7Segment_TOP_TB/DUT/U1/binary
add wave -noupdate -expand -group Binary_to_7segment_TB /Gray_to_7Segment_TOP_TB/DUT/U1/segment
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {22 ns} 0}
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {168 ns}
