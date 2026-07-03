module tb;
    import Vending_Machine_pkg::*;
    localparam PERIOD = 10;

    logic       clk;
    logic       rst;

    logic       confirm;
    logic       cancel;
    logic [1:0] coin_in;
    logic [1:0] sel_item;

    logic [7:0] display;
    logic [7:0] change_out;
    fsm_state_t state_out;
    logic       dispense;
    logic       error;

    task reset_machine;
        rst = 1'b1;
        #(2*PERIOD);
        rst = 0;
    endtask

    task buy_item(input logic [1:0] item, input logic [1:0] coins);
        apply_coin(coins);
        select_item(item);
        confirm_purchase();
        
        wait (state_out == ERROR || state_out == DISPENSE);

        if (state_out == ERROR) begin
            #(0.5*PERIOD);
            cancel_purchase();
        end

        else begin
            wait (state_out == IDLE);
            #(PERIOD);
        end
    endtask

    task apply_coin(input logic [1:0] value);
        coin_in = value; 
        #(PERIOD);
        coin_in = 0;
    endtask

    task confirm_purchase;
        confirm = 1'b1;
        #(PERIOD);
        confirm = 0;
    endtask

    task select_item(input logic[1:0] item);
        sel_item = item;
        #(PERIOD);
    endtask

    task cancel_purchase;
        cancel = 1'b1;
        #(PERIOD);
        cancel = 0;
    endtask

    Vending_Top vending_top(
        .clk(clk),
        .rst(rst),

        .coin_in(coin_in),
        .sel_item(sel_item),
        .confirm(confirm),
        .cancel(cancel),
        
        .change_out(change_out),
        .state_out(state_out),
        .dispense(dispense),
        .display(display),  
        .error(error)
    );

    always begin
        #(PERIOD/2); 
        clk = ~clk;
    end

    initial begin
        // Basic: dump all signals from tb_top downward, all hierarchy
        $fsdbDumpfile("waves.fsdb");
        $fsdbDumpvars(0, tb);         // 0 = all levels of hierarchy
        // Dump multi-dimensional arrays (memories, packed arrays)
        $fsdbDumpMDA();
        // Optional: stop dumping after N ns to limit file size
        #(4000);
        $fsdbDumpoff;
        $finish;
    end

    initial begin
        clk = 0;
        confirm = 0;
        cancel = 0;
        coin_in = 0;
        sel_item = 3;

        reset_machine();

        // Caso 1
        buy_item(
            .item(2'b00), 
            .coins(2'b11)
        );

        // Caso 2
        buy_item(
            .item(2'b11), 
            .coins(2'b01)
        );

        // Caso 3
        apply_coin(11);
        apply_coin(11);
        cancel_purchase();

        reset_machine();

        repeat(6) begin
            buy_item(
                .item(2'b00), 
                .coins(2'b01)
            );
        end
    end

endmodule