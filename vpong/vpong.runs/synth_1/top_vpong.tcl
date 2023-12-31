# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.runs/synth_1/top_vpong.tcl"
  variable category "vivado_synth"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
OPTRACE "synth_1" START { ROLLUP_AUTO }
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.cache/wt [current_project]
set_property parent.project_path C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part_repo_paths {C:/Users/vivat/AppData/Roaming/Xilinx/Vivado/2023.2/xhub/board_store/xilinx_board_store} [current_project]
set_property board_part digilentinc.com:basys3:part0:1.2 [current_project]
set_property ip_output_repo c:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
read_verilog C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.srcs/sources_1/new/params.vh
read_mem {
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.srcs/sources_1/new/rom_prog_text.mem
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.srcs/sources_1/new/rom_ball_texture.mem
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.srcs/sources_1/new/rom_pikachu.mem
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.srcs/sources_1/new/pong_bg.mem
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.srcs/sources_1/new/pong_text.mem
}
read_verilog -library xil_defaultlib {
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/verilog_modules/button.v
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/verilog_modules/clk_div.v
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/verilog_modules/counter.v
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/verilog_modules/debouncer.v
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/verilog_modules/hex_to_7_seg.v
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/verilog_modules/io_mapped_memory.v
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/verilog_modules/quad_7_seg.v
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/verilog_modules/ram_block.v
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/verilog_modules/rom_block.v
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/verilog_modules/stack.v
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/verilog_modules/vga_sync.v
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.srcs/sources_1/new/uart_core.v
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/verilog_modules/single_pulser.v
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.srcs/sources_1/new/top_vpong.v
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.srcs/sources_1/new/graphics_renderer.v
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.srcs/sources_1/new/ascii_rom.v
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.srcs/sources_1/new/ascii_text_generator.v
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.srcs/sources_1/new/text_renderer.v
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.srcs/sources_1/new/pixel_overlay.v
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.srcs/sources_1/new/bitmap_renderer.v
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.srcs/sources_1/new/rectangle_renderer.v
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.srcs/sources_1/new/game_logic.v
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.srcs/sources_1/new/counter_d99.v
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.srcs/sources_1/new/counter_d9.v
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.srcs/sources_1/new/ps2_receiver.v
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.srcs/sources_1/new/keyboard.v
  C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.srcs/sources_1/new/text_context.v
}
read_ip -quiet C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.srcs/sources_1/ip/CW/CW.xci
set_property used_in_implementation false [get_files -all c:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.gen/sources_1/ip/CW/CW_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.gen/sources_1/ip/CW/CW.xdc]
set_property used_in_implementation false [get_files -all c:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.gen/sources_1/ip/CW/CW_ooc.xdc]

OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.srcs/constrs_1/imports/cp-eng-hwsynlab2023/Basys-3-Master-Custom.xdc
set_property used_in_implementation false [get_files C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.srcs/constrs_1/imports/cp-eng-hwsynlab2023/Basys-3-Master-Custom.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 1

read_checkpoint -auto_incremental -incremental C:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.srcs/utils_1/imports/synth_1/keyboard_tester.dcp
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top top_vpong -part xc7a35tcpg236-1 -directive AlternateRoutability -no_lc -shreg_min_size 10
OPTRACE "synth_design" END { }
if { [get_msg_config -count -severity {CRITICAL WARNING}] > 0 } {
 send_msg_id runtcl-6 info "Synthesis results are not added to the cache due to CRITICAL_WARNING"
}


OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef top_vpong.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
create_report "synth_1_synth_report_utilization_0" "report_utilization -file top_vpong_utilization_synth.rpt -pb top_vpong_utilization_synth.pb"
OPTRACE "synth reports" END { }
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "synth_1" END { }
