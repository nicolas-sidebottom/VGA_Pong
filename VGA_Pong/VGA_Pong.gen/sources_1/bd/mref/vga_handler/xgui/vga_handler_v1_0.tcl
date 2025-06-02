# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "horz_back" -parent ${Page_0}
  ipgui::add_param $IPINST -name "horz_dis_area" -parent ${Page_0}
  ipgui::add_param $IPINST -name "horz_front" -parent ${Page_0}
  ipgui::add_param $IPINST -name "horz_max" -parent ${Page_0}
  ipgui::add_param $IPINST -name "horz_retrace" -parent ${Page_0}
  ipgui::add_param $IPINST -name "vert_back" -parent ${Page_0}
  ipgui::add_param $IPINST -name "vert_dis_area" -parent ${Page_0}
  ipgui::add_param $IPINST -name "vert_front" -parent ${Page_0}
  ipgui::add_param $IPINST -name "vert_max" -parent ${Page_0}
  ipgui::add_param $IPINST -name "vert_retrace" -parent ${Page_0}


}

proc update_PARAM_VALUE.horz_back { PARAM_VALUE.horz_back } {
	# Procedure called to update horz_back when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.horz_back { PARAM_VALUE.horz_back } {
	# Procedure called to validate horz_back
	return true
}

proc update_PARAM_VALUE.horz_dis_area { PARAM_VALUE.horz_dis_area } {
	# Procedure called to update horz_dis_area when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.horz_dis_area { PARAM_VALUE.horz_dis_area } {
	# Procedure called to validate horz_dis_area
	return true
}

proc update_PARAM_VALUE.horz_front { PARAM_VALUE.horz_front } {
	# Procedure called to update horz_front when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.horz_front { PARAM_VALUE.horz_front } {
	# Procedure called to validate horz_front
	return true
}

proc update_PARAM_VALUE.horz_max { PARAM_VALUE.horz_max } {
	# Procedure called to update horz_max when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.horz_max { PARAM_VALUE.horz_max } {
	# Procedure called to validate horz_max
	return true
}

proc update_PARAM_VALUE.horz_retrace { PARAM_VALUE.horz_retrace } {
	# Procedure called to update horz_retrace when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.horz_retrace { PARAM_VALUE.horz_retrace } {
	# Procedure called to validate horz_retrace
	return true
}

proc update_PARAM_VALUE.vert_back { PARAM_VALUE.vert_back } {
	# Procedure called to update vert_back when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.vert_back { PARAM_VALUE.vert_back } {
	# Procedure called to validate vert_back
	return true
}

proc update_PARAM_VALUE.vert_dis_area { PARAM_VALUE.vert_dis_area } {
	# Procedure called to update vert_dis_area when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.vert_dis_area { PARAM_VALUE.vert_dis_area } {
	# Procedure called to validate vert_dis_area
	return true
}

proc update_PARAM_VALUE.vert_front { PARAM_VALUE.vert_front } {
	# Procedure called to update vert_front when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.vert_front { PARAM_VALUE.vert_front } {
	# Procedure called to validate vert_front
	return true
}

proc update_PARAM_VALUE.vert_max { PARAM_VALUE.vert_max } {
	# Procedure called to update vert_max when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.vert_max { PARAM_VALUE.vert_max } {
	# Procedure called to validate vert_max
	return true
}

proc update_PARAM_VALUE.vert_retrace { PARAM_VALUE.vert_retrace } {
	# Procedure called to update vert_retrace when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.vert_retrace { PARAM_VALUE.vert_retrace } {
	# Procedure called to validate vert_retrace
	return true
}


proc update_MODELPARAM_VALUE.horz_dis_area { MODELPARAM_VALUE.horz_dis_area PARAM_VALUE.horz_dis_area } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.horz_dis_area}] ${MODELPARAM_VALUE.horz_dis_area}
}

proc update_MODELPARAM_VALUE.horz_front { MODELPARAM_VALUE.horz_front PARAM_VALUE.horz_front } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.horz_front}] ${MODELPARAM_VALUE.horz_front}
}

proc update_MODELPARAM_VALUE.horz_back { MODELPARAM_VALUE.horz_back PARAM_VALUE.horz_back } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.horz_back}] ${MODELPARAM_VALUE.horz_back}
}

proc update_MODELPARAM_VALUE.horz_retrace { MODELPARAM_VALUE.horz_retrace PARAM_VALUE.horz_retrace } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.horz_retrace}] ${MODELPARAM_VALUE.horz_retrace}
}

proc update_MODELPARAM_VALUE.horz_max { MODELPARAM_VALUE.horz_max PARAM_VALUE.horz_max } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.horz_max}] ${MODELPARAM_VALUE.horz_max}
}

proc update_MODELPARAM_VALUE.vert_dis_area { MODELPARAM_VALUE.vert_dis_area PARAM_VALUE.vert_dis_area } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.vert_dis_area}] ${MODELPARAM_VALUE.vert_dis_area}
}

proc update_MODELPARAM_VALUE.vert_front { MODELPARAM_VALUE.vert_front PARAM_VALUE.vert_front } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.vert_front}] ${MODELPARAM_VALUE.vert_front}
}

proc update_MODELPARAM_VALUE.vert_back { MODELPARAM_VALUE.vert_back PARAM_VALUE.vert_back } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.vert_back}] ${MODELPARAM_VALUE.vert_back}
}

proc update_MODELPARAM_VALUE.vert_retrace { MODELPARAM_VALUE.vert_retrace PARAM_VALUE.vert_retrace } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.vert_retrace}] ${MODELPARAM_VALUE.vert_retrace}
}

proc update_MODELPARAM_VALUE.vert_max { MODELPARAM_VALUE.vert_max PARAM_VALUE.vert_max } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.vert_max}] ${MODELPARAM_VALUE.vert_max}
}

