package Vending_Machine_pkg;
    typedef enum logic [2:0] {
        IDLE=0,
        COLLECT=1,
        CHECK=2,
        DISPENSE=3,
        CHANGE=4,
        ERROR=5
    } fsm_state_t;  
endpackage