
xvlog -sv -i ../ ../tb_fsic.v -f filelist
xelab tb_fsic -debug typical --snapshot tb_fsic_xelab --timescale 1ns/1ns
xsim tb_fsic_xelab --tclbatch log_wave.tcl
