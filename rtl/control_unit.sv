module control_vending_machine(
    input logic clk,
    input logic rst,
    input logic cancel,
    input logic [1:0]coin_in,
    input logic confirm,
    input logic [1:0]sel_item,


    output logic error,
    output logic dispense,
    output logic [7:0] change_out,
    output logic [7:0] display,
    output logic [2:0] state_out,

    //Sinais internos

    //memory
    input  logic [7:0] mem_inst_stock,
    input  logic [7:0] mem_inst_price,
    output logic       mem_inst_mem_read,
    output logic       mem_inst_mem_write,
    output logic  [1:0]mem_inst_sel_item,
    //Comparator
    output logic [7:0] comp_inst_credit,
    output logic [7:0] comp_inst_price,
    output logic [7:0] comp_inst_stock,
    input  logic [7:0] comp_inst_can_sell,
    //credit_reg
    output logic       credit_inst_credit_load,
    output logic [1:0] credit_inst_coin_value,
    input  logic [7:0] credit_inst_credit,
    //Subtractor
    output logic [7:0] sub_inst_credit,
    output logic [7:0] sub_inst_price,
    input  logic [7:0] sub_inst_change

);

import Vending_Machine_pkg::*;
//Continue

endmodule