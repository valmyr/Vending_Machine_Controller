#Diretórios Base
SIM_DIR=sim
#Arquivos
RTL_FILES=../list_file_dut.lst
TB_FILES=../list_file_tb.lst
#WAVE_CONFIG =
#Top do testbench
TOP=tb


#Passo 0: Criar diretório de simulação
init:
	mkdir -p $(SIM_DIR)

#Passo 1: Verificação de Sintaxe

syntax:init
	cd $(SIM_DIR)				&& \
		 vlogan -full64 		\
		 -sverilog			    \
		 -kdb     			    \
		 +lint=all			    \
		 -timescale=1ns/1ps		\
		 -f $(RTL_FILES)		\
		 -f $(TB_FILES)		

syntax_pos_impl:
	cd $(SIM_DIR)				&& \
		 vlogan -full64 		\
		 -sverilog			    \
		 -kdb     			    \
		 +lint=all			    \
		 -timescale=1ns/1ps		\
		 ../$(PKG_FILES)	    \
		 ../$(LIB_FILES)	    \
		 ../$(RTL_FILES_IMPL)   \
		 ../$(TB_FILES)

synthesis:
	cd $(SIM_DIR) 				  &&\
	dc_shell -f ../synth/synth.tcl

#Passo 2: Compilação/Elaboração
compile:syntax
	cd $(SIM_DIR) 				  &&\
	vcs -full64 				\
	-debug_access+all 			\
	-kdb $(TOP)

compile_pos_synth:syntax_pos_synth
	cd $(SIM_DIR) 				  &&\
	vcs -full64 				\
	-debug_access+all 			\
	-kdb $(TOP)
compile_pos_impl:syntax_pos_impl
	cd $(SIM_DIR) 				  &&\
	vcs -full64 				\
	-debug_access+all 			\
	-kdb $(TOP)	
#Passo 3: Rodar Simulação
run:compile
	cd $(SIM_DIR) && \
	./simv
run_gui:compile
	cd $(SIM_DIR) && \
	./simv -gui
run_pos_impl:compile_pos_impl
	cd $(SIM_DIR) && \
	./simv
run_gui_pos_impl:compile_pos_impl
	cd $(SIM_DIR) && \
	./simv -gui
#Passo 4: Abrir o waveform no Verdi
waves:run
	cd $(SIM_DIR) &&\
	verdi -ssf waves.fsdb -sswr tb_vending_machine.rc
#Limpeza
clean:
	cd $(SIM_DIR) &&\
	rm -rf * ../reports/*	      	\ 
			 ../synth/impl.v*  	\
			 ../synth/synth*	\
			 ../work/*				\
			 ./default.svf			\
			 ./filenames.log		
			 *
