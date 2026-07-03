package Vending_Machine_pkg;
    typedef enum logic [2:0] {
        IDLE     = 3'd0,
        COLLECT  = 3'd1,
        CHECK    = 3'd2,
        DISPENSE = 3'd3,
        CHANGE   = 3'd4,
        ERROR    = 3'd5
    } fsm_state_t;  
endpackage