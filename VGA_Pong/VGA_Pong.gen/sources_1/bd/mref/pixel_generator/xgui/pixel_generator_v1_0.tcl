# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ball_dimension" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ball_speed_neg" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ball_speed_pos" -parent ${Page_0}
  ipgui::add_param $IPINST -name "horz_max" -parent ${Page_0}
  ipgui::add_param $IPINST -name "horz_paddle_L" -parent ${Page_0}
  ipgui::add_param $IPINST -name "horz_paddle_R" -parent ${Page_0}
  ipgui::add_param $IPINST -name "horz_wall_L" -parent ${Page_0}
  ipgui::add_param $IPINST -name "horz_wall_R" -parent ${Page_0}
  ipgui::add_param $IPINST -name "paddleHeight" -parent ${Page_0}
  ipgui::add_param $IPINST -name "paddleSpeed" -parent ${Page_0}
  ipgui::add_param $IPINST -name "vert_max" -parent ${Page_0}


}

proc update_PARAM_VALUE.ball_dimension { PARAM_VALUE.ball_dimension } {
	# Procedure called to update ball_dimension when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ball_dimension { PARAM_VALUE.ball_dimension } {
	# Procedure called to validate ball_dimension
	return true
}

proc update_PARAM_VALUE.ball_speed_neg { PARAM_VALUE.ball_speed_neg } {
	# Procedure called to update ball_speed_neg when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ball_speed_neg { PARAM_VALUE.ball_speed_neg } {
	# Procedure called to validate ball_speed_neg
	return true
}

proc update_PARAM_VALUE.ball_speed_pos { PARAM_VALUE.ball_speed_pos } {
	# Procedure called to update ball_speed_pos when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ball_speed_pos { PARAM_VALUE.ball_speed_pos } {
	# Procedure called to validate ball_speed_pos
	return true
}

proc update_PARAM_VALUE.horz_max { PARAM_VALUE.horz_max } {
	# Procedure called to update horz_max when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.horz_max { PARAM_VALUE.horz_max } {
	# Procedure called to validate horz_max
	return true
}

proc update_PARAM_VALUE.horz_paddle_L { PARAM_VALUE.horz_paddle_L } {
	# Procedure called to update horz_paddle_L when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.horz_paddle_L { PARAM_VALUE.horz_paddle_L } {
	# Procedure called to validate horz_paddle_L
	return true
}

proc update_PARAM_VALUE.horz_paddle_R { PARAM_VALUE.horz_paddle_R } {
	# Procedure called to update horz_paddle_R when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.horz_paddle_R { PARAM_VALUE.horz_paddle_R } {
	# Procedure called to validate horz_paddle_R
	return true
}

proc update_PARAM_VALUE.horz_wall_L { PARAM_VALUE.horz_wall_L } {
	# Procedure called to update horz_wall_L when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.horz_wall_L { PARAM_VALUE.horz_wall_L } {
	# Procedure called to validate horz_wall_L
	return true
}

proc update_PARAM_VALUE.horz_wall_R { PARAM_VALUE.horz_wall_R } {
	# Procedure called to update horz_wall_R when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.horz_wall_R { PARAM_VALUE.horz_wall_R } {
	# Procedure called to validate horz_wall_R
	return true
}

proc update_PARAM_VALUE.paddleHeight { PARAM_VALUE.paddleHeight } {
	# Procedure called to update paddleHeight when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.paddleHeight { PARAM_VALUE.paddleHeight } {
	# Procedure called to validate paddleHeight
	return true
}

proc update_PARAM_VALUE.paddleSpeed { PARAM_VALUE.paddleSpeed } {
	# Procedure called to update paddleSpeed when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.paddleSpeed { PARAM_VALUE.paddleSpeed } {
	# Procedure called to validate paddleSpeed
	return true
}

proc update_PARAM_VALUE.vert_max { PARAM_VALUE.vert_max } {
	# Procedure called to update vert_max when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.vert_max { PARAM_VALUE.vert_max } {
	# Procedure called to validate vert_max
	return true
}


proc update_MODELPARAM_VALUE.horz_max { MODELPARAM_VALUE.horz_max PARAM_VALUE.horz_max } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.horz_max}] ${MODELPARAM_VALUE.horz_max}
}

proc update_MODELPARAM_VALUE.vert_max { MODELPARAM_VALUE.vert_max PARAM_VALUE.vert_max } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.vert_max}] ${MODELPARAM_VALUE.vert_max}
}

proc update_MODELPARAM_VALUE.horz_wall_L { MODELPARAM_VALUE.horz_wall_L PARAM_VALUE.horz_wall_L } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.horz_wall_L}] ${MODELPARAM_VALUE.horz_wall_L}
}

proc update_MODELPARAM_VALUE.horz_wall_R { MODELPARAM_VALUE.horz_wall_R PARAM_VALUE.horz_wall_R } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.horz_wall_R}] ${MODELPARAM_VALUE.horz_wall_R}
}

proc update_MODELPARAM_VALUE.horz_paddle_L { MODELPARAM_VALUE.horz_paddle_L PARAM_VALUE.horz_paddle_L } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.horz_paddle_L}] ${MODELPARAM_VALUE.horz_paddle_L}
}

proc update_MODELPARAM_VALUE.horz_paddle_R { MODELPARAM_VALUE.horz_paddle_R PARAM_VALUE.horz_paddle_R } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.horz_paddle_R}] ${MODELPARAM_VALUE.horz_paddle_R}
}

proc update_MODELPARAM_VALUE.paddleHeight { MODELPARAM_VALUE.paddleHeight PARAM_VALUE.paddleHeight } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.paddleHeight}] ${MODELPARAM_VALUE.paddleHeight}
}

proc update_MODELPARAM_VALUE.paddleSpeed { MODELPARAM_VALUE.paddleSpeed PARAM_VALUE.paddleSpeed } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.paddleSpeed}] ${MODELPARAM_VALUE.paddleSpeed}
}

proc update_MODELPARAM_VALUE.ball_dimension { MODELPARAM_VALUE.ball_dimension PARAM_VALUE.ball_dimension } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ball_dimension}] ${MODELPARAM_VALUE.ball_dimension}
}

proc update_MODELPARAM_VALUE.ball_speed_pos { MODELPARAM_VALUE.ball_speed_pos PARAM_VALUE.ball_speed_pos } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ball_speed_pos}] ${MODELPARAM_VALUE.ball_speed_pos}
}

proc update_MODELPARAM_VALUE.ball_speed_neg { MODELPARAM_VALUE.ball_speed_neg PARAM_VALUE.ball_speed_neg } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ball_speed_neg}] ${MODELPARAM_VALUE.ball_speed_neg}
}

