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


endmodule