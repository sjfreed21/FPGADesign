transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/sjfre/Documents/FPGADesign/Project\ 1/System {C:/Users/sjfre/Documents/FPGADesign/Project 1/System/video_pll.vo}
vlog -vlog01compat -work work +incdir+C:/Users/sjfre/Documents/FPGADesign/Project\ 1/Files {C:/Users/sjfre/Documents/FPGADesign/Project 1/Files/tb_top.v}
vlog -vlog01compat -work work +incdir+C:/Users/sjfre/Documents/FPGADesign/Project\ 1/Files {C:/Users/sjfre/Documents/FPGADesign/Project 1/Files/vtc.v}
vlog -vlog01compat -work work +incdir+C:/Users/sjfre/Documents/FPGADesign/Project\ 1/Files {C:/Users/sjfre/Documents/FPGADesign/Project 1/Files/pg.v}
vlog -vlog01compat -work work +incdir+C:/Users/sjfre/Documents/FPGADesign/Project\ 1/Files {C:/Users/sjfre/Documents/FPGADesign/Project 1/Files/ff.v}
vlib video_pll
vmap video_pll video_pll
vlog -vlog01compat -work video_pll +incdir+C:/Users/sjfre/Documents/FPGADesign/Project\ 1/System/video_pll {C:/Users/sjfre/Documents/FPGADesign/Project 1/System/video_pll/video_pll_0002.v}
vlog -vlog01compat -work work +incdir+C:/Users/sjfre/Documents/FPGADesign/Project\ 1/Files {C:/Users/sjfre/Documents/FPGADesign/Project 1/Files/top.v}

vlog -vlog01compat -work work +incdir+C:/Users/sjfre/Documents/FPGADesign/Project\ 1/System/../Files {C:/Users/sjfre/Documents/FPGADesign/Project 1/System/../Files/tb_top.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -L video_pll -voptargs="+acc"  tb_top

add wave *
view structure
view signals
run -all