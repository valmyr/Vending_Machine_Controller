module Vending_Top(
    input  logic clk,
    input  logic rst,

    // Inputs
    input  logic confirm,
    input  logic cancel,
    input  logic [1:0] sel_item,
    input  logic [1:0] coin_in,
    // Outputs
    output logic dispense,  
    output logic error,
    output logic [7:0] change_out,
    output logic [7:0] display,
    output logic [2:0] state_out
);
// Instanciação dos sinais internos do Top Level
//====================================================================
    //memory signals
    logic [7:0] mem_inst_stock;
    logic [7:0] mem_inst_price;
    logic       mem_inst_mem_read;
    logic       mem_inst_mem_write;
    logic [1:0] mem_inst_sel_item;
    
    //credit_reg signals
    logic       credit_inst_credit_load;
    logic [7:0] credit_inst_credit;
    logic [1:0] credit_inst_coin_value;

    //comparator signals
    logic [7:0] comp_inst_stock;
    logic [7:0] comp_inst_price;
    logic [7:0] comp_inst_change;
    logic [7:0] comp_inst_can_sell;

    //subtractor signals
    logic [7:0] sub_inst_credit;
    logic [7:0] sub_inst_price;
    logic [7:0] sub_inst_change;
//=================================================================

    // Instanciação dos módulos

    //Memoria
    memory u_mem_unit(
        .clk        (clk),
        .rst        (rst),
        .sel_item   (mem_inst_sel_item),
        .stock      (mem_inst_stock),
        .price      (mem_inst_price),
        .mem_read   (mem_inst_mem_read),
        .mem_write  (mem_inst_mem_write)
    );

    //Registardor de Creditos
    credit_reg u_credit_unit(
        .clk         (clk),
        .rst         (rst),
        .credit_load (credit_inst_credit_load),
        .coin_value  (credit_inst_coin_value),
        .credit      (credit_inst_credit)
    );

    //Comparador
    comparator u_comp_unit(
        .credit  (comp_inst_credit),
        .price   (comp_inst_price),
        .stock   (comp_inst_stock),
        .can_sell(comp_inst_can_sell)
    );

    //Subtrator
    subtractor u_sub_unit(
        .credit(sub_inst_credit),
        .price (sub_inst_price),
        .change(sub_inst_change)
    );  

    // Instanciação da Unit de Controle (FSM)
    control_vending_machine u_control_unit(
        //Sinais globais
        .clk(clk),
        .rst(rst),
        //Sinais externos
        .cancel(cancel),
        .coin_in(coin_in),
        .sel_item(sel_item),
        .confirm(confirm),
        .error(error),
        .dispense(dispense),
        .change_out(change_out),
        .display(display),
        .state_out(state_out),
        //Sinais internos

        //memory
        .mem_inst_stock(mem_inst_stock),
        .mem_inst_price(mem_inst_price),
        .mem_inst_mem_read(mem_inst_mem_read),
        .mem_inst_mem_write(mem_inst_mem_write),
        .mem_inst_sel_item(mem_inst_sel_item),
        //Comparator
        .comp_inst_credit(comp_inst_credit),
        .comp_inst_price(comp_inst_price),
        .comp_inst_stock(comp_inst_stock),
        .comp_inst_can_sell(comp_inst_can_sell),
        //credit_reg
        .credit_inst_credit_load(credit_inst_credit_load),
        .credit_inst_coin_value(credit_inst_coin_value),
        .credit_inst_credit(credit_inst_credit),
        //Subtractor
        .sub_inst_credit(sub_inst_credit),
        .sub_inst_price(sub_inst_price),
        .sub_inst_change(sub_inst_change)

    );
endmodule