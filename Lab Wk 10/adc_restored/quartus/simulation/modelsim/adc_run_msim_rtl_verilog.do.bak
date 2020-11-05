transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+C:/Users/sjfre/Documents/FPGADesign/Lab\ Wk\ 10/adc_restored/quartus {C:/Users/sjfre/Documents/FPGADesign/Lab Wk 10/adc_restored/quartus/pll.vo}
vlib pll
vmap pll pll
vlog -sv -work pll +incdir+C:/Users/sjfre/Documents/FPGADesign/Lab\ Wk\ 10/adc_restored/quartus/pll {C:/Users/sjfre/Documents/FPGADesign/Lab Wk 10/adc_restored/quartus/pll/pll_0002.v}
vlog -sv -work work +incdir+C:/Users/sjfre/Documents/FPGADesign/Lab\ Wk\ 10/adc_restored/source {C:/Users/sjfre/Documents/FPGADesign/Lab Wk 10/adc_restored/source/seg7.sv}
vlog -sv -work work +incdir+C:/Users/sjfre/Documents/FPGADesign/Lab\ Wk\ 10/adc_restored/source {C:/Users/sjfre/Documents/FPGADesign/Lab Wk 10/adc_restored/source/bin2bcd.sv}
vlog -sv -work work +incdir+C:/Users/sjfre/Documents/FPGADesign/Lab\ Wk\ 10/adc_restored/source {C:/Users/sjfre/Documents/FPGADesign/Lab Wk 10/adc_restored/source/adc_control.sv}
vlog -sv -work work +incdir+C:/Users/sjfre/Documents/FPGADesign/Lab\ Wk\ 10/adc_restored/source {C:/Users/sjfre/Documents/FPGADesign/Lab Wk 10/adc_restored/source/adc.sv}

vlog -sv -work work +incdir+C:/Users/sjfre/Documents/FPGADesign/Lab\ Wk\ 10/adc_restored/quartus/../source {C:/Users/sjfre/Documents/FPGADesign/Lab Wk 10/adc_restored/quartus/../source/tb_adc.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -L pll -voptargs="+acc"  tb_adc

add wave *
view structure
view signals
run -all
