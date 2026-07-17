# ============================================================
# Script de Síntese - SAED32_EDK
# Suporte a SystemVerilog (.sv)
# ============================================================

# 1. CARREGAR CONFIGURAÇÃO
source ../synth/.synopsys_dc.setup

# 2. LEAR O ARQUIVO RTL (SYSTEMVERILOG)

set FILE_LIST [open "../list_file_dut.lst" r]
set SV_FILES [split [string trim [read $FILE_LIST]] "\n"]
close $FILE_LIST

analyze -format sverilog $SV_FILES

# 3. ELABORAR O DESIGN
elaborate Vending_Top

# ---- synth.tcl (trecho) — adição para gerar o guidance SVF ----
# ... (target_library, link_library, analyze, elaborate, link,
# read_sdc vending.sdc, check_design — como na atividade anterior)
# Grava o histórico de otimizações do Design Compiler a partir daqui.
# Precisa vir ANTES de compile_ultra para capturar toda a compilação.
set_svf ../fm/reports/default.svf
compile_ultra -no_autoungroup
# ... (report_area, report_timing, report_power,
# report_constraint -all_violators, write -format verilog -hierarchy
# — como na atividade anterior)


# 4. LINKAR O DESIGN
# O comando 'link' é necessário para resolver todas as referências
# e preparar o design para a síntese
# Pode ser suprimido para designs muito pequenoas, mas é recomendado para designs maiores
# Não é uma boa prática retirar o comando
link

# 5. Gerar o arquivo de netlist não mapeado
# (opcional, mas útil para depuração)
write_file -format verilog -hier -out ../synth/synth.v

# 6. CARREGAR CONSTRAINTS
read_sdc ../constraints/vending.sdc

# 7. SÍNTESE (compile_ultra é mais agressivo que compile)
puts "\n============================================================"
puts "INICIANDO SINTESE (Verilog)..."
puts "============================================================"
compile_ultra

# 8. RELATÓRIOS PÓS-SÍNTESE
puts "\n============================================================"
puts "RELATORIOS POS-SINTESE"
puts "============================================================"

# Relatório de área
report_area -hierarchy > ../reports/area_pos.rpt
puts "\nArea Relatorio salvo em: area_pos.rpt"

# Relatório de timing (setup)
report_timing > ../reports/timing_relatorio.rpt
puts "Timing Relatorio salvo em: timing_relatorio.rpt"

# Relatório de power
report_power > ../reports/power.rpt
puts "Power Relatorio salvo em: power.rpt"

# Relatório de violações de setup
report_constraint -all_violators -check_type setup > ../reports/setup_violations.rpt
puts "Setup Violations Relatorio salvo em: setup_violations.rpt"

# Relatório de violações de hold
report_constraint -all_violators -check_type hold > ../reports/hold_violations.rpt
puts "Hold Violations Relatorio salvo em: hold_violations.rpt"

# 8. EXPORTAR NETLIST
# Formato Verilog (para simulação)
write -format verilog -hierarchy -output ../synth/impl.v
puts "\nNetlist SystemVerilog salvo em: porta_and_mapeada.sv"

# Formato DDC (binário Synopsys, mais rápido para ICC2)
write -format ddc -hierarchy -output ../synth/vending_mapeada.ddc
puts "Netlist DDC salvo em: porta_and_mapeada.ddc"

# 9. SALVAR DESIGN EM MEMORY
#save_designs -force physical_design/porta_and.db
puts "Design Salvo em: Vending"

# 10. FINALIZAR
puts "\n============================================================"
puts "SINTESE CONCLUIDA COM SUCESSO (Verilog)!"
puts "============================================================"
puts "Arquivos gerados:"
puts "  - Vending.sv (netlist SystemVerilog)"
puts "  - Vending.ddc (netlist DDC)"
puts "  - area_pos.rpt (area)"
puts "  - timing_relatorio.rpt (timing)"
puts "  - power.rpt (potencia)"
puts "============================================================"
exit
start_gui