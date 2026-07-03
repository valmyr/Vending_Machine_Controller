module Vending_Top(
    input  logic       clk,
    input  logic       rst,

    // Inputs
    input  logic [1:0] sel_item,
    input  logic [1:0] coin_in,
    input  logic       confirm,
    input  logic       cancel,
    // Outputs
    output logic [7:0] change_out,
    output logic [2:0] state_out,
    output logic       dispense,
    output logic [7:0] display,  
    output logic       error
);
// Instanciação dos sinais internos do Top Level
//====================================================================
    //memory signals
    logic [7:0] stock;
    logic [7:0] price;
    logic       mem_read;
    logic       mem_write;
    logic [1:0] sel_item;
    logic       en_change;
    logic       clr;
    
    //credit_reg signals
    logic       credit_load;
    logic [7:0] credit;
    logic       cancel_reg;

    //comparator signals
    logic       can_sell;
    logic [7:0] change;
//=================================================================

    assign display = credit;

    // always_ff @ (posedge clk) begin
    //     if (rst) begin
    //         change_out <= 0;
    //     end

    //     else begin
    //         /*
    //             Se a compra não for bem sucedida, deve-se devolver o
    //             credito do usuário, senão devolve a saída do subtrator.
    //         */
    //         if (cancel) begin
    //             change_out <= en_change ? credit : 0;
    //         end

    //         else begin
    //             change_out <= en_change ? change : 0;
    //         end
    //     end
    // end

    always_ff @ (posedge clk) begin
        if (rst) begin
            cancel_reg <= 0;
        end

        else begin
            cancel_reg <= cancel;
        end
    end

    always_comb begin
            /*
                Se a compra não for bem sucedida, deve-se devolver o
                credito do usuário, senão devolve a saída do subtrator.
            */
            if (cancel_reg) begin
                change_out = en_change ? credit : 0;
            end

            else begin
                change_out = en_change ? change : 0;
            end
    end

    // Instanciação dos módulos
    //Memoria
    memory u_mem_unit(
        .clk(clk),
        .rst(rst),

        .stock(stock),
        .price(price),
        .sel_item(sel_item),
        
        .mem_read(mem_read),
        .mem_write(mem_write)
    );

    //Registardor de Creditos
    credit_reg u_credit_unit(
        .clk(clk),
        .rst(rst),
        .clr(clr),

        .credit(credit),
        .coin_value(coin_in),
        .credit_load(credit_load)
    );

    //Comparador
    comparator u_comp_unit(
        .price(price),
        .stock(stock),
        .credit(credit),
        .can_sell(can_sell)
    );

    //Subtrator
    subtractor u_sub_unit(
        .price (price),
        .credit(credit),
        .change(change)
    );  

    // Instanciação da Unit de Controle (FSM)
    control_unit u_control_unit(
        .clk(clk),
        .rst(rst),

        .can_sell(can_sell),
        .coin_in(coin_in),
        .confirm(confirm),
        .cancel(cancel_reg),

        .credit_load(credit_load),
        .mem_write(mem_write),
        .mem_read(mem_read),

        .en_change(en_change),
        .state_out(state_out),
        .dispense(dispense),
        .error(error),
        .clr(clr)
    );
endmodule