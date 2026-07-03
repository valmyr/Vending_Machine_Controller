module control_unit(
    input  wire        clk,
    input  wire        rst,
 
    input  wire        can_sell,
    input  wire  [1:0] coin_in,
    input  wire        confirm,
    input  wire        cancel,

    output logic       credit_load,
    output logic       en_change,
    output logic       mem_write,
    output logic       mem_read,
    output logic       clr,

    output logic [3:0] state_out,
    output logic       dispense,
    output logic       error
);

import Vending_Machine_pkg::*;

fsm_state_t state, next_state;

always_ff @ (posedge clk) begin
    if (rst) begin
        state <= IDLE;
    end

    else begin
        state <= next_state;
    end
end

always_comb begin
    next_state = state;
    credit_load = 0;
    mem_write = 0;
    mem_read = 0;

    en_change = 0;
    dispense = 0;
    error = 0;
    clr = 0;

    state_out = state;

    case (state)
        IDLE: begin
            if (|coin_in != 0) begin
                // clr = 0;
                credit_load = 1'b1;
                next_state = COLLECT;
            end

            else begin
                // clr = 1'b1;
                next_state = IDLE;
            end
        end

        COLLECT:begin
            credit_load = |coin_in;

            if (cancel) begin
                clr = 1'b1;
                en_change = 1'b1;
                next_state = IDLE;
            end

            else if (confirm) begin
                next_state = CHECK;
                mem_read = 1'b1;
            end

            else begin
                next_state = COLLECT;
            end
        end

        CHECK: begin
            if (can_sell) begin
                next_state = DISPENSE;
            end

            else begin
                next_state = ERROR;
            end
        end

        DISPENSE: begin
            dispense = 1'b1;
            mem_write = 1'b1;
            next_state = CHANGE;
        end

        CHANGE: begin
            en_change = 1'b1;
            next_state = IDLE;
            clr = 1'b1;
        end

        ERROR: begin
            error = 1'b1;
            
            if (cancel) begin
                clr = 1'b1;
                en_change = 1'b1;
                next_state = IDLE; 
            end

            else begin
                next_state = ERROR;
            end
        end

        default: begin
            next_state = IDLE;
        end
    endcase
end

endmodule