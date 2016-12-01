proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  create_project -in_memory -part xc7z020clg484-1
  set_property board_part em.avnet.com:zed:part0:1.3 [current_project]
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir F:/lynn.zheng/vivado_learing/GpsSimulatedLynn/GpsSimulatedLynn.cache/wt [current_project]
  set_property parent.project_path F:/lynn.zheng/vivado_learing/GpsSimulatedLynn/GpsSimulatedLynn.xpr [current_project]
  set_property ip_repo_paths {
  f:/lynn.zheng/vivado_learing/GpsSimulatedLynn/GpsSimulatedLynn.cache/ip
  F:/lynn.zheng/vivado_learing/GpsSimulatedLynn/ip_repo/gpsIpSimulatedLynn_1.0
} [current_project]
  set_property ip_output_repo f:/lynn.zheng/vivado_learing/GpsSimulatedLynn/GpsSimulatedLynn.cache/ip [current_project]
  set_property XPM_LIBRARIES XPM_CDC [current_project]
  add_files -quiet F:/lynn.zheng/vivado_learing/GpsSimulatedLynn/GpsSimulatedLynn.runs/synth_1/gpsSimulatedLynn_wrapper.dcp
  read_xdc -ref gpsSimulatedLynn_processing_system7_0_0 -cells inst f:/lynn.zheng/vivado_learing/GpsSimulatedLynn/GpsSimulatedLynn.srcs/sources_1/bd/gpsSimulatedLynn/ip/gpsSimulatedLynn_processing_system7_0_0/gpsSimulatedLynn_processing_system7_0_0.xdc
  set_property processing_order EARLY [get_files f:/lynn.zheng/vivado_learing/GpsSimulatedLynn/GpsSimulatedLynn.srcs/sources_1/bd/gpsSimulatedLynn/ip/gpsSimulatedLynn_processing_system7_0_0/gpsSimulatedLynn_processing_system7_0_0.xdc]
  read_xdc -prop_thru_buffers -ref gpsSimulatedLynn_axi_uartlite_0_0 -cells U0 f:/lynn.zheng/vivado_learing/GpsSimulatedLynn/GpsSimulatedLynn.srcs/sources_1/bd/gpsSimulatedLynn/ip/gpsSimulatedLynn_axi_uartlite_0_0/gpsSimulatedLynn_axi_uartlite_0_0_board.xdc
  set_property processing_order EARLY [get_files f:/lynn.zheng/vivado_learing/GpsSimulatedLynn/GpsSimulatedLynn.srcs/sources_1/bd/gpsSimulatedLynn/ip/gpsSimulatedLynn_axi_uartlite_0_0/gpsSimulatedLynn_axi_uartlite_0_0_board.xdc]
  read_xdc -ref gpsSimulatedLynn_axi_uartlite_0_0 -cells U0 f:/lynn.zheng/vivado_learing/GpsSimulatedLynn/GpsSimulatedLynn.srcs/sources_1/bd/gpsSimulatedLynn/ip/gpsSimulatedLynn_axi_uartlite_0_0/gpsSimulatedLynn_axi_uartlite_0_0.xdc
  set_property processing_order EARLY [get_files f:/lynn.zheng/vivado_learing/GpsSimulatedLynn/GpsSimulatedLynn.srcs/sources_1/bd/gpsSimulatedLynn/ip/gpsSimulatedLynn_axi_uartlite_0_0/gpsSimulatedLynn_axi_uartlite_0_0.xdc]
  read_xdc -prop_thru_buffers -ref gpsSimulatedLynn_rst_processing_system7_0_100M_0 -cells U0 f:/lynn.zheng/vivado_learing/GpsSimulatedLynn/GpsSimulatedLynn.srcs/sources_1/bd/gpsSimulatedLynn/ip/gpsSimulatedLynn_rst_processing_system7_0_100M_0/gpsSimulatedLynn_rst_processing_system7_0_100M_0_board.xdc
  set_property processing_order EARLY [get_files f:/lynn.zheng/vivado_learing/GpsSimulatedLynn/GpsSimulatedLynn.srcs/sources_1/bd/gpsSimulatedLynn/ip/gpsSimulatedLynn_rst_processing_system7_0_100M_0/gpsSimulatedLynn_rst_processing_system7_0_100M_0_board.xdc]
  read_xdc -ref gpsSimulatedLynn_rst_processing_system7_0_100M_0 -cells U0 f:/lynn.zheng/vivado_learing/GpsSimulatedLynn/GpsSimulatedLynn.srcs/sources_1/bd/gpsSimulatedLynn/ip/gpsSimulatedLynn_rst_processing_system7_0_100M_0/gpsSimulatedLynn_rst_processing_system7_0_100M_0.xdc
  set_property processing_order EARLY [get_files f:/lynn.zheng/vivado_learing/GpsSimulatedLynn/GpsSimulatedLynn.srcs/sources_1/bd/gpsSimulatedLynn/ip/gpsSimulatedLynn_rst_processing_system7_0_100M_0/gpsSimulatedLynn_rst_processing_system7_0_100M_0.xdc]
  read_xdc F:/lynn.zheng/vivado_learing/GpsSimulatedLynn/GpsSimulatedLynn.srcs/constrs_1/imports/new/system.xdc
  link_design -top gpsSimulatedLynn_wrapper -part xc7z020clg484-1
  write_hwdef -file gpsSimulatedLynn_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force gpsSimulatedLynn_wrapper_opt.dcp
  report_drc -file gpsSimulatedLynn_wrapper_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force gpsSimulatedLynn_wrapper_placed.dcp
  report_io -file gpsSimulatedLynn_wrapper_io_placed.rpt
  report_utilization -file gpsSimulatedLynn_wrapper_utilization_placed.rpt -pb gpsSimulatedLynn_wrapper_utilization_placed.pb
  report_control_sets -verbose -file gpsSimulatedLynn_wrapper_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force gpsSimulatedLynn_wrapper_routed.dcp
  report_drc -file gpsSimulatedLynn_wrapper_drc_routed.rpt -pb gpsSimulatedLynn_wrapper_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file gpsSimulatedLynn_wrapper_timing_summary_routed.rpt -rpx gpsSimulatedLynn_wrapper_timing_summary_routed.rpx
  report_power -file gpsSimulatedLynn_wrapper_power_routed.rpt -pb gpsSimulatedLynn_wrapper_power_summary_routed.pb -rpx gpsSimulatedLynn_wrapper_power_routed.rpx
  report_route_status -file gpsSimulatedLynn_wrapper_route_status.rpt -pb gpsSimulatedLynn_wrapper_route_status.pb
  report_clock_utilization -file gpsSimulatedLynn_wrapper_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force gpsSimulatedLynn_wrapper.mmi }
  write_bitstream -force gpsSimulatedLynn_wrapper.bit 
  catch { write_sysdef -hwdef gpsSimulatedLynn_wrapper.hwdef -bitfile gpsSimulatedLynn_wrapper.bit -meminfo gpsSimulatedLynn_wrapper.mmi -file gpsSimulatedLynn_wrapper.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

