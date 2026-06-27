module memory(
    input  logic clk,
    input  logic rst,
    input  logic [1:0] sel_item,
    output logic [7:0] stock,
    output logic [7:0] price,
    input  logic mem_read,
    input  logic mem_write

);


logic [15:0] memory_array [3:0]; // 4 Palavras de 16 bits cada
//[15:8] - Preço em centavos
//[7:0] - Estoque do produto 

initial begin
    // Inicializa a memória com os valores desejados
    memory_array[0] = 16'h1905; // Produto 0 - Café : Preço 25  centavos, Estoque 5
    memory_array[1] = 16'h3205; // Produto 1 - Água : Preço 50  centavos, Estoque 5
    memory_array[2] = 16'h4B03; // Produto 2 - Suco : Preço 75  centavos, Estoque 3
    memory_array[3] = 16'h6402; // Produto 3 - Snack: Preço 100 centavos, Estoque 2 
end


always_ff@(posedge clk)begin
    if(!nrst)begin
        stock <= 8'b0;
        price <= 8'b0;
    end else begin
        if(mem_read)begin
            stock <= memory_array[sel_item][7:0];
            price <= memory_array[sel_item][15:8];
        end 

        if(mem_write)begin
            memory_array[sel_item][7:0] <= stock-1;
        end
    end
end
endmodule