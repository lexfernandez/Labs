
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Lab1 -dir "C:/Users/Alex/Documents/Labs/Lab1/planAhead_run_1" -part xa3s500eftg256-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Alex/Documents/Labs/Lab1/Gates.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Alex/Documents/Labs/Lab1} }
set_property target_constrs_file "Gates.ucf" [current_fileset -constrset]
add_files [list {Gates.ucf}] -fileset [get_property constrset [current_run]]
link_design
