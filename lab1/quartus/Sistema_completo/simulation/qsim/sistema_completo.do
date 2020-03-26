onerror {exit -code 1}
vlib work
vlog -work work sistema_completo.vo
vlog -work work sistema_completo.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.sistema_completo_vlg_vec_tst -voptargs="+acc"
vcd file -direction sistema_completo.msim.vcd
vcd add -internal sistema_completo_vlg_vec_tst/*
vcd add -internal sistema_completo_vlg_vec_tst/i1/*
run -all
quit -f
