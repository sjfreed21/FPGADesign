# Copyright (C) 2020  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and any partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details, at
# https://fpgasoftware.intel.com/eula.

# Quartus Prime Version 20.1.0 Build 711 06/05/2020 SJ Standard Edition
# File: C:\Users\sjfre\Documents\FPGADesign\Lab 1\System\ECEN3002_Lab1.tcl
# Generated on: Thu Sep 03 16:21:45 2020

package require ::quartus::project

set_location_assignment PIN_AC22 -to LEDR[9]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[9]
set_location_assignment PIN_AF14 -to CLOCK_50
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to CLOCK_50
set_location_assignment PIN_AJ4 -to KEY[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to KEY[0]
set_location_assignment PIN_AK4 -to KEY[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to KEY[1]
set_instance_assignment -name SLEW_RATE 0 -to LEDR[9]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4MA -to LEDR[9]
set_instance_assignment -name IO_STANDARD "2.5 V" -to SW[0]
set_instance_assignment -name IO_STANDARD "2.5 V" -to SW[1]
set_instance_assignment -name IO_STANDARD "2.5 V" -to SW[2]
set_instance_assignment -name IO_STANDARD "2.5 V" -to SW[3]
set_instance_assignment -name IO_STANDARD "2.5 V" -to SW[4]
set_instance_assignment -name IO_STANDARD "2.5 V" -to SW[5]
set_instance_assignment -name IO_STANDARD "2.5 V" -to SW[6]
set_instance_assignment -name IO_STANDARD "2.5 V" -to SW[7]
set_instance_assignment -name IO_STANDARD "2.5 V" -to SW[8]
set_instance_assignment -name IO_STANDARD "2.5 V" -to SW[9]
set_location_assignment PIN_AB30 -to SW[0]
set_location_assignment PIN_Y27 -to SW[1]
set_location_assignment PIN_AB28 -to SW[2]
set_location_assignment PIN_AC30 -to SW[3]
set_location_assignment PIN_W25 -to SW[4]
set_location_assignment PIN_V25 -to SW[5]
set_location_assignment PIN_AC28 -to SW[6]
set_location_assignment PIN_AD30 -to SW[7]
set_location_assignment PIN_AC29 -to SW[8]
set_location_assignment PIN_AA30 -to SW[9]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[0]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[1]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[2]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[3]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[4]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[5]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[6]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[7]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[8]
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to LEDR[9]
set_location_assignment PIN_AA24 -to LEDR[0]
set_location_assignment PIN_AB23 -to LEDR[1]
set_location_assignment PIN_AC23 -to LEDR[2]
set_location_assignment PIN_AD24 -to LEDR[3]
set_location_assignment PIN_AG25 -to LEDR[4]
set_location_assignment PIN_AF25 -to LEDR[5]
set_location_assignment PIN_AE24 -to LEDR[6]
set_location_assignment PIN_AF24 -to LEDR[7]
set_location_assignment PIN_AB22 -to LEDR[8]
set_location_assignment PIN_AC22 -to LEDR[9]
set_instance_assignment -name SLEW_RATE 0 -to LEDR[0]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4MA -to LEDR[0]
set_instance_assignment -name SLEW_RATE 0 -to LEDR[1]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4MA -to LEDR[1]
set_instance_assignment -name SLEW_RATE 0 -to LEDR[2]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4MA -to LEDR[2]
set_instance_assignment -name SLEW_RATE 0 -to LEDR[3]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4MA -to LEDR[3]
set_instance_assignment -name SLEW_RATE 0 -to LEDR[4]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4MA -to LEDR[4]
set_instance_assignment -name SLEW_RATE 0 -to LEDR[5]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4MA -to LEDR[5]
set_instance_assignment -name SLEW_RATE 0 -to LEDR[6]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4MA -to LEDR[6]
set_instance_assignment -name SLEW_RATE 0 -to LEDR[7]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4MA -to LEDR[7]
set_instance_assignment -name SLEW_RATE 0 -to LEDR[8]
set_instance_assignment -name CURRENT_STRENGTH_NEW 4MA -to LEDR[8]