

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "shiftA" "NUM_INSTANCES" "DEVICE_ID"  "C_D_BASEADDR" "C_D_HIGHADDR" "C_CLK_BASEADDR" "C_CLK_HIGHADDR"
}
