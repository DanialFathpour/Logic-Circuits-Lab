
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Keypad -dir "D:/University/6/Logic Circuits Lab/Keypad/planAhead_run_2" -part xc3s400pq208-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "D:/University/6/Logic Circuits Lab/Keypad/Main.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/University/6/Logic Circuits Lab/Keypad} }
set_property target_constrs_file "UCF.ucf" [current_fileset -constrset]
add_files [list {UCF.ucf}] -fileset [get_property constrset [current_run]]
link_design
