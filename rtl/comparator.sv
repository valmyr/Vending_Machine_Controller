module comparator(
    input  logic [7:0] credito,
    input  logic [7:0] price,
    input  logic [7:0] stock,
    output logic [7:0] can_sell
);  
assign can_sell = (credito >= price && stock > 0);
endmodule