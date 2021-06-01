onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib psledblink_opt

do {wave.do}

view wave
view structure
view signals

do {psledblink.udo}

run -all

quit -force
