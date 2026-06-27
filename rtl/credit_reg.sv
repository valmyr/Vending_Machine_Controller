module credit_reg(
    input  logic clk,
    input  logic rst,
    input  logic credit_load,
    input  logic [1:0] coin_value,
    output logic [7:0] credit
);  


logic [7:0] mem [3:0]; // 4 Palavras de 8 bits cada
initial begin
    // Inicializa a memória com os valores desejados   ]
    mem[0] = 8'h00; // Moeda de 00 centavos  
    mem[1] = 8'h25; // Moeda de 25 centavos
    mem[2] = 8'h50; // Moeda de 50 centavos
    mem[3] = 8'h100; // Moeda de 100 centavos
end     
always_ff@(posedge clk)begin
    if(!rst)begin
        credit <= 8'b0;
    end else begin
        if(credit_load)begin
            credit <= credit + mem[coin_value];
        end
    end
end

endmodule