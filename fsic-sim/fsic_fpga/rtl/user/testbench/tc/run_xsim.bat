CALL xvlog -sv -i ../ ../tb_fsic.v -f filelist
CALL xelab tb_fsic -debug typical --snapshot tb_fsic_xelab --timescale 1ns/1ns
CALL xsim tb_fsic_xelab --tclbatch log_wave.tcl
copy C:\Users\soyuz\Documents\caravel-soc_fpga-lab\fsic-sim\fsic_fpga\rtl\user\testbench\tc\FSIC_FIR.vcd  C:\Users\soyuz\OneDrive\Document
