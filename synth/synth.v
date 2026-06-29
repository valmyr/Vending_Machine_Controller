/////////////////////////////////////////////////////////////
// Created by: Synopsys Design Compiler(R)
// Version   : X-2025.06-SP2
// Date      : Mon Jun 29 01:06:47 2026
/////////////////////////////////////////////////////////////


module control_vending_machine ( clk, rst, cancel, coin_in, confirm, sel_item, 
        error, dispense, change_out, display, state_out, mem_inst_stock, 
        mem_inst_price, mem_inst_mem_read, mem_inst_mem_write, 
        mem_inst_sel_item, comp_inst_credit, comp_inst_price, comp_inst_stock, 
        comp_inst_can_sell, credit_inst_credit_load, credit_inst_coin_value, 
        credit_inst_credit, sub_inst_credit, sub_inst_price, sub_inst_change
 );
  input [1:0] coin_in;
  input [1:0] sel_item;
  output [7:0] change_out;
  output [7:0] display;
  output [2:0] state_out;
  input [7:0] mem_inst_stock;
  input [7:0] mem_inst_price;
  output [1:0] mem_inst_sel_item;
  output [7:0] comp_inst_credit;
  output [7:0] comp_inst_price;
  output [7:0] comp_inst_stock;
  input [7:0] comp_inst_can_sell;
  output [1:0] credit_inst_coin_value;
  input [7:0] credit_inst_credit;
  output [7:0] sub_inst_credit;
  output [7:0] sub_inst_price;
  input [7:0] sub_inst_change;
  input clk, rst, cancel, confirm;
  output error, dispense, mem_inst_mem_read, mem_inst_mem_write,
         credit_inst_credit_load;


endmodule


module memory ( clk, rst, sel_item, stock, price, mem_read, mem_write );
  input [1:0] sel_item;
  output [7:0] stock;
  output [7:0] price;
  input clk, rst, mem_read, mem_write;
  wire   N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, \memory_array[3][15] ,
         \memory_array[3][14] , \memory_array[3][13] , \memory_array[3][12] ,
         \memory_array[3][11] , \memory_array[3][10] , \memory_array[3][9] ,
         \memory_array[3][8] , \memory_array[3][7] , \memory_array[3][6] ,
         \memory_array[3][5] , \memory_array[3][4] , \memory_array[3][3] ,
         \memory_array[3][2] , \memory_array[3][1] , \memory_array[3][0] ,
         \memory_array[2][15] , \memory_array[2][14] , \memory_array[2][13] ,
         \memory_array[2][12] , \memory_array[2][11] , \memory_array[2][10] ,
         \memory_array[2][9] , \memory_array[2][8] , \memory_array[2][7] ,
         \memory_array[2][6] , \memory_array[2][5] , \memory_array[2][4] ,
         \memory_array[2][3] , \memory_array[2][2] , \memory_array[2][1] ,
         \memory_array[2][0] , \memory_array[1][15] , \memory_array[1][14] ,
         \memory_array[1][13] , \memory_array[1][12] , \memory_array[1][11] ,
         \memory_array[1][10] , \memory_array[1][9] , \memory_array[1][8] ,
         \memory_array[1][7] , \memory_array[1][6] , \memory_array[1][5] ,
         \memory_array[1][4] , \memory_array[1][3] , \memory_array[1][2] ,
         \memory_array[1][1] , \memory_array[1][0] , \memory_array[0][15] ,
         \memory_array[0][14] , \memory_array[0][13] , \memory_array[0][12] ,
         \memory_array[0][11] , \memory_array[0][10] , \memory_array[0][9] ,
         \memory_array[0][8] , \memory_array[0][7] , \memory_array[0][6] ,
         \memory_array[0][5] , \memory_array[0][4] , \memory_array[0][3] ,
         \memory_array[0][2] , \memory_array[0][1] , \memory_array[0][0] ,
         \_cse_2[15] , \_cse_2[14] , \_cse_2[13] , \_cse_2[12] , \_cse_2[11] ,
         \_cse_2[10] , \_cse_2[9] , \_cse_2[8] , \_cse_2[7] , \_cse_2[6] ,
         \_cse_2[5] , \_cse_2[4] , \_cse_2[3] , \_cse_2[2] , \_cse_2[1] ,
         \_cse_2[0] , N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20,
         N21, N22, N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33, N34,
         N35, N36, N37, N38, N39, N40, N41, N42, N43, N44, N45, N46, N47, N48,
         N49, N50, N51, N52, N53, N54, N55, N56, N57, N58, N59, N60;

  \**SEQGEN**  \memory_array_reg[3][15]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[3][15] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[3][14]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[3][14] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[3][13]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[3][13] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[3][12]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[3][12] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[3][11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[3][11] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[3][10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[3][10] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[3][9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[3][9] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[3][8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[3][8] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[3][7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N54), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[3][7] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N59) );
  \**SEQGEN**  \memory_array_reg[3][6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N53), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[3][6] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N59) );
  \**SEQGEN**  \memory_array_reg[3][5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N52), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[3][5] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N59) );
  \**SEQGEN**  \memory_array_reg[3][4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N51), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[3][4] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N59) );
  \**SEQGEN**  \memory_array_reg[3][3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N50), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[3][3] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N59) );
  \**SEQGEN**  \memory_array_reg[3][2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N58), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[3][2] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N59) );
  \**SEQGEN**  \memory_array_reg[3][1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N57), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[3][1] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N59) );
  \**SEQGEN**  \memory_array_reg[3][0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N60), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[3][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N59) );
  \**SEQGEN**  \memory_array_reg[2][15]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[2][15] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[2][14]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[2][14] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[2][13]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[2][13] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[2][12]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[2][12] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[2][11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[2][11] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[2][10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[2][10] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[2][9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[2][9] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[2][8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[2][8] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[2][7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N54), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[2][7] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \memory_array_reg[2][6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N53), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[2][6] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \memory_array_reg[2][5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N52), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[2][5] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \memory_array_reg[2][4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N51), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[2][4] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \memory_array_reg[2][3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N50), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[2][3] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \memory_array_reg[2][2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N58), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[2][2] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \memory_array_reg[2][1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N57), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[2][1] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \memory_array_reg[2][0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N47), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[2][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N56) );
  \**SEQGEN**  \memory_array_reg[1][15]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[1][15] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[1][14]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[1][14] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[1][13]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[1][13] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[1][12]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[1][12] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[1][11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[1][11] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[1][10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[1][10] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[1][9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[1][9] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[1][8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[1][8] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[1][7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N54), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[1][7] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N55) );
  \**SEQGEN**  \memory_array_reg[1][6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N53), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[1][6] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N55) );
  \**SEQGEN**  \memory_array_reg[1][5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N52), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[1][5] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N55) );
  \**SEQGEN**  \memory_array_reg[1][4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N51), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[1][4] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N55) );
  \**SEQGEN**  \memory_array_reg[1][3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N50), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[1][3] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N55) );
  \**SEQGEN**  \memory_array_reg[1][2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N49), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[1][2] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N55) );
  \**SEQGEN**  \memory_array_reg[1][1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N48), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[1][1] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N55) );
  \**SEQGEN**  \memory_array_reg[1][0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N47), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[1][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N55) );
  \**SEQGEN**  \memory_array_reg[0][15]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[0][15] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[0][14]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[0][14] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[0][13]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[0][13] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[0][12]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[0][12] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[0][11]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[0][11] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[0][10]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[0][10] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[0][9]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[0][9] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[0][8]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), 
        .Q(\memory_array[0][8] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(rst) );
  \**SEQGEN**  \memory_array_reg[0][7]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N54), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[0][7] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N46) );
  \**SEQGEN**  \memory_array_reg[0][6]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N53), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[0][6] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N46) );
  \**SEQGEN**  \memory_array_reg[0][5]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N52), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[0][5] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N46) );
  \**SEQGEN**  \memory_array_reg[0][4]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N51), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[0][4] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N46) );
  \**SEQGEN**  \memory_array_reg[0][3]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N50), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[0][3] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N46) );
  \**SEQGEN**  \memory_array_reg[0][2]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N49), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[0][2] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N46) );
  \**SEQGEN**  \memory_array_reg[0][1]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N48), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[0][1] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N46) );
  \**SEQGEN**  \memory_array_reg[0][0]  ( .clear(1'b0), .preset(1'b0), 
        .next_state(N47), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(
        \memory_array[0][0] ), .synch_clear(1'b0), .synch_preset(1'b0), 
        .synch_toggle(1'b0), .synch_enable(N46) );
  \**SEQGEN**  \stock_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N37), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(stock[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N29) );
  \**SEQGEN**  \stock_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N36), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(stock[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N29) );
  \**SEQGEN**  \stock_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N35), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(stock[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N29) );
  \**SEQGEN**  \stock_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N34), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(stock[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N29) );
  \**SEQGEN**  \stock_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N33), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(stock[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N29) );
  \**SEQGEN**  \stock_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N32), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(stock[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N29) );
  \**SEQGEN**  \stock_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N31), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(stock[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N29) );
  \**SEQGEN**  \stock_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N30), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(stock[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N29) );
  \**SEQGEN**  \price_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N45), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(price[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N29) );
  \**SEQGEN**  \price_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N44), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(price[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N29) );
  \**SEQGEN**  \price_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N43), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(price[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N29) );
  \**SEQGEN**  \price_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N42), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(price[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N29) );
  \**SEQGEN**  \price_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N41), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(price[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N29) );
  \**SEQGEN**  \price_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N40), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(price[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N29) );
  \**SEQGEN**  \price_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N39), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(price[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N29) );
  \**SEQGEN**  \price_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N38), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(price[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N29) );
  SUB_UNS_OP sub_30 ( .A(stock), .B(1'b1), .Z({N24, N23, N22, N21, N20, N19, 
        N18, N17}) );
  GTECH_AND2 C278 ( .A(sel_item[0]), .B(sel_item[1]), .Z(N16) );
  GTECH_AND2 C279 ( .A(N0), .B(sel_item[1]), .Z(N15) );
  GTECH_NOT I_0 ( .A(sel_item[0]), .Z(N0) );
  GTECH_AND2 C280 ( .A(sel_item[0]), .B(N1), .Z(N14) );
  GTECH_NOT I_1 ( .A(sel_item[1]), .Z(N1) );
  GTECH_AND2 C281 ( .A(N2), .B(N3), .Z(N13) );
  GTECH_NOT I_2 ( .A(sel_item[0]), .Z(N2) );
  GTECH_NOT I_3 ( .A(sel_item[1]), .Z(N3) );
  SELECT_OP C282 ( .DATA1({N16, N15, N14, N13}), .DATA2({1'b0, 1'b0, 1'b0, 
        1'b0}), .CONTROL1(N4), .CONTROL2(N5), .Z({N28, N27, N26, N25}) );
  GTECH_BUF B_0 ( .A(mem_write), .Z(N4) );
  GTECH_BUF B_1 ( .A(N12), .Z(N5) );
  SELECT_OP C283 ( .DATA1(1'b1), .DATA2(mem_read), .CONTROL1(N6), .CONTROL2(N7), .Z(N29) );
  GTECH_BUF B_2 ( .A(rst), .Z(N6) );
  GTECH_BUF B_3 ( .A(N10), .Z(N7) );
  SELECT_OP C284 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .DATA2({\_cse_2[7] , \_cse_2[6] , \_cse_2[5] , \_cse_2[4] , 
        \_cse_2[3] , \_cse_2[2] , \_cse_2[1] , \_cse_2[0] }), .CONTROL1(N6), 
        .CONTROL2(N7), .Z({N37, N36, N35, N34, N33, N32, N31, N30}) );
  SELECT_OP C285 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .DATA2({\_cse_2[15] , \_cse_2[14] , \_cse_2[13] , \_cse_2[12] , 
        \_cse_2[11] , \_cse_2[10] , \_cse_2[9] , \_cse_2[8] }), .CONTROL1(N6), 
        .CONTROL2(N7), .Z({N45, N44, N43, N42, N41, N40, N39, N38}) );
  SELECT_OP C286 ( .DATA1({1'b1, 1'b1, 1'b1, 1'b1}), .DATA2({N28, N27, N26, 
        N25}), .CONTROL1(N6), .CONTROL2(N7), .Z({N59, N56, N55, N46}) );
  SELECT_OP C287 ( .DATA1({1'b0, 1'b0, 1'b1, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 
        1'b1, 1'b0, 1'b1}), .DATA2({N17, N19, N18, N24, N23, N22, N21, N20, 
        N19, N18, N17}), .CONTROL1(N6), .CONTROL2(N7), .Z({N60, N58, N57, N54, 
        N53, N52, N51, N50, N49, N48, N47}) );
  MUX_OP C288 ( .D0({\memory_array[0][0] , \memory_array[0][1] , 
        \memory_array[0][2] , \memory_array[0][3] , \memory_array[0][4] , 
        \memory_array[0][5] , \memory_array[0][6] , \memory_array[0][7] , 
        \memory_array[0][8] , \memory_array[0][9] , \memory_array[0][10] , 
        \memory_array[0][11] , \memory_array[0][12] , \memory_array[0][13] , 
        \memory_array[0][14] , \memory_array[0][15] }), .D1({
        \memory_array[1][0] , \memory_array[1][1] , \memory_array[1][2] , 
        \memory_array[1][3] , \memory_array[1][4] , \memory_array[1][5] , 
        \memory_array[1][6] , \memory_array[1][7] , \memory_array[1][8] , 
        \memory_array[1][9] , \memory_array[1][10] , \memory_array[1][11] , 
        \memory_array[1][12] , \memory_array[1][13] , \memory_array[1][14] , 
        \memory_array[1][15] }), .D2({\memory_array[2][0] , 
        \memory_array[2][1] , \memory_array[2][2] , \memory_array[2][3] , 
        \memory_array[2][4] , \memory_array[2][5] , \memory_array[2][6] , 
        \memory_array[2][7] , \memory_array[2][8] , \memory_array[2][9] , 
        \memory_array[2][10] , \memory_array[2][11] , \memory_array[2][12] , 
        \memory_array[2][13] , \memory_array[2][14] , \memory_array[2][15] }), 
        .D3({\memory_array[3][0] , \memory_array[3][1] , \memory_array[3][2] , 
        \memory_array[3][3] , \memory_array[3][4] , \memory_array[3][5] , 
        \memory_array[3][6] , \memory_array[3][7] , \memory_array[3][8] , 
        \memory_array[3][9] , \memory_array[3][10] , \memory_array[3][11] , 
        \memory_array[3][12] , \memory_array[3][13] , \memory_array[3][14] , 
        \memory_array[3][15] }), .S0(N8), .S1(N9), .Z({\_cse_2[0] , 
        \_cse_2[1] , \_cse_2[2] , \_cse_2[3] , \_cse_2[4] , \_cse_2[5] , 
        \_cse_2[6] , \_cse_2[7] , \_cse_2[8] , \_cse_2[9] , \_cse_2[10] , 
        \_cse_2[11] , \_cse_2[12] , \_cse_2[13] , \_cse_2[14] , \_cse_2[15] })
         );
  GTECH_BUF B_4 ( .A(sel_item[0]), .Z(N8) );
  GTECH_BUF B_5 ( .A(sel_item[1]), .Z(N9) );
  GTECH_NOT I_4 ( .A(rst), .Z(N10) );
  GTECH_BUF B_6 ( .A(N10), .Z(N11) );
  GTECH_NOT I_5 ( .A(mem_write), .Z(N12) );
  GTECH_AND2 C299 ( .A(N11), .B(mem_write) );
endmodule


module credit_reg ( clk, rst, credit_load, coin_value, credit );
  input [1:0] coin_value;
  output [7:0] credit;
  input clk, rst, credit_load;
  wire   N0, N1, N2, N3, N4, \mem[3][7] , \mem[3][6] , \mem[3][5] ,
         \mem[3][4] , \mem[3][3] , \mem[3][2] , \mem[3][1] , \mem[3][0] ,
         \mem[2][7] , \mem[2][6] , \mem[2][5] , \mem[2][4] , \mem[2][3] ,
         \mem[2][2] , \mem[2][1] , \mem[2][0] , \mem[1][7] , \mem[1][6] ,
         \mem[1][5] , \mem[1][4] , \mem[1][3] , \mem[1][2] , \mem[1][1] ,
         \mem[1][0] , \mem[0][7] , \mem[0][6] , \mem[0][5] , \mem[0][4] ,
         \mem[0][3] , \mem[0][2] , \mem[0][1] , \mem[0][0] , N5, N6, N7, N8,
         N9, N10, N11, N12, N13, N14, N15, N16, N17, N18, N19, N20, N21, N22,
         N23, N24, N25, N26, N27, N28, N29, N30, N31, N32, N33;

  \**SEQGEN**  \mem_reg[3][7]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[3][7] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[3][6]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[3][6] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[3][5]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[3][5] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[3][4]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[3][4] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[3][3]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[3][3] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[3][2]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[3][2] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[3][1]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[3][1] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[3][0]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[3][0] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[2][7]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[2][7] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[2][6]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[2][6] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[2][5]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[2][5] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[2][4]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[2][4] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[2][3]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[2][3] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[2][2]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[2][2] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[2][1]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[2][1] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[2][0]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[2][0] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[1][7]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[1][7] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[1][6]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[1][6] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[1][5]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[1][5] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[1][4]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[1][4] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[1][3]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[1][3] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[1][2]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[1][2] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[1][1]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[1][1] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[1][0]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b1), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[1][0] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[0][7]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[0][7] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[0][6]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[0][6] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[0][5]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[0][5] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[0][4]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[0][4] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[0][3]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[0][3] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[0][2]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[0][2] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[0][1]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[0][1] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \mem_reg[0][0]  ( .clear(1'b0), .preset(1'b0), .next_state(1'b0), .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(\mem[0][0] ), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N31) );
  \**SEQGEN**  \credit_reg[7]  ( .clear(1'b0), .preset(1'b0), .next_state(N30), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(credit[7]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N22) );
  \**SEQGEN**  \credit_reg[6]  ( .clear(1'b0), .preset(1'b0), .next_state(N29), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(credit[6]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N22) );
  \**SEQGEN**  \credit_reg[5]  ( .clear(1'b0), .preset(1'b0), .next_state(N28), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(credit[5]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N22) );
  \**SEQGEN**  \credit_reg[4]  ( .clear(1'b0), .preset(1'b0), .next_state(N27), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(credit[4]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N22) );
  \**SEQGEN**  \credit_reg[3]  ( .clear(1'b0), .preset(1'b0), .next_state(N26), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(credit[3]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N22) );
  \**SEQGEN**  \credit_reg[2]  ( .clear(1'b0), .preset(1'b0), .next_state(N25), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(credit[2]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N22) );
  \**SEQGEN**  \credit_reg[1]  ( .clear(1'b0), .preset(1'b0), .next_state(N24), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(credit[1]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N22) );
  \**SEQGEN**  \credit_reg[0]  ( .clear(1'b0), .preset(1'b0), .next_state(N23), 
        .clocked_on(clk), .data_in(1'b0), .enable(1'b0), .Q(credit[0]), 
        .synch_clear(1'b0), .synch_preset(1'b0), .synch_toggle(1'b0), 
        .synch_enable(N22) );
  ADD_UNS_OP add_21 ( .A(credit), .B({N6, N7, N8, N9, N10, N11, N12, N13}), 
        .Z({N21, N20, N19, N18, N17, N16, N15, N14}) );
  SELECT_OP C99 ( .DATA1(1'b1), .DATA2(1'b1), .DATA3(1'b0), .CONTROL1(N0), 
        .CONTROL2(N33), .CONTROL3(N4), .Z(N22) );
  GTECH_BUF B_0 ( .A(rst), .Z(N0) );
  SELECT_OP C100 ( .DATA1({1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0, 1'b0}), 
        .DATA2({N21, N20, N19, N18, N17, N16, N15, N14}), .CONTROL1(N0), 
        .CONTROL2(N33), .Z({N30, N29, N28, N27, N26, N25, N24, N23}) );
  SELECT_OP C101 ( .DATA1(1'b1), .DATA2(1'b0), .DATA3(1'b0), .CONTROL1(N0), 
        .CONTROL2(N33), .CONTROL3(N4), .Z(N31) );
  MUX_OP C102 ( .D0({\mem[0][0] , \mem[0][1] , \mem[0][2] , \mem[0][3] , 
        \mem[0][4] , \mem[0][5] , \mem[0][6] , \mem[0][7] }), .D1({\mem[1][0] , 
        \mem[1][1] , \mem[1][2] , \mem[1][3] , \mem[1][4] , \mem[1][5] , 
        \mem[1][6] , \mem[1][7] }), .D2({\mem[2][0] , \mem[2][1] , \mem[2][2] , 
        \mem[2][3] , \mem[2][4] , \mem[2][5] , \mem[2][6] , \mem[2][7] }), 
        .D3({\mem[3][0] , \mem[3][1] , \mem[3][2] , \mem[3][3] , \mem[3][4] , 
        \mem[3][5] , \mem[3][6] , \mem[3][7] }), .S0(N1), .S1(N2), .Z({N13, 
        N12, N11, N10, N9, N8, N7, N6}) );
  GTECH_BUF B_1 ( .A(coin_value[0]), .Z(N1) );
  GTECH_BUF B_2 ( .A(coin_value[1]), .Z(N2) );
  GTECH_OR2 C107 ( .A(credit_load), .B(rst), .Z(N3) );
  GTECH_NOT I_0 ( .A(N3), .Z(N4) );
  GTECH_BUF B_3 ( .A(N33), .Z(N5) );
  GTECH_NOT I_1 ( .A(rst), .Z(N32) );
  GTECH_AND2 C111 ( .A(credit_load), .B(N32), .Z(N33) );
  GTECH_AND2 C112 ( .A(N5), .B(N32) );
endmodule


module comparator ( credit, price, stock, can_sell );
  input [7:0] credit;
  input [7:0] price;
  input [7:0] stock;
  output [7:0] can_sell;
  wire   N0, N1;
  assign can_sell[1] = 1'b0;
  assign can_sell[2] = 1'b0;
  assign can_sell[3] = 1'b0;
  assign can_sell[4] = 1'b0;
  assign can_sell[5] = 1'b0;
  assign can_sell[6] = 1'b0;
  assign can_sell[7] = 1'b0;

  GEQ_UNS_OP gte_7 ( .A(credit), .B(price), .Z(N0) );
  GT_UNS_OP gt_7 ( .A(stock), .B(1'b0), .Z(N1) );
  GTECH_AND2 C8 ( .A(N0), .B(N1), .Z(can_sell[0]) );
endmodule


module subtractor ( credit, price, change );
  input [7:0] credit;
  input [7:0] price;
  output [7:0] change;


  SUB_UNS_OP sub_6 ( .A(credit), .B(price), .Z(change) );
endmodule


module Vending_Top ( clk, rst, confirm, cancel, sel_item, coin_in, dispense, 
        error, change_out, display, state_out );
  input [1:0] sel_item;
  input [1:0] coin_in;
  output [7:0] change_out;
  output [7:0] display;
  output [2:0] state_out;
  input clk, rst, confirm, cancel;
  output dispense, error;
  wire   mem_inst_mem_read, mem_inst_mem_write, credit_inst_credit_load;
  wire   [1:0] mem_inst_sel_item;
  wire   [7:0] mem_inst_stock;
  wire   [7:0] mem_inst_price;
  wire   [1:0] credit_inst_coin_value;
  wire   [7:0] credit_inst_credit;
  wire   [7:0] comp_inst_credit;
  wire   [7:0] comp_inst_price;
  wire   [7:0] comp_inst_stock;
  wire   [7:0] comp_inst_can_sell;
  wire   [7:0] sub_inst_credit;
  wire   [7:0] sub_inst_price;
  wire   [7:0] sub_inst_change;

  memory u_mem_unit ( .clk(clk), .rst(rst), .sel_item(mem_inst_sel_item), 
        .stock(mem_inst_stock), .price(mem_inst_price), .mem_read(
        mem_inst_mem_read), .mem_write(mem_inst_mem_write) );
  credit_reg u_credit_unit ( .clk(clk), .rst(rst), .credit_load(
        credit_inst_credit_load), .coin_value(credit_inst_coin_value), 
        .credit(credit_inst_credit) );
  comparator u_comp_unit ( .credit(comp_inst_credit), .price(comp_inst_price), 
        .stock(comp_inst_stock), .can_sell(comp_inst_can_sell) );
  subtractor u_sub_unit ( .credit(sub_inst_credit), .price(sub_inst_price), 
        .change(sub_inst_change) );
  control_vending_machine u_control_unit ( .clk(clk), .rst(rst), .cancel(
        cancel), .coin_in(coin_in), .confirm(confirm), .sel_item(sel_item), 
        .error(error), .dispense(dispense), .change_out(change_out), .display(
        display), .state_out(state_out), .mem_inst_stock(mem_inst_stock), 
        .mem_inst_price(mem_inst_price), .mem_inst_mem_read(mem_inst_mem_read), 
        .mem_inst_mem_write(mem_inst_mem_write), .mem_inst_sel_item(
        mem_inst_sel_item), .comp_inst_credit(comp_inst_credit), 
        .comp_inst_price(comp_inst_price), .comp_inst_stock(comp_inst_stock), 
        .comp_inst_can_sell(comp_inst_can_sell), .credit_inst_credit_load(
        credit_inst_credit_load), .credit_inst_coin_value(
        credit_inst_coin_value), .credit_inst_credit(credit_inst_credit), 
        .sub_inst_credit(sub_inst_credit), .sub_inst_price(sub_inst_price), 
        .sub_inst_change(sub_inst_change) );
endmodule

