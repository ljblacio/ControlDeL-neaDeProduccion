onerror {exit -code 1}
vlib work
vcom -work work CONTROL_PRODUCCION.vho
vcom -work work simulacion_proyecto.vwf.vht
vsim -novopt -c -t 1ps -L fiftyfivenm -L altera -L altera_mf -L 220model -L sgate -L altera_lnsim work.CONTROL_PRODUCCION_SIMULAR_vhd_vec_tst
vcd file -direction CONTROL_PRODUCCION.msim.vcd
vcd add -internal CONTROL_PRODUCCION_SIMULAR_vhd_vec_tst/*
vcd add -internal CONTROL_PRODUCCION_SIMULAR_vhd_vec_tst/i1/*
proc simTimestamp {} {
    echo "Simulation time: $::now ps"
    if { [string equal running [runStatus]] } {
        after 2500 simTimestamp
    }
}
after 2500 simTimestamp
run -all
quit -f
