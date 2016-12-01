

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "gpsIpSimulatedLynn" "NUM_INSTANCES" "DEVICE_ID"  "C_GPS_AXI_BASEADDR" "C_GPS_AXI_HIGHADDR"
}
