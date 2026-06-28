#Diretórios Base
SIM_DIR=sim
#Arquivos
RTL_FILES=../list_file_dut.lst
TB_FILES=../list_file_tb.lst
#Top do testbench
TOP=tb


#Passo 1: Verificação de Sintaxe

syntax:
	cd $(SIM_DIR)				&& \
		 vlogan -full64 		\
		 -sverilog			    \
		 -kdb     			    \
		 +lint=all			    \
		 -f $(RTL_FILES)		\
		 -f $(TB_FILES)		
#Passo 2: Compilação/Elaboração
compile:syntax
	cd $(SIM_DIR) 				  &&\
	vcs -full64 				\
	-debug_access+all 			\
	-timescale=1ns/1ps			\
	-kdb $(TOP)
#Passo 3: Rodar Simulação
run:compile
	cd $(SIM_DIR) && \
	./simv
#Passo 4: Abrir o waveform no Verdi
waves:
	cd $(SIM_DIR) &&\
	verdi -ssf waves.fsdb &
#Limpeza
clean:
	cd $(SIM_DIR) &&\
	rm -rf *