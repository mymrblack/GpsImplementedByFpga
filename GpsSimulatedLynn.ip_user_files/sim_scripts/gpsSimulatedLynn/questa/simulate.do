onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -pli "E:/Software/Xilinx/Vivado/2016.2/lib/win64.o/libxil_vsim.dll" -lib xil_defaultlib gpsSimulatedLynn_opt

do {wave.do}

view wave
view structure
view signals

do {gpsSimulatedLynn.udo}

run -all

quit -force
