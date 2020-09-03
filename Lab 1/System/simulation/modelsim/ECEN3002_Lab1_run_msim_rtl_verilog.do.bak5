transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/sjfre/Documents/FPGADesign/Lab\ 1/Files {C:/Users/sjfre/Documents/FPGADesign/Lab 1/Files/ECEN3002_Lab1.v}

vlog -vlog01compat -work work +incdir+C:/Users/sjfre/Documents/FPGADesign/Lab\ 1/System/../Files {C:/Users/sjfre/Documents/FPGADesign/Lab 1/System/../Files/tb_counter.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  tb_counter

add wave *
view structure
view signals
run -all
