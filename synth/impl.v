/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : X-2025.06-SP2
// Date      : Mon Jun 29 01:18:40 2026
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


module Vending_Top ( clk, rst, confirm, cancel, sel_item, coin_in, dispense, 
        error, change_out, display, state_out );
  input [1:0] sel_item;
  input [1:0] coin_in;
  output [7:0] change_out;
  output [7:0] display;
  output [2:0] state_out;
  input clk, rst, confirm, cancel;
  output dispense, error;
  wire   mem_inst_mem_read, mem_inst_mem_write, credit_inst_credit_load,
         \comp_inst_can_sell[0] , \u_mem_unit/memory_array[3][7] ,
         \u_mem_unit/memory_array[3][6] , \u_mem_unit/memory_array[3][5] ,
         \u_mem_unit/memory_array[3][4] , \u_mem_unit/memory_array[3][3] ,
         \u_mem_unit/memory_array[3][2] , \u_mem_unit/memory_array[3][1] ,
         \u_mem_unit/memory_array[3][0] , \u_mem_unit/memory_array[2][7] ,
         \u_mem_unit/memory_array[2][6] , \u_mem_unit/memory_array[2][5] ,
         \u_mem_unit/memory_array[2][4] , \u_mem_unit/memory_array[2][3] ,
         \u_mem_unit/memory_array[2][2] , \u_mem_unit/memory_array[2][1] ,
         \u_mem_unit/memory_array[2][0] , \u_mem_unit/memory_array[1][7] ,
         \u_mem_unit/memory_array[1][6] , \u_mem_unit/memory_array[1][5] ,
         \u_mem_unit/memory_array[1][4] , \u_mem_unit/memory_array[1][3] ,
         \u_mem_unit/memory_array[1][2] , \u_mem_unit/memory_array[1][1] ,
         \u_mem_unit/memory_array[1][0] , \u_mem_unit/memory_array[0][7] ,
         \u_mem_unit/memory_array[0][6] , \u_mem_unit/memory_array[0][5] ,
         \u_mem_unit/memory_array[0][4] , \u_mem_unit/memory_array[0][3] ,
         \u_mem_unit/memory_array[0][2] , \u_mem_unit/memory_array[0][1] ,
         \u_mem_unit/memory_array[0][0] , n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74,
         n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88,
         n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101,
         n102, n103, n104, n105, n106, n107, n108, n114, n115, n116, n117,
         n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128,
         n129, n130, n131, n132, n133, n134, n135, n136, n137, n138, n139,
         n140, n141, n142, n143, n144, n145, n146, n147, n148, n149, n150,
         n151, n152, n153, n154, n155, n156, n157, n158, n159, n160, n161,
         n162, n163, n164, n165, n166, n167, n168, n169, n170, n171, n172,
         n173, n174, n175, n176, n177, n178, n179, n180, n181, n182, n183,
         n184, n185, n186, n187, n188, n189, n190, n191, n192, n193, n194,
         n195, n196, n197, n198, n199, n200, n201, n202, n203, n204, n205,
         n206, n207, n208, n209, n210, n211, n212, n213, n214, n215, n216,
         n217, n218, n219, n220, n221, n222, n223, n224, n225, n226, n227,
         n228, n229, n230, n231, n232, n233, n234, n235, n236, n237, n238,
         n239, n240, n241, n242, n243, n244, n245, n246, n247, n248;
  wire   [1:0] mem_inst_sel_item;
  wire   [7:0] mem_inst_stock;
  wire   [7:0] mem_inst_price;
  wire   [1:0] credit_inst_coin_value;
  wire   [7:0] credit_inst_credit;
  wire   [7:0] comp_inst_credit;
  wire   [7:0] comp_inst_price;
  wire   [7:0] comp_inst_stock;
  wire   [7:0] sub_inst_credit;
  wire   [7:0] sub_inst_price;
  wire   [7:0] sub_inst_change;

  control_vending_machine u_control_unit ( .clk(clk), .rst(rst), .cancel(
        cancel), .coin_in(coin_in), .confirm(confirm), .sel_item(sel_item), 
        .error(error), .dispense(dispense), .change_out(change_out), .display(
        display), .state_out(state_out), .mem_inst_stock(mem_inst_stock), 
        .mem_inst_price({1'b0, mem_inst_price[6:0]}), .mem_inst_mem_read(
        mem_inst_mem_read), .mem_inst_mem_write(mem_inst_mem_write), 
        .mem_inst_sel_item(mem_inst_sel_item), .comp_inst_credit(
        comp_inst_credit), .comp_inst_price(comp_inst_price), 
        .comp_inst_stock(comp_inst_stock), .comp_inst_can_sell({1'b0, 1'b0, 
        1'b0, 1'b0, 1'b0, 1'b0, 1'b0, \comp_inst_can_sell[0] }), 
        .credit_inst_credit_load(credit_inst_credit_load), 
        .credit_inst_coin_value(credit_inst_coin_value), .credit_inst_credit(
        credit_inst_credit), .sub_inst_credit(sub_inst_credit), 
        .sub_inst_price(sub_inst_price), .sub_inst_change(sub_inst_change) );
  DFFX1_RVT \u_credit_unit/credit_reg[0]  ( .D(n106), .CLK(clk), .Q(
        credit_inst_credit[0]), .QN(n248) );
  DFFX1_RVT \u_credit_unit/credit_reg[6]  ( .D(n107), .CLK(clk), .Q(
        credit_inst_credit[6]), .QN(n247) );
  DFFX1_RVT \u_credit_unit/credit_reg[1]  ( .D(n101), .CLK(clk), .Q(
        credit_inst_credit[1]), .QN(n246) );
  DFFX1_RVT \u_credit_unit/credit_reg[2]  ( .D(n102), .CLK(clk), .Q(
        credit_inst_credit[2]), .QN(n245) );
  DFFX1_RVT \u_credit_unit/credit_reg[3]  ( .D(n103), .CLK(clk), .Q(
        credit_inst_credit[3]), .QN(n244) );
  DFFX1_RVT \u_mem_unit/stock_reg[2]  ( .D(n66), .CLK(clk), .Q(
        mem_inst_stock[2]), .QN(n243) );
  DFFX1_RVT \u_mem_unit/stock_reg[0]  ( .D(n68), .CLK(clk), .Q(
        mem_inst_stock[0]), .QN(n242) );
  DFFX1_RVT \u_credit_unit/credit_reg[4]  ( .D(n104), .CLK(clk), .Q(
        credit_inst_credit[4]), .QN(n241) );
  DFFX1_RVT \u_credit_unit/credit_reg[5]  ( .D(n105), .CLK(clk), .Q(
        credit_inst_credit[5]), .QN(n240) );
  DFFX1_RVT \u_mem_unit/price_reg[0]  ( .D(n60), .CLK(clk), .Q(
        mem_inst_price[0]) );
  DFFX1_RVT \u_mem_unit/price_reg[3]  ( .D(n57), .CLK(clk), .Q(
        mem_inst_price[3]) );
  DFFX1_RVT \u_mem_unit/price_reg[4]  ( .D(n56), .CLK(clk), .Q(
        mem_inst_price[4]) );
  DFFX1_RVT \u_mem_unit/price_reg[1]  ( .D(n59), .CLK(clk), .Q(
        mem_inst_price[1]) );
  DFFX1_RVT \u_mem_unit/price_reg[2]  ( .D(n58), .CLK(clk), .Q(
        mem_inst_price[2]) );
  DFFX1_RVT \u_mem_unit/price_reg[5]  ( .D(n55), .CLK(clk), .Q(
        mem_inst_price[5]) );
  DFFX1_RVT \u_mem_unit/price_reg[6]  ( .D(n54), .CLK(clk), .Q(
        mem_inst_price[6]) );
  DFFX1_RVT \u_credit_unit/credit_reg[7]  ( .D(n108), .CLK(clk), .Q(
        credit_inst_credit[7]) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[2][6]  ( .D(n82), .CLK(clk), .Q(
        \u_mem_unit/memory_array[2][6] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[2][5]  ( .D(n81), .CLK(clk), .Q(
        \u_mem_unit/memory_array[2][5] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[2][4]  ( .D(n80), .CLK(clk), .Q(
        \u_mem_unit/memory_array[2][4] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[2][3]  ( .D(n79), .CLK(clk), .Q(
        \u_mem_unit/memory_array[2][3] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[2][2]  ( .D(n78), .CLK(clk), .Q(
        \u_mem_unit/memory_array[2][2] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[0][0]  ( .D(n100), .CLK(clk), .Q(
        \u_mem_unit/memory_array[0][0] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[0][2]  ( .D(n94), .CLK(clk), .Q(
        \u_mem_unit/memory_array[0][2] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[0][6]  ( .D(n98), .CLK(clk), .Q(
        \u_mem_unit/memory_array[0][6] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[0][5]  ( .D(n97), .CLK(clk), .Q(
        \u_mem_unit/memory_array[0][5] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[0][4]  ( .D(n96), .CLK(clk), .Q(
        \u_mem_unit/memory_array[0][4] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[0][3]  ( .D(n95), .CLK(clk), .Q(
        \u_mem_unit/memory_array[0][3] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[0][1]  ( .D(n93), .CLK(clk), .Q(
        \u_mem_unit/memory_array[0][1] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[2][0]  ( .D(n84), .CLK(clk), .Q(
        \u_mem_unit/memory_array[2][0] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[3][6]  ( .D(n74), .CLK(clk), .Q(
        \u_mem_unit/memory_array[3][6] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[3][5]  ( .D(n73), .CLK(clk), .Q(
        \u_mem_unit/memory_array[3][5] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[3][4]  ( .D(n72), .CLK(clk), .Q(
        \u_mem_unit/memory_array[3][4] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[3][3]  ( .D(n71), .CLK(clk), .Q(
        \u_mem_unit/memory_array[3][3] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[3][2]  ( .D(n70), .CLK(clk), .Q(
        \u_mem_unit/memory_array[3][2] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[3][0]  ( .D(n76), .CLK(clk), .Q(
        \u_mem_unit/memory_array[3][0] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[2][7]  ( .D(n83), .CLK(clk), .Q(
        \u_mem_unit/memory_array[2][7] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[1][2]  ( .D(n86), .CLK(clk), .Q(
        \u_mem_unit/memory_array[1][2] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[1][6]  ( .D(n90), .CLK(clk), .Q(
        \u_mem_unit/memory_array[1][6] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[1][5]  ( .D(n89), .CLK(clk), .Q(
        \u_mem_unit/memory_array[1][5] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[1][4]  ( .D(n88), .CLK(clk), .Q(
        \u_mem_unit/memory_array[1][4] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[1][3]  ( .D(n87), .CLK(clk), .Q(
        \u_mem_unit/memory_array[1][3] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[1][1]  ( .D(n85), .CLK(clk), .Q(
        \u_mem_unit/memory_array[1][1] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[0][7]  ( .D(n99), .CLK(clk), .Q(
        \u_mem_unit/memory_array[0][7] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[1][0]  ( .D(n92), .CLK(clk), .Q(
        \u_mem_unit/memory_array[1][0] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[1][7]  ( .D(n91), .CLK(clk), .Q(
        \u_mem_unit/memory_array[1][7] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[2][1]  ( .D(n77), .CLK(clk), .Q(
        \u_mem_unit/memory_array[2][1] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[3][1]  ( .D(n69), .CLK(clk), .Q(
        \u_mem_unit/memory_array[3][1] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[3][7]  ( .D(n75), .CLK(clk), .Q(
        \u_mem_unit/memory_array[3][7] ) );
  DFFX1_RVT \u_mem_unit/stock_reg[7]  ( .D(n61), .CLK(clk), .Q(
        mem_inst_stock[7]) );
  DFFX1_RVT \u_mem_unit/stock_reg[3]  ( .D(n65), .CLK(clk), .Q(
        mem_inst_stock[3]) );
  DFFX1_RVT \u_mem_unit/stock_reg[4]  ( .D(n64), .CLK(clk), .Q(
        mem_inst_stock[4]) );
  DFFX1_RVT \u_mem_unit/stock_reg[5]  ( .D(n63), .CLK(clk), .Q(
        mem_inst_stock[5]) );
  DFFX1_RVT \u_mem_unit/stock_reg[6]  ( .D(n62), .CLK(clk), .Q(
        mem_inst_stock[6]) );
  DFFX1_RVT \u_mem_unit/stock_reg[1]  ( .D(n67), .CLK(clk), .Q(
        mem_inst_stock[1]) );
  INVX0_RVT U115 ( .A(rst), .Y(n213) );
  AND2X1_RVT U116 ( .A1(n114), .A2(n115), .Y(n163) );
  AND2X1_RVT U117 ( .A1(credit_inst_credit_load), .A2(n165), .Y(n114) );
  NAND2X0_RVT U118 ( .A1(n166), .A2(n247), .Y(n115) );
  INVX0_RVT U119 ( .A(sub_inst_credit[6]), .Y(n135) );
  INVX0_RVT U120 ( .A(sub_inst_credit[5]), .Y(n118) );
  INVX0_RVT U121 ( .A(sub_inst_credit[4]), .Y(n121) );
  INVX0_RVT U122 ( .A(sub_inst_credit[3]), .Y(n124) );
  INVX0_RVT U123 ( .A(sub_inst_credit[2]), .Y(n127) );
  INVX0_RVT U124 ( .A(sub_inst_credit[1]), .Y(n129) );
  INVX0_RVT U125 ( .A(sub_inst_price[0]), .Y(n132) );
  NOR2X0_RVT U126 ( .A1(n132), .A2(sub_inst_credit[0]), .Y(n131) );
  INVX0_RVT U127 ( .A(n116), .Y(sub_inst_change[6]) );
  FADDX1_RVT U128 ( .A(sub_inst_price[5]), .B(n118), .CI(n117), .CO(n134), .S(
        n119) );
  INVX0_RVT U129 ( .A(n119), .Y(sub_inst_change[5]) );
  FADDX1_RVT U130 ( .A(sub_inst_price[4]), .B(n121), .CI(n120), .CO(n117), .S(
        n122) );
  INVX0_RVT U131 ( .A(n122), .Y(sub_inst_change[4]) );
  FADDX1_RVT U132 ( .A(sub_inst_price[3]), .B(n124), .CI(n123), .CO(n120), .S(
        n125) );
  INVX0_RVT U133 ( .A(n125), .Y(sub_inst_change[3]) );
  FADDX1_RVT U134 ( .A(sub_inst_price[2]), .B(n127), .CI(n126), .CO(n123), .S(
        n128) );
  INVX0_RVT U135 ( .A(n128), .Y(sub_inst_change[2]) );
  FADDX1_RVT U136 ( .A(sub_inst_price[1]), .B(n129), .CI(n131), .CO(n126), .S(
        n130) );
  INVX0_RVT U137 ( .A(n130), .Y(sub_inst_change[1]) );
  AO21X1_RVT U138 ( .A1(sub_inst_credit[0]), .A2(n132), .A3(n131), .Y(
        sub_inst_change[0]) );
  AND2X1_RVT U139 ( .A1(mem_inst_mem_read), .A2(n213), .Y(n239) );
  INVX0_RVT U140 ( .A(mem_inst_sel_item[0]), .Y(n236) );
  AND3X1_RVT U141 ( .A1(mem_inst_sel_item[1]), .A2(n239), .A3(n236), .Y(n233)
         );
  INVX0_RVT U142 ( .A(mem_inst_sel_item[1]), .Y(n237) );
  AND2X1_RVT U143 ( .A1(mem_inst_sel_item[0]), .A2(n237), .Y(n231) );
  NOR2X0_RVT U144 ( .A1(rst), .A2(mem_inst_mem_read), .Y(n238) );
  AO22X1_RVT U145 ( .A1(n231), .A2(n239), .A3(n238), .A4(mem_inst_price[1]), 
        .Y(n133) );
  OR2X1_RVT U146 ( .A1(n233), .A2(n133), .Y(n59) );
  FADDX1_RVT U147 ( .A(sub_inst_price[6]), .B(n135), .CI(n134), .CO(n136), .S(
        n116) );
  FADDX1_RVT U148 ( .A(n136), .B(sub_inst_price[7]), .CI(sub_inst_credit[7]), 
        .S(sub_inst_change[7]) );
  INVX0_RVT U149 ( .A(comp_inst_price[1]), .Y(n139) );
  INVX0_RVT U150 ( .A(comp_inst_credit[0]), .Y(n137) );
  NAND2X0_RVT U151 ( .A1(comp_inst_price[0]), .A2(n137), .Y(n138) );
  AO222X1_RVT U152 ( .A1(comp_inst_credit[1]), .A2(n139), .A3(
        comp_inst_credit[1]), .A4(n138), .A5(n139), .A6(n138), .Y(n141) );
  INVX0_RVT U153 ( .A(comp_inst_price[2]), .Y(n140) );
  AO222X1_RVT U154 ( .A1(comp_inst_credit[2]), .A2(n141), .A3(
        comp_inst_credit[2]), .A4(n140), .A5(n141), .A6(n140), .Y(n143) );
  INVX0_RVT U155 ( .A(comp_inst_price[3]), .Y(n142) );
  AO222X1_RVT U156 ( .A1(comp_inst_credit[3]), .A2(n143), .A3(
        comp_inst_credit[3]), .A4(n142), .A5(n143), .A6(n142), .Y(n145) );
  INVX0_RVT U157 ( .A(comp_inst_price[4]), .Y(n144) );
  AO222X1_RVT U158 ( .A1(comp_inst_credit[4]), .A2(n145), .A3(
        comp_inst_credit[4]), .A4(n144), .A5(n145), .A6(n144), .Y(n147) );
  INVX0_RVT U159 ( .A(comp_inst_price[5]), .Y(n146) );
  AO222X1_RVT U160 ( .A1(comp_inst_credit[5]), .A2(n147), .A3(
        comp_inst_credit[5]), .A4(n146), .A5(n147), .A6(n146), .Y(n149) );
  INVX0_RVT U161 ( .A(comp_inst_price[6]), .Y(n148) );
  AO222X1_RVT U162 ( .A1(comp_inst_credit[6]), .A2(n149), .A3(
        comp_inst_credit[6]), .A4(n148), .A5(n149), .A6(n148), .Y(n151) );
  INVX0_RVT U163 ( .A(comp_inst_price[7]), .Y(n150) );
  AO222X1_RVT U164 ( .A1(comp_inst_credit[7]), .A2(n151), .A3(
        comp_inst_credit[7]), .A4(n150), .A5(n151), .A6(n150), .Y(n154) );
  OR4X1_RVT U165 ( .A1(comp_inst_stock[7]), .A2(comp_inst_stock[6]), .A3(
        comp_inst_stock[5]), .A4(comp_inst_stock[4]), .Y(n152) );
  OR3X1_RVT U166 ( .A1(comp_inst_stock[1]), .A2(comp_inst_stock[0]), .A3(n152), 
        .Y(n153) );
  AO222X1_RVT U167 ( .A1(n154), .A2(comp_inst_stock[3]), .A3(n154), .A4(
        comp_inst_stock[2]), .A5(n154), .A6(n153), .Y(\comp_inst_can_sell[0] )
         );
  INVX0_RVT U169 ( .A(credit_inst_coin_value[1]), .Y(n173) );
  INVX0_RVT U170 ( .A(credit_inst_coin_value[0]), .Y(n160) );
  NAND2X0_RVT U171 ( .A1(credit_inst_coin_value[0]), .A2(n173), .Y(n158) );
  OA21X1_RVT U172 ( .A1(credit_inst_coin_value[0]), .A2(n173), .A3(n158), .Y(
        n155) );
  INVX0_RVT U173 ( .A(n158), .Y(n169) );
  AO22X1_RVT U174 ( .A1(credit_inst_credit[0]), .A2(n169), .A3(
        credit_inst_coin_value[1]), .A4(n160), .Y(n188) );
  AO22X1_RVT U175 ( .A1(credit_inst_coin_value[0]), .A2(
        credit_inst_coin_value[1]), .A3(credit_inst_credit[1]), .A4(n188), .Y(
        n185) );
  NAND2X0_RVT U176 ( .A1(credit_inst_credit[2]), .A2(n185), .Y(n156) );
  NAND2X0_RVT U177 ( .A1(n158), .A2(n156), .Y(n181) );
  NAND2X0_RVT U178 ( .A1(credit_inst_credit[3]), .A2(n181), .Y(n157) );
  NAND2X0_RVT U179 ( .A1(n155), .A2(n157), .Y(n177) );
  INVX0_RVT U180 ( .A(n177), .Y(n159) );
  OR2X1_RVT U181 ( .A1(n158), .A2(n156), .Y(n182) );
  AO22X1_RVT U182 ( .A1(n158), .A2(credit_inst_coin_value[0]), .A3(n182), .A4(
        n157), .Y(n178) );
  OA21X1_RVT U183 ( .A1(n241), .A2(n159), .A3(n178), .Y(n172) );
  OA222X1_RVT U184 ( .A1(n173), .A2(n240), .A3(n173), .A4(n172), .A5(n240), 
        .A6(n172), .Y(n162) );
  OR3X1_RVT U185 ( .A1(n173), .A2(n160), .A3(n162), .Y(n166) );
  NAND2X0_RVT U186 ( .A1(credit_inst_coin_value[0]), .A2(
        credit_inst_coin_value[1]), .Y(n161) );
  NAND2X0_RVT U187 ( .A1(n162), .A2(n161), .Y(n165) );
  HADDX1_RVT U188 ( .A0(credit_inst_credit[7]), .B0(n163), .SO(n164) );
  AND2X1_RVT U189 ( .A1(n213), .A2(n164), .Y(n108) );
  NAND3X0_RVT U190 ( .A1(credit_inst_credit_load), .A2(n166), .A3(n165), .Y(
        n167) );
  INVX0_RVT U191 ( .A(n167), .Y(n168) );
  OA221X1_RVT U192 ( .A1(credit_inst_credit[6]), .A2(n168), .A3(n247), .A4(
        n167), .A5(n213), .Y(n107) );
  NAND2X0_RVT U193 ( .A1(credit_inst_credit_load), .A2(n169), .Y(n170) );
  INVX0_RVT U194 ( .A(n170), .Y(n171) );
  OA221X1_RVT U195 ( .A1(credit_inst_credit[0]), .A2(n171), .A3(n248), .A4(
        n170), .A5(n213), .Y(n106) );
  INVX0_RVT U196 ( .A(n172), .Y(n174) );
  OA221X1_RVT U197 ( .A1(credit_inst_coin_value[1]), .A2(n174), .A3(n173), 
        .A4(n172), .A5(credit_inst_credit_load), .Y(n176) );
  INVX0_RVT U198 ( .A(n176), .Y(n175) );
  OA221X1_RVT U199 ( .A1(credit_inst_credit[5]), .A2(n176), .A3(n240), .A4(
        n175), .A5(n213), .Y(n105) );
  NAND3X0_RVT U200 ( .A1(credit_inst_credit_load), .A2(n178), .A3(n177), .Y(
        n179) );
  INVX0_RVT U201 ( .A(n179), .Y(n180) );
  OA221X1_RVT U202 ( .A1(credit_inst_credit[4]), .A2(n180), .A3(n241), .A4(
        n179), .A5(n213), .Y(n104) );
  NAND3X0_RVT U203 ( .A1(credit_inst_credit_load), .A2(n182), .A3(n181), .Y(
        n183) );
  INVX0_RVT U204 ( .A(n183), .Y(n184) );
  OA221X1_RVT U205 ( .A1(credit_inst_credit[3]), .A2(n184), .A3(n244), .A4(
        n183), .A5(n213), .Y(n103) );
  NAND2X0_RVT U206 ( .A1(credit_inst_credit_load), .A2(n185), .Y(n186) );
  INVX0_RVT U207 ( .A(n186), .Y(n187) );
  OA221X1_RVT U208 ( .A1(credit_inst_credit[2]), .A2(n187), .A3(n245), .A4(
        n186), .A5(n213), .Y(n102) );
  NAND2X0_RVT U209 ( .A1(credit_inst_credit_load), .A2(n188), .Y(n189) );
  INVX0_RVT U210 ( .A(n189), .Y(n190) );
  OA221X1_RVT U211 ( .A1(credit_inst_credit[1]), .A2(n190), .A3(n246), .A4(
        n189), .A5(n213), .Y(n101) );
  AND2X1_RVT U212 ( .A1(n237), .A2(n236), .Y(n232) );
  AO21X1_RVT U213 ( .A1(n232), .A2(mem_inst_mem_write), .A3(rst), .Y(n199) );
  INVX0_RVT U214 ( .A(n199), .Y(n202) );
  NAND2X0_RVT U215 ( .A1(mem_inst_stock[0]), .A2(n213), .Y(n208) );
  AO22X1_RVT U216 ( .A1(n202), .A2(\u_mem_unit/memory_array[0][0] ), .A3(n199), 
        .A4(n208), .Y(n100) );
  NOR4X1_RVT U217 ( .A1(mem_inst_stock[3]), .A2(mem_inst_stock[2]), .A3(
        mem_inst_stock[1]), .A4(mem_inst_stock[0]), .Y(n197) );
  INVX0_RVT U218 ( .A(n197), .Y(n196) );
  OR2X1_RVT U219 ( .A1(n196), .A2(mem_inst_stock[4]), .Y(n194) );
  OR2X1_RVT U220 ( .A1(n194), .A2(mem_inst_stock[5]), .Y(n192) );
  NOR2X0_RVT U221 ( .A1(n192), .A2(mem_inst_stock[6]), .Y(n191) );
  HADDX1_RVT U222 ( .A0(mem_inst_stock[7]), .B0(n191), .SO(n214) );
  AND2X1_RVT U223 ( .A1(n213), .A2(n199), .Y(n201) );
  AO22X1_RVT U224 ( .A1(n214), .A2(n201), .A3(n202), .A4(
        \u_mem_unit/memory_array[0][7] ), .Y(n99) );
  AO21X1_RVT U225 ( .A1(mem_inst_stock[6]), .A2(n192), .A3(n191), .Y(n215) );
  AO22X1_RVT U226 ( .A1(n202), .A2(\u_mem_unit/memory_array[0][6] ), .A3(n201), 
        .A4(n215), .Y(n98) );
  INVX0_RVT U227 ( .A(n192), .Y(n193) );
  AO21X1_RVT U228 ( .A1(mem_inst_stock[5]), .A2(n194), .A3(n193), .Y(n216) );
  AO22X1_RVT U229 ( .A1(n202), .A2(\u_mem_unit/memory_array[0][5] ), .A3(n201), 
        .A4(n216), .Y(n97) );
  INVX0_RVT U230 ( .A(n194), .Y(n195) );
  AO21X1_RVT U231 ( .A1(mem_inst_stock[4]), .A2(n196), .A3(n195), .Y(n217) );
  AO22X1_RVT U232 ( .A1(n202), .A2(\u_mem_unit/memory_array[0][4] ), .A3(n201), 
        .A4(n217), .Y(n96) );
  OR3X1_RVT U233 ( .A1(mem_inst_stock[2]), .A2(mem_inst_stock[1]), .A3(
        mem_inst_stock[0]), .Y(n198) );
  AO21X1_RVT U234 ( .A1(mem_inst_stock[3]), .A2(n198), .A3(n197), .Y(n218) );
  AO22X1_RVT U235 ( .A1(n202), .A2(\u_mem_unit/memory_array[0][3] ), .A3(n201), 
        .A4(n218), .Y(n95) );
  NOR2X0_RVT U236 ( .A1(mem_inst_stock[1]), .A2(mem_inst_stock[0]), .Y(n200)
         );
  OA21X1_RVT U237 ( .A1(n200), .A2(n243), .A3(n198), .Y(n209) );
  NAND2X0_RVT U238 ( .A1(n209), .A2(n213), .Y(n203) );
  AO22X1_RVT U239 ( .A1(n202), .A2(\u_mem_unit/memory_array[0][2] ), .A3(n199), 
        .A4(n203), .Y(n94) );
  AO21X1_RVT U240 ( .A1(mem_inst_stock[0]), .A2(mem_inst_stock[1]), .A3(n200), 
        .Y(n223) );
  AO22X1_RVT U241 ( .A1(n202), .A2(\u_mem_unit/memory_array[0][1] ), .A3(n201), 
        .A4(n223), .Y(n93) );
  AO21X1_RVT U242 ( .A1(mem_inst_mem_write), .A2(n231), .A3(rst), .Y(n204) );
  INVX0_RVT U243 ( .A(n204), .Y(n206) );
  AO22X1_RVT U244 ( .A1(n206), .A2(\u_mem_unit/memory_array[1][0] ), .A3(n204), 
        .A4(n208), .Y(n92) );
  AND2X1_RVT U245 ( .A1(n213), .A2(n204), .Y(n205) );
  AO22X1_RVT U246 ( .A1(n214), .A2(n205), .A3(n206), .A4(
        \u_mem_unit/memory_array[1][7] ), .Y(n91) );
  AO22X1_RVT U247 ( .A1(n206), .A2(\u_mem_unit/memory_array[1][6] ), .A3(n205), 
        .A4(n215), .Y(n90) );
  AO22X1_RVT U248 ( .A1(n206), .A2(\u_mem_unit/memory_array[1][5] ), .A3(n205), 
        .A4(n216), .Y(n89) );
  AO22X1_RVT U249 ( .A1(n206), .A2(\u_mem_unit/memory_array[1][4] ), .A3(n205), 
        .A4(n217), .Y(n88) );
  AO22X1_RVT U250 ( .A1(n206), .A2(\u_mem_unit/memory_array[1][3] ), .A3(n205), 
        .A4(n218), .Y(n87) );
  AO22X1_RVT U251 ( .A1(n206), .A2(\u_mem_unit/memory_array[1][2] ), .A3(n204), 
        .A4(n203), .Y(n86) );
  AO22X1_RVT U252 ( .A1(n206), .A2(\u_mem_unit/memory_array[1][1] ), .A3(n205), 
        .A4(n223), .Y(n85) );
  NAND3X0_RVT U253 ( .A1(mem_inst_sel_item[1]), .A2(mem_inst_mem_write), .A3(
        n236), .Y(n207) );
  NAND2X0_RVT U254 ( .A1(n213), .A2(n207), .Y(n212) );
  INVX0_RVT U255 ( .A(n212), .Y(n211) );
  AO22X1_RVT U256 ( .A1(n211), .A2(\u_mem_unit/memory_array[2][0] ), .A3(n212), 
        .A4(n208), .Y(n84) );
  AND2X1_RVT U257 ( .A1(n213), .A2(n212), .Y(n210) );
  AO22X1_RVT U258 ( .A1(n214), .A2(n210), .A3(n211), .A4(
        \u_mem_unit/memory_array[2][7] ), .Y(n83) );
  AO22X1_RVT U259 ( .A1(n211), .A2(\u_mem_unit/memory_array[2][6] ), .A3(n210), 
        .A4(n215), .Y(n82) );
  AO22X1_RVT U260 ( .A1(n211), .A2(\u_mem_unit/memory_array[2][5] ), .A3(n210), 
        .A4(n216), .Y(n81) );
  AO22X1_RVT U261 ( .A1(n211), .A2(\u_mem_unit/memory_array[2][4] ), .A3(n210), 
        .A4(n217), .Y(n80) );
  AO22X1_RVT U262 ( .A1(n211), .A2(\u_mem_unit/memory_array[2][3] ), .A3(n210), 
        .A4(n218), .Y(n79) );
  INVX0_RVT U263 ( .A(n209), .Y(n219) );
  AO22X1_RVT U264 ( .A1(n211), .A2(\u_mem_unit/memory_array[2][2] ), .A3(n210), 
        .A4(n219), .Y(n78) );
  AO221X1_RVT U265 ( .A1(n223), .A2(n212), .A3(n211), .A4(
        \u_mem_unit/memory_array[2][1] ), .A5(rst), .Y(n77) );
  AND2X1_RVT U266 ( .A1(mem_inst_sel_item[1]), .A2(mem_inst_sel_item[0]), .Y(
        n235) );
  AO21X1_RVT U267 ( .A1(mem_inst_mem_write), .A2(n235), .A3(rst), .Y(n222) );
  INVX0_RVT U268 ( .A(n222), .Y(n221) );
  AND2X1_RVT U269 ( .A1(n213), .A2(n222), .Y(n220) );
  AO22X1_RVT U270 ( .A1(\u_mem_unit/memory_array[3][0] ), .A2(n221), .A3(n220), 
        .A4(n242), .Y(n76) );
  AO22X1_RVT U271 ( .A1(n214), .A2(n220), .A3(n221), .A4(
        \u_mem_unit/memory_array[3][7] ), .Y(n75) );
  AO22X1_RVT U272 ( .A1(n221), .A2(\u_mem_unit/memory_array[3][6] ), .A3(n220), 
        .A4(n215), .Y(n74) );
  AO22X1_RVT U273 ( .A1(n221), .A2(\u_mem_unit/memory_array[3][5] ), .A3(n220), 
        .A4(n216), .Y(n73) );
  AO22X1_RVT U274 ( .A1(n221), .A2(\u_mem_unit/memory_array[3][4] ), .A3(n220), 
        .A4(n217), .Y(n72) );
  AO22X1_RVT U275 ( .A1(n221), .A2(\u_mem_unit/memory_array[3][3] ), .A3(n220), 
        .A4(n218), .Y(n71) );
  AO22X1_RVT U276 ( .A1(n221), .A2(\u_mem_unit/memory_array[3][2] ), .A3(n220), 
        .A4(n219), .Y(n70) );
  AO221X1_RVT U277 ( .A1(n223), .A2(n222), .A3(n221), .A4(
        \u_mem_unit/memory_array[3][1] ), .A5(rst), .Y(n69) );
  AO222X1_RVT U278 ( .A1(n232), .A2(\u_mem_unit/memory_array[0][0] ), .A3(n235), .A4(\u_mem_unit/memory_array[3][0] ), .A5(n231), .A6(
        \u_mem_unit/memory_array[1][0] ), .Y(n224) );
  AO222X1_RVT U279 ( .A1(n224), .A2(n239), .A3(n233), .A4(
        \u_mem_unit/memory_array[2][0] ), .A5(mem_inst_stock[0]), .A6(n238), 
        .Y(n68) );
  AO222X1_RVT U280 ( .A1(n232), .A2(\u_mem_unit/memory_array[0][1] ), .A3(n235), .A4(\u_mem_unit/memory_array[3][1] ), .A5(\u_mem_unit/memory_array[1][1] ), 
        .A6(n231), .Y(n225) );
  AO222X1_RVT U281 ( .A1(n225), .A2(n239), .A3(n233), .A4(
        \u_mem_unit/memory_array[2][1] ), .A5(mem_inst_stock[1]), .A6(n238), 
        .Y(n67) );
  AO222X1_RVT U282 ( .A1(n232), .A2(\u_mem_unit/memory_array[0][2] ), .A3(n235), .A4(\u_mem_unit/memory_array[3][2] ), .A5(\u_mem_unit/memory_array[1][2] ), 
        .A6(n231), .Y(n226) );
  AO222X1_RVT U283 ( .A1(n226), .A2(n239), .A3(\u_mem_unit/memory_array[2][2] ), .A4(n233), .A5(mem_inst_stock[2]), .A6(n238), .Y(n66) );
  AO222X1_RVT U284 ( .A1(n232), .A2(\u_mem_unit/memory_array[0][3] ), .A3(n235), .A4(\u_mem_unit/memory_array[3][3] ), .A5(\u_mem_unit/memory_array[1][3] ), 
        .A6(n231), .Y(n227) );
  AO222X1_RVT U285 ( .A1(n227), .A2(n239), .A3(\u_mem_unit/memory_array[2][3] ), .A4(n233), .A5(mem_inst_stock[3]), .A6(n238), .Y(n65) );
  AO222X1_RVT U286 ( .A1(n232), .A2(\u_mem_unit/memory_array[0][4] ), .A3(n235), .A4(\u_mem_unit/memory_array[3][4] ), .A5(\u_mem_unit/memory_array[1][4] ), 
        .A6(n231), .Y(n228) );
  AO222X1_RVT U287 ( .A1(n228), .A2(n239), .A3(\u_mem_unit/memory_array[2][4] ), .A4(n233), .A5(mem_inst_stock[4]), .A6(n238), .Y(n64) );
  AO222X1_RVT U288 ( .A1(n232), .A2(\u_mem_unit/memory_array[0][5] ), .A3(n235), .A4(\u_mem_unit/memory_array[3][5] ), .A5(\u_mem_unit/memory_array[1][5] ), 
        .A6(n231), .Y(n229) );
  AO222X1_RVT U289 ( .A1(n229), .A2(n239), .A3(\u_mem_unit/memory_array[2][5] ), .A4(n233), .A5(mem_inst_stock[5]), .A6(n238), .Y(n63) );
  AO222X1_RVT U290 ( .A1(n232), .A2(\u_mem_unit/memory_array[0][6] ), .A3(n235), .A4(\u_mem_unit/memory_array[3][6] ), .A5(\u_mem_unit/memory_array[1][6] ), 
        .A6(n231), .Y(n230) );
  AO222X1_RVT U291 ( .A1(n230), .A2(n239), .A3(\u_mem_unit/memory_array[2][6] ), .A4(n233), .A5(mem_inst_stock[6]), .A6(n238), .Y(n62) );
  AO222X1_RVT U292 ( .A1(n232), .A2(\u_mem_unit/memory_array[0][7] ), .A3(n231), .A4(\u_mem_unit/memory_array[1][7] ), .A5(n235), .A6(
        \u_mem_unit/memory_array[3][7] ), .Y(n234) );
  AO222X1_RVT U293 ( .A1(n234), .A2(n239), .A3(\u_mem_unit/memory_array[2][7] ), .A4(n233), .A5(mem_inst_stock[7]), .A6(n238), .Y(n61) );
  AO22X1_RVT U294 ( .A1(mem_inst_price[0]), .A2(n238), .A3(n239), .A4(n236), 
        .Y(n60) );
  AO22X1_RVT U295 ( .A1(n235), .A2(n239), .A3(n238), .A4(mem_inst_price[2]), 
        .Y(n58) );
  AO22X1_RVT U296 ( .A1(mem_inst_price[3]), .A2(n238), .A3(n239), .A4(n236), 
        .Y(n57) );
  AO22X1_RVT U297 ( .A1(mem_inst_price[4]), .A2(n238), .A3(n239), .A4(n237), 
        .Y(n56) );
  AO22X1_RVT U298 ( .A1(mem_inst_sel_item[0]), .A2(n239), .A3(n238), .A4(
        mem_inst_price[5]), .Y(n55) );
  AO22X1_RVT U299 ( .A1(mem_inst_sel_item[1]), .A2(n239), .A3(n238), .A4(
        mem_inst_price[6]), .Y(n54) );
endmodule

