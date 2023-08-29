# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_CLK_DATA_WIDTH" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_CLK_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_CLK_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_CLK_HIGHADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_D_DATA_WIDTH" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_D_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_D_BASEADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_D_HIGHADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_Q_START_DATA_VALUE" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_Q_TARGET_SLAVE_BASE_ADDR" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_Q_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_Q_DATA_WIDTH" -parent ${Page_0} -widget comboBox
  ipgui::add_param $IPINST -name "C_Q_TRANSACTIONS_NUM" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_CLK_DATA_WIDTH { PARAM_VALUE.C_CLK_DATA_WIDTH } {
	# Procedure called to update C_CLK_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CLK_DATA_WIDTH { PARAM_VALUE.C_CLK_DATA_WIDTH } {
	# Procedure called to validate C_CLK_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_CLK_ADDR_WIDTH { PARAM_VALUE.C_CLK_ADDR_WIDTH } {
	# Procedure called to update C_CLK_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CLK_ADDR_WIDTH { PARAM_VALUE.C_CLK_ADDR_WIDTH } {
	# Procedure called to validate C_CLK_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_CLK_BASEADDR { PARAM_VALUE.C_CLK_BASEADDR } {
	# Procedure called to update C_CLK_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CLK_BASEADDR { PARAM_VALUE.C_CLK_BASEADDR } {
	# Procedure called to validate C_CLK_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_CLK_HIGHADDR { PARAM_VALUE.C_CLK_HIGHADDR } {
	# Procedure called to update C_CLK_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_CLK_HIGHADDR { PARAM_VALUE.C_CLK_HIGHADDR } {
	# Procedure called to validate C_CLK_HIGHADDR
	return true
}

proc update_PARAM_VALUE.C_D_DATA_WIDTH { PARAM_VALUE.C_D_DATA_WIDTH } {
	# Procedure called to update C_D_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_D_DATA_WIDTH { PARAM_VALUE.C_D_DATA_WIDTH } {
	# Procedure called to validate C_D_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_D_ADDR_WIDTH { PARAM_VALUE.C_D_ADDR_WIDTH } {
	# Procedure called to update C_D_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_D_ADDR_WIDTH { PARAM_VALUE.C_D_ADDR_WIDTH } {
	# Procedure called to validate C_D_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_D_BASEADDR { PARAM_VALUE.C_D_BASEADDR } {
	# Procedure called to update C_D_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_D_BASEADDR { PARAM_VALUE.C_D_BASEADDR } {
	# Procedure called to validate C_D_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_D_HIGHADDR { PARAM_VALUE.C_D_HIGHADDR } {
	# Procedure called to update C_D_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_D_HIGHADDR { PARAM_VALUE.C_D_HIGHADDR } {
	# Procedure called to validate C_D_HIGHADDR
	return true
}

proc update_PARAM_VALUE.C_Q_START_DATA_VALUE { PARAM_VALUE.C_Q_START_DATA_VALUE } {
	# Procedure called to update C_Q_START_DATA_VALUE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_Q_START_DATA_VALUE { PARAM_VALUE.C_Q_START_DATA_VALUE } {
	# Procedure called to validate C_Q_START_DATA_VALUE
	return true
}

proc update_PARAM_VALUE.C_Q_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_Q_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to update C_Q_TARGET_SLAVE_BASE_ADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_Q_TARGET_SLAVE_BASE_ADDR { PARAM_VALUE.C_Q_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to validate C_Q_TARGET_SLAVE_BASE_ADDR
	return true
}

proc update_PARAM_VALUE.C_Q_ADDR_WIDTH { PARAM_VALUE.C_Q_ADDR_WIDTH } {
	# Procedure called to update C_Q_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_Q_ADDR_WIDTH { PARAM_VALUE.C_Q_ADDR_WIDTH } {
	# Procedure called to validate C_Q_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_Q_DATA_WIDTH { PARAM_VALUE.C_Q_DATA_WIDTH } {
	# Procedure called to update C_Q_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_Q_DATA_WIDTH { PARAM_VALUE.C_Q_DATA_WIDTH } {
	# Procedure called to validate C_Q_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_Q_TRANSACTIONS_NUM { PARAM_VALUE.C_Q_TRANSACTIONS_NUM } {
	# Procedure called to update C_Q_TRANSACTIONS_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_Q_TRANSACTIONS_NUM { PARAM_VALUE.C_Q_TRANSACTIONS_NUM } {
	# Procedure called to validate C_Q_TRANSACTIONS_NUM
	return true
}


proc update_MODELPARAM_VALUE.C_CLK_DATA_WIDTH { MODELPARAM_VALUE.C_CLK_DATA_WIDTH PARAM_VALUE.C_CLK_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CLK_DATA_WIDTH}] ${MODELPARAM_VALUE.C_CLK_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_CLK_ADDR_WIDTH { MODELPARAM_VALUE.C_CLK_ADDR_WIDTH PARAM_VALUE.C_CLK_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_CLK_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_CLK_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_D_DATA_WIDTH { MODELPARAM_VALUE.C_D_DATA_WIDTH PARAM_VALUE.C_D_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_D_DATA_WIDTH}] ${MODELPARAM_VALUE.C_D_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_D_ADDR_WIDTH { MODELPARAM_VALUE.C_D_ADDR_WIDTH PARAM_VALUE.C_D_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_D_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_D_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_Q_START_DATA_VALUE { MODELPARAM_VALUE.C_Q_START_DATA_VALUE PARAM_VALUE.C_Q_START_DATA_VALUE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_Q_START_DATA_VALUE}] ${MODELPARAM_VALUE.C_Q_START_DATA_VALUE}
}

proc update_MODELPARAM_VALUE.C_Q_TARGET_SLAVE_BASE_ADDR { MODELPARAM_VALUE.C_Q_TARGET_SLAVE_BASE_ADDR PARAM_VALUE.C_Q_TARGET_SLAVE_BASE_ADDR } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_Q_TARGET_SLAVE_BASE_ADDR}] ${MODELPARAM_VALUE.C_Q_TARGET_SLAVE_BASE_ADDR}
}

proc update_MODELPARAM_VALUE.C_Q_ADDR_WIDTH { MODELPARAM_VALUE.C_Q_ADDR_WIDTH PARAM_VALUE.C_Q_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_Q_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_Q_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_Q_DATA_WIDTH { MODELPARAM_VALUE.C_Q_DATA_WIDTH PARAM_VALUE.C_Q_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_Q_DATA_WIDTH}] ${MODELPARAM_VALUE.C_Q_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_Q_TRANSACTIONS_NUM { MODELPARAM_VALUE.C_Q_TRANSACTIONS_NUM PARAM_VALUE.C_Q_TRANSACTIONS_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_Q_TRANSACTIONS_NUM}] ${MODELPARAM_VALUE.C_Q_TRANSACTIONS_NUM}
}

