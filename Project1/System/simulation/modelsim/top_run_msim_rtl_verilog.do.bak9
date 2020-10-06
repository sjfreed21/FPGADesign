transcript on
if ![file isdirectory top_iputf_libs] {
	file mkdir top_iputf_libs
}

if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

###### Libraries for IPUTF cores 
###### End libraries for IPUTF cores 
###### MIF file copy and HDL compilation commands for IPUTF cores 


vlog "C:/Users/sjfre/Documents/FPGADesign/Project1/System/video_pll_sim/video_pll.vo"

vlog -vlog01compat -work work +incdir+C:/Users/sjfre/Documents/FPGADesign/Project1/Files {C:/Users/sjfre/Documents/FPGADesign/Project1/Files/vtc.v}
vlog -vlog01compat -work work +incdir+C:/Users/sjfre/Documents/FPGADesign/Project1/Files {C:/Users/sjfre/Documents/FPGADesign/Project1/Files/pg.v}
vlog -vlog01compat -work work +incdir+C:/Users/sjfre/Documents/FPGADesign/Project1/Files {C:/Users/sjfre/Documents/FPGADesign/Project1/Files/ff.v}
vlog -vlog01compat -work work +incdir+C:/Users/sjfre/Documents/FPGADesign/Project1/Files {C:/Users/sjfre/Documents/FPGADesign/Project1/Files/tb_top.v}
vlog -vlog01compat -work work +incdir+C:/Users/sjfre/Documents/FPGADesign/Project1/Files {C:/Users/sjfre/Documents/FPGADesign/Project1/Files/top.v}

vlog -vlog01compat -work work +incdir+C:/Users/sjfre/Documents/FPGADesign/Project1/System/../Files {C:/Users/sjfre/Documents/FPGADesign/Project1/System/../Files/tb_top.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  tb_top

add wave *
view structure
view signals
run -all
