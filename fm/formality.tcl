# ============================================================
# formality.tcl — Equivalência RTL (golden) x Netlist (revision)
# Controlador de Vending Machine — com guidance de SVF
# ============================================================
# 1. Biblioteca de células — a mesma target_library do synth.tcl
read_db ../lib/saed32rvt_tt1p05v25c.db
# 2. Carrega o SVF gerado pelo Design Compiler (Etapa 1) como guidance.
# Deve vir ANTES de qualquer read_verilog/set_top: o Formality lê
# o histórico de otimizações da síntese e passa a registrar também
# as próprias operações desta sessão no mesmo arquivo.
set_svf ./reports/default.svf
# 3. ESSENCIAL: habilita o modo de setup automático baseado no SVF.
# Sem esta variável, o Formality só aproveita o guidance
# parcialmente (limitado a poucas operações estruturais) — é ela
# que faz o Formality de fato consumir o histórico de otimizações
# do Design Compiler (constantes, retiming, merge/inversão de
# registrador, reencodificação de FSM) durante o match.
set synopsys_auto_setup true

# 4. Design de referência (golden) — RTL pré-síntese

# LER O ARQUIVO RTL (SYSTEMVERILOG)
#============================================================
set FILE_LIST [open "../list_file_dut.lst" r]
set SV_FILES [split [string trim [read $FILE_LIST]] "\n"]
close $FILE_LIST
#============================================================

read_sverilog -r $SV_FILES
set_top r:/WORK/Vending_Top

# 5. Design revisado — netlist gerada pelo Design Compiler
read_verilog -i ../synth/impl.v
set_top i:/WORK/Vending_Top

# 6. Casamento de pontos entre golden e revised, usando o guidance do SVF
match
# Verifica quais operações do SVF foram usadas com sucesso como guidance
# e quais foram rejeitadas (precisam de investigação manual)
report_svf_operation -status accepted > reports/formality_svf_accepted.rpt
report_svf_operation -status rejected > reports/formality_svf_rejected.rpt
# Inspecione o resultado do casamento antes de seguir para verify
report_matched_points > reports/formality_matched.rpt
report_unmatched_points > reports/formality_unmatched.rpt

# 7. Prova de equivalência ponto a ponto
verify
# 8. Relatórios de sign-off
report_status -verbose > reports/formality_status.rpt
report_passing_points > reports/formality_passing.rpt
report_failing_points > reports/formality_failing.rpt
report_unmatched_points > reports/formality_unmatched.rpt
exit