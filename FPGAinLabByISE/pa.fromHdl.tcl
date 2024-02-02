
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name logicproj -dir "D:/proj/logicproj/planAhead_run_2" -part xc3s400pq208-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "fightingGameForFPGA.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {SevenSeg.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {secondPlayer.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {freqDividerForSevenSegment.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {freqDividerForGame.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {firstPlayer.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {fightingGameForFPGA.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top fightingGameForFPGA $srcset
add_files [list {fightingGameForFPGA.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s400pq208-5
