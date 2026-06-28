parameter PERIOD = 10ns;
parameter NUMBER_OF_CYCLES = 5; //Número de ciclos da simulação, ajuste conforme a necessidade.

string TDBG_COLOR_RED     ="\x1b[31m";
string TDBG_COLOR_GREEN   ="\x1b[32m";
string TDBG_COLOR_YELLOW  ="\x1b[33m";
string TDBG_COLOR_BLUE    ="\x1b[34m";
string TDBG_COLOR_RESET   ="\x1b[0m";

module tb;
import Vending_Machine_pkg::*;


logic       tb_clk;
logic       tb_rst;
logic       tb_confirm;
logic       tb_cancel;
logic [1:0] tb_sel_item;
logic [1:0] tb_coin_in;
logic       tb_dispense;
logic       tb_error;
logic [7:0] tb_change_out;
logic [7:0] tb_display;
logic [2:0] tb_state_out;
Vending_Top vending_machine_uut(
    .clk        (tb_clk),
    .rst        (tb_rst),
    .confirm    (tb_confirm),
    .cancel     (tb_cancel),
    .sel_item   (tb_sel_item),
    .coin_in    (tb_coin_in),
    .dispense   (tb_dispense),
    .error      (tb_error),
    .change_out (tb_change_out),
    .display    (tb_display),
    .state_out  (tb_state_out)
);
//Inicialização de sinais
initial begin
    tb_clk = 0;
    tb_rst = 1;
    #(PERIOD) //Ciclo 1 de espera do reset
    #(PERIOD) //Ciclo 2 de espera do reset
    tb_rst = 0;
end
//Gerador de Clock 
always #(PERIOD/2) tb_clk = ~tb_clk;

initial begin
    apply_coin(.value(2'b00),.coin_in(tb_coin_in));
    apply_coin(.value(2'b01),.coin_in(tb_coin_in));
    apply_coin(.value(2'b10),.coin_in(tb_coin_in));
    apply_coin(.value(2'b11),.coin_in(tb_coin_in));
end
//waveform dump
initial begin
  // Basic: dump all signals from tb_top downward, all hierarchy
  $fsdbDumpfile("waves.fsdb");
  $fsdbDumpvars(0, tb);         // 0 = all levels of hierarchy
  // Dump multi-dimensional arrays (memories, packed arrays)
  $fsdbDumpMDA();
  // Optional: stop dumping after N ns to limit file size
  #(PERIOD*NUMBER_OF_CYCLES);
  $fsdbDumpoff;
  $finish;
end
endmodule


task apply_coin;
//3. Tarefa apply_coin(value) que aplica uma moeda e aguarda 1 ciclo
	input logic [1:0] value;
    output logic[1:0] coin_in;
	begin
        $display(TDBG_COLOR_RED,"value=",value,TDBG_COLOR_RESET);
        coin_in = value;
        #(PERIOD);

	end
endtask

//4. Tarefa buy_item(item, coins[]) que executa uma compra completa
//5. Tarefa check(expected, actual, label) que reporta PASS/FAIL
