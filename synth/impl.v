/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : X-2025.06-SP2
// Date      : Fri Jul 17 18:37:46 2026
/////////////////////////////////////////////////////////////


module Vending_Top ( clk, rst, sel_item, coin_in, confirm, cancel, change_out, 
        state_out, dispense, display, error );
  input [1:0] sel_item;
  input [1:0] coin_in;
  output [7:0] change_out;
  output [2:0] state_out;
  output [7:0] display;
  input clk, rst, confirm, cancel;
  output dispense, error;
  wire   cancel_reg, mem_write, \u_mem_unit/n79 , \u_mem_unit/n78 ,
         \u_mem_unit/n77 , \u_mem_unit/n76 , \u_mem_unit/n75 ,
         \u_mem_unit/n74 , \u_mem_unit/n73 , \u_mem_unit/n72 ,
         \u_mem_unit/n71 , \u_mem_unit/n70 , \u_mem_unit/n69 ,
         \u_mem_unit/n68 , \u_mem_unit/n67 , \u_mem_unit/n66 ,
         \u_mem_unit/n65 , \u_mem_unit/n64 , \u_mem_unit/n63 ,
         \u_mem_unit/n62 , \u_mem_unit/n61 , \u_mem_unit/n60 ,
         \u_mem_unit/n59 , \u_mem_unit/n58 , \u_mem_unit/n57 ,
         \u_mem_unit/n56 , \u_mem_unit/n55 , \u_mem_unit/n54 ,
         \u_mem_unit/n53 , \u_mem_unit/n52 , \u_mem_unit/n51 ,
         \u_mem_unit/n50 , \u_mem_unit/n49 , \u_mem_unit/n48 ,
         \u_mem_unit/n47 , \u_mem_unit/n46 , \u_mem_unit/n45 ,
         \u_mem_unit/n44 , \u_mem_unit/n43 , \u_mem_unit/n42 ,
         \u_mem_unit/n41 , \u_mem_unit/n40 , \u_mem_unit/n39 ,
         \u_mem_unit/n38 , \u_mem_unit/n37 , \u_mem_unit/n36 ,
         \u_mem_unit/n35 , \u_mem_unit/n33 , \u_mem_unit/memory_array[3][7] ,
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
         \u_mem_unit/memory_array[0][0] , \u_credit_unit/n12 ,
         \u_credit_unit/n11 , \u_credit_unit/n10 , \u_credit_unit/n8 ,
         \u_credit_unit/n7 , \u_credit_unit/n6 , \u_credit_unit/n5 ,
         \u_control_unit/n16 , \u_control_unit/N14 , \u_control_unit/N12 ,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n186, n187, n188, n189, n190, n191, n192, n193, n194, n195, n196,
         n197, n198, n199, n200, n201, n202, n203, n204, n205, n206, n207,
         n208, n209, n210, n211, n212, n213, n214, n215, n216, n217, n218,
         n219, n220, n221, n222, n223, n224, n225, n226, n227, n228, n229,
         n230, n231, n232, n233, n234, n235, n236, n237, n238, n239, n240,
         n241, n242, n243, n244, n245, n246, n247, n248, n249, n250, n251,
         n252, n253, n254, n255, n256, n257, n258, n259, n260, n261, n262,
         n263, n264, n265, n266, n267, n268, n269, n270, n271, n272, n273,
         n274, n275, n276, n277, n278, n279, n280, n281, n282, n283, n284,
         n285, n286, n287, n288, n289, n290, n291, n292, n314, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343;
  wire   [7:0] stock;
  wire   [7:0] price;
  assign dispense = mem_write;

  DFFX1_RVT \u_mem_unit/stock_reg[5]  ( .D(\u_mem_unit/n42 ), .CLK(clk), .Q(
        stock[5]) );
  DFFX1_RVT \u_mem_unit/stock_reg[6]  ( .D(\u_mem_unit/n41 ), .CLK(clk), .Q(
        stock[6]) );
  DFFX1_RVT \u_mem_unit/stock_reg[3]  ( .D(\u_mem_unit/n44 ), .CLK(clk), .Q(
        stock[3]) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[3][7]  ( .D(\u_mem_unit/n53 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[3][7] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[2][1]  ( .D(\u_mem_unit/n55 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[2][1] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[3][1]  ( .D(\u_mem_unit/n47 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[3][1] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[1][7]  ( .D(\u_mem_unit/n69 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[1][7] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[0][7]  ( .D(\u_mem_unit/n77 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[0][7] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[1][0]  ( .D(\u_mem_unit/n70 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[1][0] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[1][1]  ( .D(\u_mem_unit/n63 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[1][1] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[1][2]  ( .D(\u_mem_unit/n64 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[1][2] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[1][3]  ( .D(\u_mem_unit/n65 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[1][3] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[1][4]  ( .D(\u_mem_unit/n66 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[1][4] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[1][5]  ( .D(\u_mem_unit/n67 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[1][5] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[1][6]  ( .D(\u_mem_unit/n68 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[1][6] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[2][7]  ( .D(\u_mem_unit/n61 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[2][7] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[3][0]  ( .D(\u_mem_unit/n54 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[3][0] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[2][2]  ( .D(\u_mem_unit/n56 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[2][2] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[2][3]  ( .D(\u_mem_unit/n57 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[2][3] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[3][2]  ( .D(\u_mem_unit/n48 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[3][2] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[3][3]  ( .D(\u_mem_unit/n49 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[3][3] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[3][4]  ( .D(\u_mem_unit/n50 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[3][4] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[3][5]  ( .D(\u_mem_unit/n51 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[3][5] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[3][6]  ( .D(\u_mem_unit/n52 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[3][6] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[0][0]  ( .D(\u_mem_unit/n78 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[0][0] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[0][1]  ( .D(\u_mem_unit/n71 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[0][1] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[0][2]  ( .D(\u_mem_unit/n72 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[0][2] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[0][3]  ( .D(\u_mem_unit/n73 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[0][3] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[0][4]  ( .D(\u_mem_unit/n74 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[0][4] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[0][5]  ( .D(\u_mem_unit/n75 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[0][5] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[0][6]  ( .D(\u_mem_unit/n76 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[0][6] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[2][4]  ( .D(\u_mem_unit/n58 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[2][4] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[2][5]  ( .D(\u_mem_unit/n59 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[2][5] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[2][6]  ( .D(\u_mem_unit/n60 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[2][6] ) );
  DFFX1_RVT \u_mem_unit/stock_reg[2]  ( .D(\u_mem_unit/n45 ), .CLK(clk), .Q(
        stock[2]) );
  DFFX1_RVT \u_credit_unit/credit_reg[7]  ( .D(\u_credit_unit/n5 ), .CLK(clk), 
        .Q(display[7]) );
  DFFSSRX1_RVT cancel_reg_reg ( .D(1'b0), .SETB(rst), .RSTB(cancel), .CLK(clk), 
        .Q(cancel_reg), .QN(n335) );
  DFFSSRX1_RVT \u_control_unit/state_reg[1]  ( .D(1'b0), .SETB(n340), .RSTB(
        n343), .CLK(clk), .Q(n319), .QN(state_out[1]) );
  DFFSSRX1_RVT \u_mem_unit/price_reg[1]  ( .D(1'b0), .SETB(n164), .RSTB(n341), 
        .CLK(clk), .Q(n329), .QN(price[1]) );
  DFFSSRX1_RVT \u_credit_unit/credit_reg[3]  ( .D(1'b0), .SETB(n314), .RSTB(
        n342), .CLK(clk), .Q(display[3]), .QN(n324) );
  DFFSSRX1_RVT \u_credit_unit/credit_reg[6]  ( .D(1'b0), .SETB(
        \u_credit_unit/n6 ), .RSTB(1'b1), .CLK(clk), .Q(n328), .QN(display[6])
         );
  DFFSSRX1_RVT \u_credit_unit/credit_reg[5]  ( .D(1'b0), .SETB(1'b0), .RSTB(
        \u_credit_unit/n7 ), .CLK(clk), .Q(display[5]), .QN(n326) );
  DFFSSRX1_RVT \u_mem_unit/stock_reg[7]  ( .D(1'b0), .SETB(1'b0), .RSTB(
        \u_mem_unit/n40 ), .CLK(clk), .Q(stock[7]), .QN(n339) );
  DFFSSRX1_RVT \u_mem_unit/stock_reg[0]  ( .D(1'b0), .SETB(1'b0), .RSTB(
        \u_mem_unit/n79 ), .CLK(clk), .Q(stock[0]), .QN(n320) );
  DFFSSRX1_RVT \u_mem_unit/stock_reg[1]  ( .D(1'b0), .SETB(1'b0), .RSTB(
        \u_mem_unit/n46 ), .CLK(clk), .Q(stock[1]), .QN(n338) );
  DFFSSRX1_RVT \u_mem_unit/stock_reg[4]  ( .D(1'b0), .SETB(1'b0), .RSTB(
        \u_mem_unit/n43 ), .CLK(clk), .Q(stock[4]), .QN(n337) );
  DFFSSRX1_RVT \u_credit_unit/credit_reg[4]  ( .D(1'b0), .SETB(1'b0), .RSTB(
        \u_credit_unit/n8 ), .CLK(clk), .Q(display[4]), .QN(n325) );
  DFFSSRX1_RVT \u_mem_unit/price_reg[0]  ( .D(1'b0), .SETB(1'b0), .RSTB(
        \u_mem_unit/n33 ), .CLK(clk), .Q(price[0]), .QN(n336) );
  DFFSSRX1_RVT \u_mem_unit/price_reg[2]  ( .D(1'b0), .SETB(1'b0), .RSTB(
        \u_mem_unit/n35 ), .CLK(clk), .Q(price[2]), .QN(n334) );
  DFFSSRX1_RVT \u_mem_unit/price_reg[3]  ( .D(1'b0), .SETB(1'b0), .RSTB(
        \u_mem_unit/n36 ), .CLK(clk), .Q(price[3]), .QN(n333) );
  DFFSSRX1_RVT \u_mem_unit/price_reg[4]  ( .D(1'b0), .SETB(1'b0), .RSTB(
        \u_mem_unit/n37 ), .CLK(clk), .Q(price[4]), .QN(n332) );
  DFFSSRX1_RVT \u_mem_unit/price_reg[5]  ( .D(1'b0), .SETB(1'b0), .RSTB(
        \u_mem_unit/n38 ), .CLK(clk), .Q(price[5]), .QN(n331) );
  DFFSSRX1_RVT \u_mem_unit/price_reg[6]  ( .D(1'b0), .SETB(1'b0), .RSTB(
        \u_mem_unit/n39 ), .CLK(clk), .Q(price[6]), .QN(n330) );
  DFFSSRX1_RVT \u_credit_unit/credit_reg[1]  ( .D(1'b0), .SETB(1'b0), .RSTB(
        \u_credit_unit/n11 ), .CLK(clk), .Q(display[1]), .QN(n322) );
  DFFSSRX1_RVT \u_credit_unit/credit_reg[2]  ( .D(1'b0), .SETB(1'b0), .RSTB(
        \u_credit_unit/n10 ), .CLK(clk), .Q(display[2]), .QN(n323) );
  DFFSSRX1_RVT \u_credit_unit/credit_reg[0]  ( .D(1'b0), .SETB(1'b0), .RSTB(
        \u_credit_unit/n12 ), .CLK(clk), .Q(display[0]), .QN(n321) );
  DFFSSRX1_RVT \u_control_unit/state_reg[0]  ( .D(1'b0), .SETB(1'b0), .RSTB(
        \u_control_unit/N12 ), .CLK(clk), .Q(state_out[0]), .QN(n327) );
  DFFSSRX1_RVT \u_control_unit/state_reg[2]  ( .D(1'b0), .SETB(1'b0), .RSTB(
        \u_control_unit/N14 ), .CLK(clk), .Q(state_out[2]), .QN(
        \u_control_unit/n16 ) );
  DFFSSRX1_RVT \u_mem_unit/memory_array_reg[2][0]  ( .D(1'b0), .SETB(
        \u_mem_unit/n62 ), .RSTB(1'b1), .CLK(clk), .QN(
        \u_mem_unit/memory_array[2][0] ) );
  AND3X1_RVT U232 ( .A1(n340), .A2(sel_item[1]), .A3(n219), .Y(n164) );
  INVX0_RVT U233 ( .A(rst), .Y(n289) );
  INVX0_RVT U255 ( .A(coin_in[1]), .Y(n167) );
  NAND2X0_RVT U256 ( .A1(coin_in[1]), .A2(coin_in[0]), .Y(n246) );
  INVX0_RVT U257 ( .A(n246), .Y(n253) );
  OA22X1_RVT U258 ( .A1(display[0]), .A2(coin_in[1]), .A3(display[1]), .A4(
        n253), .Y(n269) );
  NAND2X0_RVT U259 ( .A1(display[2]), .A2(n269), .Y(n249) );
  INVX0_RVT U260 ( .A(n249), .Y(n247) );
  AND2X1_RVT U261 ( .A1(n319), .A2(\u_control_unit/n16 ), .Y(n165) );
  OR2X1_RVT U262 ( .A1(coin_in[0]), .A2(coin_in[1]), .Y(n286) );
  AND2X1_RVT U263 ( .A1(n165), .A2(n286), .Y(n272) );
  NAND2X0_RVT U264 ( .A1(n272), .A2(n167), .Y(n276) );
  NAND2X0_RVT U265 ( .A1(\u_control_unit/n16 ), .A2(n319), .Y(n166) );
  AO221X1_RVT U266 ( .A1(n167), .A2(n247), .A3(n249), .A4(n276), .A5(n166), 
        .Y(n168) );
  HADDX1_RVT U267 ( .A0(n168), .B0(n324), .SO(n169) );
  INVX0_RVT U268 ( .A(n169), .Y(n314) );
  NAND3X0_RVT U273 ( .A1(state_out[0]), .A2(n319), .A3(n335), .Y(n282) );
  INVX0_RVT U274 ( .A(n282), .Y(n291) );
  NAND4X0_RVT U275 ( .A1(\u_control_unit/n16 ), .A2(n291), .A3(confirm), .A4(
        n289), .Y(n243) );
  INVX0_RVT U276 ( .A(n243), .Y(n340) );
  INVX0_RVT U277 ( .A(sel_item[0]), .Y(n219) );
  OA21X1_RVT U278 ( .A1(state_out[0]), .A2(state_out[2]), .A3(n319), .Y(n198)
         );
  OA21X1_RVT U279 ( .A1(cancel_reg), .A2(n327), .A3(n198), .Y(n195) );
  NOR2X0_RVT U280 ( .A1(rst), .A2(n195), .Y(n342) );
  NAND2X0_RVT U281 ( .A1(price[0]), .A2(n321), .Y(n192) );
  INVX0_RVT U282 ( .A(n192), .Y(n196) );
  OA222X1_RVT U283 ( .A1(n322), .A2(n196), .A3(n322), .A4(price[1]), .A5(n196), 
        .A6(price[1]), .Y(n188) );
  OA222X1_RVT U284 ( .A1(n323), .A2(n188), .A3(n323), .A4(price[2]), .A5(n188), 
        .A6(price[2]), .Y(n184) );
  OA222X1_RVT U285 ( .A1(n324), .A2(n184), .A3(n324), .A4(price[3]), .A5(n184), 
        .A6(price[3]), .Y(n180) );
  OA222X1_RVT U286 ( .A1(n325), .A2(n180), .A3(n325), .A4(price[4]), .A5(n180), 
        .A6(price[4]), .Y(n176) );
  OA222X1_RVT U287 ( .A1(n326), .A2(n176), .A3(n326), .A4(price[5]), .A5(n176), 
        .A6(price[5]), .Y(n172) );
  OA222X1_RVT U288 ( .A1(n328), .A2(n172), .A3(n328), .A4(price[6]), .A5(n172), 
        .A6(price[6]), .Y(n278) );
  NAND2X0_RVT U289 ( .A1(display[7]), .A2(n278), .Y(n171) );
  OA221X1_RVT U290 ( .A1(display[7]), .A2(n278), .A3(display[7]), .A4(n335), 
        .A5(n198), .Y(n170) );
  OA221X1_RVT U291 ( .A1(cancel_reg), .A2(n327), .A3(cancel_reg), .A4(n171), 
        .A5(n170), .Y(change_out[7]) );
  INVX0_RVT U292 ( .A(n172), .Y(n173) );
  AO221X1_RVT U293 ( .A1(n173), .A2(n330), .A3(n172), .A4(price[6]), .A5(
        cancel_reg), .Y(n174) );
  INVX0_RVT U294 ( .A(n174), .Y(n175) );
  OA221X1_RVT U295 ( .A1(display[6]), .A2(n175), .A3(n328), .A4(n174), .A5(
        n195), .Y(change_out[6]) );
  INVX0_RVT U296 ( .A(n176), .Y(n177) );
  AO221X1_RVT U297 ( .A1(n177), .A2(n331), .A3(n176), .A4(price[5]), .A5(
        cancel_reg), .Y(n178) );
  INVX0_RVT U298 ( .A(n178), .Y(n179) );
  OA221X1_RVT U299 ( .A1(display[5]), .A2(n179), .A3(n326), .A4(n178), .A5(
        n195), .Y(change_out[5]) );
  INVX0_RVT U300 ( .A(n180), .Y(n181) );
  AO221X1_RVT U301 ( .A1(n181), .A2(n332), .A3(n180), .A4(price[4]), .A5(
        cancel_reg), .Y(n182) );
  INVX0_RVT U302 ( .A(n182), .Y(n183) );
  OA221X1_RVT U303 ( .A1(display[4]), .A2(n183), .A3(n325), .A4(n182), .A5(
        n195), .Y(change_out[4]) );
  INVX0_RVT U304 ( .A(n184), .Y(n185) );
  AO221X1_RVT U305 ( .A1(n185), .A2(n333), .A3(n184), .A4(price[3]), .A5(
        cancel_reg), .Y(n186) );
  INVX0_RVT U306 ( .A(n186), .Y(n187) );
  OA221X1_RVT U307 ( .A1(display[3]), .A2(n187), .A3(n324), .A4(n186), .A5(
        n195), .Y(change_out[3]) );
  INVX0_RVT U308 ( .A(n188), .Y(n189) );
  AO221X1_RVT U309 ( .A1(n189), .A2(n334), .A3(n188), .A4(price[2]), .A5(
        cancel_reg), .Y(n190) );
  INVX0_RVT U310 ( .A(n190), .Y(n191) );
  OA221X1_RVT U311 ( .A1(display[2]), .A2(n191), .A3(n323), .A4(n190), .A5(
        n195), .Y(change_out[2]) );
  AO221X1_RVT U312 ( .A1(n192), .A2(n329), .A3(n196), .A4(price[1]), .A5(
        cancel_reg), .Y(n193) );
  INVX0_RVT U313 ( .A(n193), .Y(n194) );
  OA221X1_RVT U314 ( .A1(display[1]), .A2(n194), .A3(n322), .A4(n193), .A5(
        n195), .Y(change_out[1]) );
  OA221X1_RVT U315 ( .A1(n196), .A2(display[0]), .A3(n196), .A4(n336), .A5(
        n195), .Y(n197) );
  OA222X1_RVT U316 ( .A1(n335), .A2(display[0]), .A3(n335), .A4(n198), .A5(
        n197), .A6(cancel_reg), .Y(change_out[0]) );
  NAND3X0_RVT U317 ( .A1(\u_control_unit/n16 ), .A2(n291), .A3(confirm), .Y(
        n199) );
  NAND2X0_RVT U318 ( .A1(n289), .A2(n199), .Y(n244) );
  INVX0_RVT U319 ( .A(n244), .Y(n240) );
  AO22X1_RVT U320 ( .A1(price[0]), .A2(n240), .A3(n340), .A4(n219), .Y(
        \u_mem_unit/n33 ) );
  AND2X1_RVT U321 ( .A1(sel_item[0]), .A2(sel_item[1]), .Y(n239) );
  AO22X1_RVT U322 ( .A1(price[2]), .A2(n240), .A3(n340), .A4(n239), .Y(
        \u_mem_unit/n35 ) );
  AO22X1_RVT U323 ( .A1(price[3]), .A2(n240), .A3(n340), .A4(n219), .Y(
        \u_mem_unit/n36 ) );
  INVX0_RVT U324 ( .A(sel_item[1]), .Y(n200) );
  AO22X1_RVT U325 ( .A1(price[4]), .A2(n240), .A3(n340), .A4(n200), .Y(
        \u_mem_unit/n37 ) );
  AO22X1_RVT U326 ( .A1(price[5]), .A2(n240), .A3(n340), .A4(sel_item[0]), .Y(
        \u_mem_unit/n38 ) );
  AO22X1_RVT U327 ( .A1(price[6]), .A2(n240), .A3(n340), .A4(sel_item[1]), .Y(
        \u_mem_unit/n39 ) );
  NAND2X0_RVT U328 ( .A1(sel_item[0]), .A2(n200), .Y(n242) );
  INVX0_RVT U329 ( .A(n242), .Y(n237) );
  AND2X1_RVT U330 ( .A1(n219), .A2(n200), .Y(n238) );
  AO222X1_RVT U331 ( .A1(n239), .A2(\u_mem_unit/memory_array[3][7] ), .A3(n237), .A4(\u_mem_unit/memory_array[1][7] ), .A5(n238), .A6(
        \u_mem_unit/memory_array[0][7] ), .Y(n201) );
  AO222X1_RVT U332 ( .A1(n201), .A2(n340), .A3(\u_mem_unit/memory_array[2][7] ), .A4(n164), .A5(stock[7]), .A6(n240), .Y(\u_mem_unit/n40 ) );
  AO222X1_RVT U333 ( .A1(n239), .A2(\u_mem_unit/memory_array[3][6] ), .A3(n238), .A4(\u_mem_unit/memory_array[0][6] ), .A5(\u_mem_unit/memory_array[1][6] ), 
        .A6(n237), .Y(n202) );
  AO222X1_RVT U334 ( .A1(n202), .A2(n340), .A3(\u_mem_unit/memory_array[2][6] ), .A4(n164), .A5(stock[6]), .A6(n240), .Y(\u_mem_unit/n41 ) );
  AO222X1_RVT U335 ( .A1(n239), .A2(\u_mem_unit/memory_array[3][5] ), .A3(n238), .A4(\u_mem_unit/memory_array[0][5] ), .A5(\u_mem_unit/memory_array[1][5] ), 
        .A6(n237), .Y(n203) );
  AO222X1_RVT U336 ( .A1(n203), .A2(n340), .A3(n164), .A4(
        \u_mem_unit/memory_array[2][5] ), .A5(stock[5]), .A6(n240), .Y(
        \u_mem_unit/n42 ) );
  AO222X1_RVT U337 ( .A1(n239), .A2(\u_mem_unit/memory_array[3][4] ), .A3(n238), .A4(\u_mem_unit/memory_array[0][4] ), .A5(\u_mem_unit/memory_array[1][4] ), 
        .A6(n237), .Y(n204) );
  AO222X1_RVT U338 ( .A1(n204), .A2(n340), .A3(n164), .A4(
        \u_mem_unit/memory_array[2][4] ), .A5(stock[4]), .A6(n240), .Y(
        \u_mem_unit/n43 ) );
  AO222X1_RVT U339 ( .A1(n239), .A2(\u_mem_unit/memory_array[3][3] ), .A3(n238), .A4(\u_mem_unit/memory_array[0][3] ), .A5(\u_mem_unit/memory_array[1][3] ), 
        .A6(n237), .Y(n205) );
  AO222X1_RVT U340 ( .A1(n205), .A2(n340), .A3(n164), .A4(
        \u_mem_unit/memory_array[2][3] ), .A5(stock[3]), .A6(n240), .Y(
        \u_mem_unit/n44 ) );
  AO222X1_RVT U341 ( .A1(n239), .A2(\u_mem_unit/memory_array[3][2] ), .A3(n238), .A4(\u_mem_unit/memory_array[0][2] ), .A5(\u_mem_unit/memory_array[1][2] ), 
        .A6(n237), .Y(n206) );
  AO222X1_RVT U342 ( .A1(n206), .A2(n340), .A3(n164), .A4(
        \u_mem_unit/memory_array[2][2] ), .A5(stock[2]), .A6(n240), .Y(
        \u_mem_unit/n45 ) );
  AO222X1_RVT U343 ( .A1(n239), .A2(\u_mem_unit/memory_array[3][1] ), .A3(n238), .A4(\u_mem_unit/memory_array[0][1] ), .A5(\u_mem_unit/memory_array[1][1] ), 
        .A6(n237), .Y(n207) );
  AO222X1_RVT U344 ( .A1(n207), .A2(n340), .A3(n164), .A4(
        \u_mem_unit/memory_array[2][1] ), .A5(stock[1]), .A6(n240), .Y(
        \u_mem_unit/n46 ) );
  AND3X1_RVT U345 ( .A1(state_out[1]), .A2(\u_control_unit/n16 ), .A3(
        state_out[0]), .Y(mem_write) );
  AO21X1_RVT U346 ( .A1(mem_write), .A2(n239), .A3(rst), .Y(n208) );
  INVX0_RVT U347 ( .A(n208), .Y(n218) );
  AO22X1_RVT U348 ( .A1(stock[0]), .A2(stock[1]), .A3(n320), .A4(n338), .Y(
        n226) );
  AO221X1_RVT U349 ( .A1(n218), .A2(\u_mem_unit/memory_array[3][1] ), .A3(n208), .A4(n226), .A5(rst), .Y(\u_mem_unit/n47 ) );
  AND2X1_RVT U350 ( .A1(n289), .A2(n208), .Y(n217) );
  OR3X1_RVT U351 ( .A1(stock[2]), .A2(stock[0]), .A3(stock[1]), .Y(n210) );
  INVX0_RVT U352 ( .A(n210), .Y(n209) );
  AO221X1_RVT U353 ( .A1(stock[2]), .A2(stock[0]), .A3(stock[2]), .A4(stock[1]), .A5(n209), .Y(n227) );
  AO22X1_RVT U354 ( .A1(n218), .A2(\u_mem_unit/memory_array[3][2] ), .A3(n217), 
        .A4(n227), .Y(\u_mem_unit/n48 ) );
  NOR4X1_RVT U355 ( .A1(stock[3]), .A2(stock[2]), .A3(stock[0]), .A4(stock[1]), 
        .Y(n212) );
  AO21X1_RVT U356 ( .A1(stock[3]), .A2(n210), .A3(n212), .Y(n228) );
  AO22X1_RVT U357 ( .A1(n218), .A2(\u_mem_unit/memory_array[3][3] ), .A3(n217), 
        .A4(n228), .Y(\u_mem_unit/n49 ) );
  INVX0_RVT U358 ( .A(n212), .Y(n211) );
  AO22X1_RVT U359 ( .A1(stock[4]), .A2(n211), .A3(n337), .A4(n212), .Y(n229)
         );
  AO22X1_RVT U360 ( .A1(n218), .A2(\u_mem_unit/memory_array[3][4] ), .A3(n217), 
        .A4(n229), .Y(\u_mem_unit/n50 ) );
  NAND2X0_RVT U361 ( .A1(n212), .A2(n337), .Y(n214) );
  OR2X1_RVT U362 ( .A1(stock[5]), .A2(n214), .Y(n215) );
  INVX0_RVT U363 ( .A(n215), .Y(n213) );
  AO21X1_RVT U364 ( .A1(stock[5]), .A2(n214), .A3(n213), .Y(n230) );
  AO22X1_RVT U365 ( .A1(n218), .A2(\u_mem_unit/memory_array[3][5] ), .A3(n217), 
        .A4(n230), .Y(\u_mem_unit/n51 ) );
  OR2X1_RVT U366 ( .A1(stock[6]), .A2(n215), .Y(n279) );
  INVX0_RVT U367 ( .A(n279), .Y(n216) );
  AO21X1_RVT U368 ( .A1(stock[6]), .A2(n215), .A3(n216), .Y(n231) );
  AO22X1_RVT U369 ( .A1(n218), .A2(\u_mem_unit/memory_array[3][6] ), .A3(n217), 
        .A4(n231), .Y(\u_mem_unit/n52 ) );
  AO22X1_RVT U370 ( .A1(stock[7]), .A2(n279), .A3(n339), .A4(n216), .Y(n232)
         );
  AO22X1_RVT U371 ( .A1(\u_mem_unit/memory_array[3][7] ), .A2(n218), .A3(n217), 
        .A4(n232), .Y(\u_mem_unit/n53 ) );
  AO22X1_RVT U372 ( .A1(\u_mem_unit/memory_array[3][0] ), .A2(n218), .A3(n217), 
        .A4(n320), .Y(\u_mem_unit/n54 ) );
  OA222X1_RVT U373 ( .A1(rst), .A2(n219), .A3(rst), .A4(mem_write), .A5(rst), 
        .A6(sel_item[1]), .Y(n221) );
  INVX0_RVT U374 ( .A(n221), .Y(n222) );
  AO221X1_RVT U375 ( .A1(n222), .A2(\u_mem_unit/memory_array[2][1] ), .A3(n221), .A4(n226), .A5(rst), .Y(\u_mem_unit/n55 ) );
  AND2X1_RVT U376 ( .A1(n289), .A2(n221), .Y(n220) );
  AO22X1_RVT U377 ( .A1(n222), .A2(\u_mem_unit/memory_array[2][2] ), .A3(n220), 
        .A4(n227), .Y(\u_mem_unit/n56 ) );
  AO22X1_RVT U378 ( .A1(n222), .A2(\u_mem_unit/memory_array[2][3] ), .A3(n220), 
        .A4(n228), .Y(\u_mem_unit/n57 ) );
  AO22X1_RVT U379 ( .A1(n222), .A2(\u_mem_unit/memory_array[2][4] ), .A3(n220), 
        .A4(n229), .Y(\u_mem_unit/n58 ) );
  AO22X1_RVT U380 ( .A1(n222), .A2(\u_mem_unit/memory_array[2][5] ), .A3(n220), 
        .A4(n230), .Y(\u_mem_unit/n59 ) );
  AO22X1_RVT U381 ( .A1(n222), .A2(\u_mem_unit/memory_array[2][6] ), .A3(n220), 
        .A4(n231), .Y(\u_mem_unit/n60 ) );
  AO22X1_RVT U382 ( .A1(\u_mem_unit/memory_array[2][7] ), .A2(n222), .A3(n220), 
        .A4(n232), .Y(\u_mem_unit/n61 ) );
  NAND2X0_RVT U383 ( .A1(stock[0]), .A2(n289), .Y(n234) );
  AO22X1_RVT U384 ( .A1(n222), .A2(\u_mem_unit/memory_array[2][0] ), .A3(n221), 
        .A4(n234), .Y(\u_mem_unit/n62 ) );
  AO21X1_RVT U385 ( .A1(mem_write), .A2(n237), .A3(rst), .Y(n224) );
  INVX0_RVT U386 ( .A(n224), .Y(n225) );
  AND2X1_RVT U387 ( .A1(n289), .A2(n224), .Y(n223) );
  AO22X1_RVT U388 ( .A1(n225), .A2(\u_mem_unit/memory_array[1][1] ), .A3(n223), 
        .A4(n226), .Y(\u_mem_unit/n63 ) );
  AO221X1_RVT U389 ( .A1(n227), .A2(n224), .A3(n225), .A4(
        \u_mem_unit/memory_array[1][2] ), .A5(rst), .Y(\u_mem_unit/n64 ) );
  AO22X1_RVT U390 ( .A1(n225), .A2(\u_mem_unit/memory_array[1][3] ), .A3(n223), 
        .A4(n228), .Y(\u_mem_unit/n65 ) );
  AO22X1_RVT U391 ( .A1(n225), .A2(\u_mem_unit/memory_array[1][4] ), .A3(n223), 
        .A4(n229), .Y(\u_mem_unit/n66 ) );
  AO22X1_RVT U392 ( .A1(n225), .A2(\u_mem_unit/memory_array[1][5] ), .A3(n223), 
        .A4(n230), .Y(\u_mem_unit/n67 ) );
  AO22X1_RVT U393 ( .A1(n225), .A2(\u_mem_unit/memory_array[1][6] ), .A3(n223), 
        .A4(n231), .Y(\u_mem_unit/n68 ) );
  AO22X1_RVT U394 ( .A1(\u_mem_unit/memory_array[1][7] ), .A2(n225), .A3(n223), 
        .A4(n232), .Y(\u_mem_unit/n69 ) );
  AO22X1_RVT U395 ( .A1(n225), .A2(\u_mem_unit/memory_array[1][0] ), .A3(n224), 
        .A4(n234), .Y(\u_mem_unit/n70 ) );
  AO21X1_RVT U396 ( .A1(mem_write), .A2(n238), .A3(rst), .Y(n235) );
  INVX0_RVT U397 ( .A(n235), .Y(n236) );
  AND2X1_RVT U398 ( .A1(n289), .A2(n235), .Y(n233) );
  AO22X1_RVT U399 ( .A1(n236), .A2(\u_mem_unit/memory_array[0][1] ), .A3(n233), 
        .A4(n226), .Y(\u_mem_unit/n71 ) );
  AO221X1_RVT U400 ( .A1(n227), .A2(n235), .A3(n236), .A4(
        \u_mem_unit/memory_array[0][2] ), .A5(rst), .Y(\u_mem_unit/n72 ) );
  AO22X1_RVT U401 ( .A1(n236), .A2(\u_mem_unit/memory_array[0][3] ), .A3(n233), 
        .A4(n228), .Y(\u_mem_unit/n73 ) );
  AO22X1_RVT U402 ( .A1(n236), .A2(\u_mem_unit/memory_array[0][4] ), .A3(n233), 
        .A4(n229), .Y(\u_mem_unit/n74 ) );
  AO22X1_RVT U403 ( .A1(n236), .A2(\u_mem_unit/memory_array[0][5] ), .A3(n233), 
        .A4(n230), .Y(\u_mem_unit/n75 ) );
  AO22X1_RVT U404 ( .A1(n236), .A2(\u_mem_unit/memory_array[0][6] ), .A3(n233), 
        .A4(n231), .Y(\u_mem_unit/n76 ) );
  AO22X1_RVT U405 ( .A1(\u_mem_unit/memory_array[0][7] ), .A2(n236), .A3(n233), 
        .A4(n232), .Y(\u_mem_unit/n77 ) );
  AO22X1_RVT U406 ( .A1(n236), .A2(\u_mem_unit/memory_array[0][0] ), .A3(n235), 
        .A4(n234), .Y(\u_mem_unit/n78 ) );
  AO222X1_RVT U407 ( .A1(n239), .A2(\u_mem_unit/memory_array[3][0] ), .A3(n238), .A4(\u_mem_unit/memory_array[0][0] ), .A5(\u_mem_unit/memory_array[1][0] ), 
        .A6(n237), .Y(n241) );
  AO222X1_RVT U408 ( .A1(n241), .A2(n340), .A3(n164), .A4(
        \u_mem_unit/memory_array[2][0] ), .A5(stock[0]), .A6(n240), .Y(
        \u_mem_unit/n79 ) );
  OA22X1_RVT U409 ( .A1(n329), .A2(n244), .A3(n243), .A4(n242), .Y(n341) );
  NAND2X0_RVT U410 ( .A1(display[3]), .A2(n247), .Y(n245) );
  NAND3X0_RVT U411 ( .A1(coin_in[0]), .A2(coin_in[1]), .A3(n245), .Y(n265) );
  NAND2X0_RVT U412 ( .A1(display[4]), .A2(n265), .Y(n250) );
  AO21X1_RVT U413 ( .A1(n326), .A2(n250), .A3(n246), .Y(n257) );
  INVX0_RVT U414 ( .A(n257), .Y(n254) );
  INVX0_RVT U415 ( .A(coin_in[0]), .Y(n273) );
  NAND3X0_RVT U416 ( .A1(n273), .A2(display[3]), .A3(n247), .Y(n248) );
  AO22X1_RVT U417 ( .A1(n324), .A2(n249), .A3(n248), .A4(coin_in[1]), .Y(n266)
         );
  NAND2X0_RVT U418 ( .A1(n266), .A2(n250), .Y(n251) );
  OA21X1_RVT U419 ( .A1(coin_in[1]), .A2(n251), .A3(n272), .Y(n262) );
  NAND2X0_RVT U420 ( .A1(coin_in[1]), .A2(n251), .Y(n261) );
  INVX0_RVT U421 ( .A(n261), .Y(n252) );
  AO222X1_RVT U422 ( .A1(n262), .A2(display[5]), .A3(n262), .A4(n253), .A5(
        n262), .A6(n252), .Y(n258) );
  OA21X1_RVT U423 ( .A1(display[6]), .A2(n254), .A3(n258), .Y(n255) );
  HADDX1_RVT U424 ( .A0(display[7]), .B0(n255), .SO(n256) );
  AND2X1_RVT U425 ( .A1(n342), .A2(n256), .Y(\u_credit_unit/n5 ) );
  NAND2X0_RVT U426 ( .A1(n258), .A2(n257), .Y(n259) );
  INVX0_RVT U427 ( .A(n259), .Y(n260) );
  OA221X1_RVT U428 ( .A1(display[6]), .A2(n260), .A3(n328), .A4(n259), .A5(
        n342), .Y(\u_credit_unit/n6 ) );
  NAND2X0_RVT U429 ( .A1(n262), .A2(n261), .Y(n263) );
  INVX0_RVT U430 ( .A(n263), .Y(n264) );
  OA221X1_RVT U431 ( .A1(display[5]), .A2(n264), .A3(n326), .A4(n263), .A5(
        n342), .Y(\u_credit_unit/n7 ) );
  NAND3X0_RVT U432 ( .A1(n272), .A2(n266), .A3(n265), .Y(n267) );
  INVX0_RVT U433 ( .A(n267), .Y(n268) );
  OA221X1_RVT U434 ( .A1(display[4]), .A2(n268), .A3(n325), .A4(n267), .A5(
        n342), .Y(\u_credit_unit/n8 ) );
  NAND2X0_RVT U435 ( .A1(n272), .A2(n269), .Y(n270) );
  INVX0_RVT U436 ( .A(n270), .Y(n271) );
  OA221X1_RVT U437 ( .A1(display[2]), .A2(n271), .A3(n323), .A4(n270), .A5(
        n342), .Y(\u_credit_unit/n10 ) );
  INVX0_RVT U438 ( .A(n276), .Y(n277) );
  AO22X1_RVT U439 ( .A1(n273), .A2(n272), .A3(display[0]), .A4(n277), .Y(n275)
         );
  INVX0_RVT U440 ( .A(n275), .Y(n274) );
  OA221X1_RVT U441 ( .A1(display[1]), .A2(n275), .A3(n322), .A4(n274), .A5(
        n342), .Y(\u_credit_unit/n11 ) );
  OA221X1_RVT U442 ( .A1(display[0]), .A2(n277), .A3(n321), .A4(n276), .A5(
        n342), .Y(\u_credit_unit/n12 ) );
  INVX0_RVT U443 ( .A(n278), .Y(n280) );
  OA22X1_RVT U444 ( .A1(display[7]), .A2(n280), .A3(stock[7]), .A4(n279), .Y(
        n284) );
  NAND2X0_RVT U445 ( .A1(state_out[1]), .A2(\u_control_unit/n16 ), .Y(n283) );
  INVX0_RVT U446 ( .A(n283), .Y(n281) );
  NAND4X0_RVT U447 ( .A1(n284), .A2(n281), .A3(n289), .A4(n327), .Y(n343) );
  AND3X1_RVT U448 ( .A1(state_out[0]), .A2(n319), .A3(state_out[2]), .Y(error)
         );
  OAI22X1_RVT U449 ( .A1(n284), .A2(n283), .A3(\u_control_unit/n16 ), .A4(n282), .Y(n285) );
  OA21X1_RVT U450 ( .A1(mem_write), .A2(n285), .A3(n289), .Y(
        \u_control_unit/N14 ) );
  AND2X1_RVT U451 ( .A1(n327), .A2(\u_control_unit/n16 ), .Y(n288) );
  OR2X1_RVT U452 ( .A1(n286), .A2(state_out[1]), .Y(n287) );
  AND2X1_RVT U453 ( .A1(n288), .A2(n287), .Y(n292) );
  NAND2X0_RVT U454 ( .A1(\u_control_unit/n16 ), .A2(confirm), .Y(n290) );
  OA221X1_RVT U455 ( .A1(n292), .A2(n291), .A3(n292), .A4(n290), .A5(n289), 
        .Y(\u_control_unit/N12 ) );
endmodule

