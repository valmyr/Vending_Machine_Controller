# No shell do sistema (fora do fm_shell), a partir do diretório fm/:
# Uso básico: gera fm_mk_script.tcl a partir do SVF do Design Compiler
fm_mk_script ./reports/default.svf
# Especificando o nome do script de saída
fm_mk_script ./reports/default.svf -output formality_auto.tcl