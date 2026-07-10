# ---- synth.tcl (trecho) — adição para gerar o guidance SVF ----
# ... (target_library, link_library, analyze, elaborate, link,
# read_sdc vending.sdc, check_design — como na atividade anterior)
# Grava o histórico de otimizações do Design Compiler a partir daqui.
# Precisa vir ANTES de compile_ultra para capturar toda a compilação.
set_svf reports/default.svf
compile_ultra -no_autoungroup
# ... (report_area, report_timing, report_power,
# report_constraint -all_violators, write -format verilog -hierarchy
# — como na atividade anterior)