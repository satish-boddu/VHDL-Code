transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {N:/ECE124/Lab 3/LogicalStep_Lab3_top.vhd}
vcom -93 -work work {N:/ECE124/Lab 3/segment7_mux.vhd}
vcom -93 -work work {N:/ECE124/Lab 3/SevenSegment.vhd}
vcom -93 -work work {N:/ECE124/Lab 3/Compx1.vhd}
vcom -93 -work work {N:/ECE124/Lab 3/Compx4.vhd}

