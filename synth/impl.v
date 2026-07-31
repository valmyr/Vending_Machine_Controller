/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : X-2025.06-SP2
// Date      : Fri Jul 31 15:57:39 2026
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
  wire   cancel_reg, N7, \u_mem_unit/n79 , \u_mem_unit/n78 , \u_mem_unit/n77 ,
         \u_mem_unit/n76 , \u_mem_unit/n75 , \u_mem_unit/n74 ,
         \u_mem_unit/n73 , \u_mem_unit/n72 , \u_mem_unit/n71 ,
         \u_mem_unit/n70 , \u_mem_unit/n69 , \u_mem_unit/n68 ,
         \u_mem_unit/n67 , \u_mem_unit/n66 , \u_mem_unit/n65 ,
         \u_mem_unit/n64 , \u_mem_unit/n63 , \u_mem_unit/n62 ,
         \u_mem_unit/n61 , \u_mem_unit/n60 , \u_mem_unit/n59 ,
         \u_mem_unit/n58 , \u_mem_unit/n57 , \u_mem_unit/n56 ,
         \u_mem_unit/n55 , \u_mem_unit/n54 , \u_mem_unit/n53 ,
         \u_mem_unit/n52 , \u_mem_unit/n51 , \u_mem_unit/n50 ,
         \u_mem_unit/n49 , \u_mem_unit/n48 , \u_mem_unit/n47 ,
         \u_mem_unit/n46 , \u_mem_unit/n45 , \u_mem_unit/n44 ,
         \u_mem_unit/n43 , \u_mem_unit/n42 , \u_mem_unit/n41 ,
         \u_mem_unit/n40 , \u_mem_unit/n38 , \u_mem_unit/n37 ,
         \u_mem_unit/n35 , \u_mem_unit/n34 , \u_mem_unit/memory_array[3][7] ,
         \u_mem_unit/memory_array[3][5] , \u_mem_unit/memory_array[3][4] ,
         \u_mem_unit/memory_array[3][3] , \u_mem_unit/memory_array[3][2] ,
         \u_mem_unit/memory_array[3][1] , \u_mem_unit/memory_array[3][0] ,
         \u_mem_unit/memory_array[2][7] , \u_mem_unit/memory_array[2][6] ,
         \u_mem_unit/memory_array[2][5] , \u_mem_unit/memory_array[2][4] ,
         \u_mem_unit/memory_array[2][3] , \u_mem_unit/memory_array[2][2] ,
         \u_mem_unit/memory_array[2][1] , \u_mem_unit/memory_array[2][0] ,
         \u_mem_unit/memory_array[1][7] , \u_mem_unit/memory_array[1][6] ,
         \u_mem_unit/memory_array[1][5] , \u_mem_unit/memory_array[1][4] ,
         \u_mem_unit/memory_array[1][3] , \u_mem_unit/memory_array[1][2] ,
         \u_mem_unit/memory_array[1][1] , \u_mem_unit/memory_array[1][0] ,
         \u_mem_unit/memory_array[0][7] , \u_mem_unit/memory_array[0][5] ,
         \u_mem_unit/memory_array[0][4] , \u_mem_unit/memory_array[0][3] ,
         \u_mem_unit/memory_array[0][2] , \u_mem_unit/memory_array[0][1] ,
         \u_mem_unit/memory_array[0][0] , \u_credit_unit/n12 ,
         \u_credit_unit/n11 , \u_credit_unit/n10 , \u_credit_unit/n9 ,
         \u_credit_unit/n8 , \u_credit_unit/n7 , \u_credit_unit/n6 ,
         \u_credit_unit/n5 , \u_control_unit/n16 , \u_control_unit/N14 ,
         \u_control_unit/N13 , \u_control_unit/N12 , n164, n165, n166, n167,
         n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, n178,
         n179, n180, n181, n182, n183, n184, n185, n186, n187, n188, n189,
         n190, n191, n192, n193, n194, n195, n196, n197, n198, n199, n200,
         n201, n202, n203, n204, n205, n206, n207, n208, n209, n210, n211,
         n212, n213, n214, n215, n216, n217, n218, n219, n220, n221, n222,
         n223, n224, n225, n226, n227, n228, n229, n230, n231, n232, n233,
         n234, n235, n236, n237, n238, n239, n240, n241, n242, n243, n244,
         n245, n246, n247, n248, n249, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n267, n268, n269, n270, n271, n272, n273, n274, n275, n276, n277,
         n278, n279, n280, n281, n282, n283, n284, n285, n286, n287, n288,
         n289, n290, n291, n292, n293, n294, n295, n296, n297, n298, n299,
         n300, n301, n302, n303, n304, n305, n306, n307, n308, n309, n310,
         n311, n312, n313, n314, n315, n316, n317, n318, n319, n320, n321,
         n322, n323, n324, n325, n326, n327, n328, n329, n330, n331, n332,
         n333, n334, n335, n336, n337, n338, n339, n340, n341, n342, n343,
         n344, n345, n346, n347, n348, n349, n350, n351, n352, n353, n354,
         n355, n356, n357, n358, n359, n360, n361, n362, n363, n364, n365,
         n366, n367, n368, n369, n370, n371, n372, n373, n374, n375, n376,
         n377, n378, n379, n380, n381, n382, n383, n384, n385, n386, n387,
         n388, n389, n390, n391, n392, n393, n394, n395, n396, n397, n398,
         n399, n402, n403, n404, n405, n406, n407, n408, n409, n410, n411,
         n412, n413, n414, n415, n416, n417, n418, n419, n420, n421, n422,
         n423, n424, n425, n426, n427, n428, n429, n430, n431, n432, n433,
         n434, n435, n436, n437, n438, n439, n440, n441, n442, n443, n444,
         n445, n446, n447, n448, n449, n450, n451, n452, n453, n454, n455,
         n456, n457, n458, n459, n460, n461, n462, n463, n464, n465, n466,
         n467, n468, n469, n470, n471, n472, n473, n474, n475, n476, n477,
         n478, n479, n480, n481, n482, n483, n484, n485, n486, n487, n488,
         n489, n490, n491, n492, n493, n494, n495, n496, n497, n498, n499,
         n500, n501, n502, n503, n504, n505, n506, n507, n508, n509, n510,
         n511, n512, n513, n514, n515, n516, n517, n518, n519, n520, n521,
         n522, n523, n524, n525, n526, n527, n528, n529, n530, n531, n532,
         n533, n534, n535, n536, n537, n538, n539, n540, n541, n542, n543,
         n544, n545, n546, n547, n548;
  wire   [7:0] stock;
  wire   [7:0] price;

  DFFX1_RVT \u_mem_unit/stock_reg[1]  ( .D(\u_mem_unit/n46 ), .CLK(clk), .Q(
        stock[1]) );
  DFFX1_RVT \u_mem_unit/price_reg[1]  ( .D(\u_mem_unit/n34 ), .CLK(clk), .Q(
        price[1]), .QN(n544) );
  DFFX1_RVT \u_mem_unit/price_reg[2]  ( .D(\u_mem_unit/n35 ), .CLK(clk), .Q(
        price[2]), .QN(n543) );
  DFFX1_RVT \u_mem_unit/price_reg[5]  ( .D(\u_mem_unit/n38 ), .CLK(clk), .Q(
        price[5]), .QN(n538) );
  DFFX1_RVT \u_mem_unit/price_reg[6]  ( .D(n506), .CLK(clk), .Q(price[6]), 
        .QN(n501) );
  DFFX1_RVT \u_mem_unit/price_reg[3]  ( .D(n503), .CLK(clk), .Q(price[3]), 
        .QN(n507) );
  DFFX1_RVT \u_mem_unit/price_reg[4]  ( .D(\u_mem_unit/n37 ), .CLK(clk), .Q(
        price[4]), .QN(n541) );
  DFFX1_RVT \u_mem_unit/stock_reg[4]  ( .D(\u_mem_unit/n43 ), .CLK(clk), .Q(
        stock[4]), .QN(n510) );
  DFFX1_RVT \u_mem_unit/stock_reg[5]  ( .D(\u_mem_unit/n42 ), .CLK(clk), .Q(
        stock[5]), .QN(n509) );
  DFFX1_RVT \u_mem_unit/stock_reg[6]  ( .D(\u_mem_unit/n41 ), .CLK(clk), .Q(
        stock[6]), .QN(n528) );
  DFFX1_RVT \u_mem_unit/stock_reg[3]  ( .D(\u_mem_unit/n44 ), .CLK(clk), .Q(
        stock[3]), .QN(n511) );
  DFFX1_RVT \u_mem_unit/stock_reg[7]  ( .D(\u_mem_unit/n40 ), .CLK(clk), .Q(
        stock[7]) );
  DFFX1_RVT \u_mem_unit/price_reg[0]  ( .D(n505), .CLK(clk), .Q(price[0]), 
        .QN(n546) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[3][7]  ( .D(\u_mem_unit/n53 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[3][7] ), .QN(n522) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[2][1]  ( .D(\u_mem_unit/n55 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[2][1] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[3][1]  ( .D(\u_mem_unit/n47 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[3][1] ), .QN(n527) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[1][7]  ( .D(\u_mem_unit/n69 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[1][7] ), .QN(n536) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[0][7]  ( .D(\u_mem_unit/n77 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[0][7] ), .QN(n513) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[1][0]  ( .D(\u_mem_unit/n70 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[1][0] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[1][1]  ( .D(\u_mem_unit/n63 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[1][1] ), .QN(n531) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[1][2]  ( .D(\u_mem_unit/n64 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[1][2] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[1][3]  ( .D(\u_mem_unit/n65 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[1][3] ), .QN(n532) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[1][4]  ( .D(\u_mem_unit/n66 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[1][4] ), .QN(n533) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[1][5]  ( .D(\u_mem_unit/n67 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[1][5] ), .QN(n534) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[1][6]  ( .D(\u_mem_unit/n68 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[1][6] ), .QN(n535) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[2][7]  ( .D(\u_mem_unit/n61 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[2][7] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[3][0]  ( .D(\u_mem_unit/n54 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[3][0] ), .QN(n523) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[2][0]  ( .D(\u_mem_unit/n62 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[2][0] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[2][2]  ( .D(\u_mem_unit/n56 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[2][2] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[2][3]  ( .D(\u_mem_unit/n57 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[2][3] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[3][2]  ( .D(\u_mem_unit/n48 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[3][2] ), .QN(n521) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[3][3]  ( .D(\u_mem_unit/n49 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[3][3] ), .QN(n524) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[3][4]  ( .D(\u_mem_unit/n50 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[3][4] ), .QN(n525) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[3][5]  ( .D(\u_mem_unit/n51 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[3][5] ), .QN(n526) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[3][6]  ( .D(\u_mem_unit/n52 ), .CLK(
        clk), .QN(n520) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[0][0]  ( .D(\u_mem_unit/n78 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[0][0] ), .QN(n519) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[0][1]  ( .D(\u_mem_unit/n71 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[0][1] ), .QN(n514) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[0][2]  ( .D(\u_mem_unit/n72 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[0][2] ), .QN(n518) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[0][3]  ( .D(\u_mem_unit/n73 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[0][3] ), .QN(n515) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[0][4]  ( .D(\u_mem_unit/n74 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[0][4] ), .QN(n516) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[0][5]  ( .D(\u_mem_unit/n75 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[0][5] ), .QN(n517) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[2][4]  ( .D(\u_mem_unit/n58 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[2][4] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[2][5]  ( .D(\u_mem_unit/n59 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[2][5] ) );
  DFFX1_RVT \u_mem_unit/memory_array_reg[2][6]  ( .D(\u_mem_unit/n60 ), .CLK(
        clk), .Q(\u_mem_unit/memory_array[2][6] ), .QN(n530) );
  DFFX1_RVT \u_mem_unit/stock_reg[0]  ( .D(\u_mem_unit/n79 ), .CLK(clk), .Q(
        stock[0]), .QN(n529) );
  DFFX1_RVT \u_mem_unit/stock_reg[2]  ( .D(\u_mem_unit/n45 ), .CLK(clk), .Q(
        stock[2]) );
  DFFX1_RVT \u_credit_unit/credit_reg[7]  ( .D(\u_credit_unit/n5 ), .CLK(clk), 
        .Q(display[7]), .QN(n234) );
  DFFX1_RVT \u_credit_unit/credit_reg[1]  ( .D(\u_credit_unit/n11 ), .CLK(clk), 
        .Q(display[1]), .QN(n548) );
  DFFX1_RVT \u_credit_unit/credit_reg[4]  ( .D(\u_credit_unit/n8 ), .CLK(clk), 
        .Q(display[4]), .QN(n504) );
  DFFX1_RVT \u_credit_unit/credit_reg[0]  ( .D(\u_credit_unit/n12 ), .CLK(clk), 
        .Q(display[0]), .QN(n540) );
  DFFX1_RVT \u_control_unit/state_reg[0]  ( .D(\u_control_unit/N12 ), .CLK(clk), .Q(state_out[0]), .QN(n502) );
  DFFX1_RVT \u_control_unit/state_reg[1]  ( .D(\u_control_unit/N13 ), .CLK(clk), .Q(state_out[1]), .QN(n508) );
  DFFX1_RVT \u_credit_unit/credit_reg[5]  ( .D(\u_credit_unit/n7 ), .CLK(clk), 
        .Q(display[5]), .QN(n545) );
  DFFX2_RVT \u_mem_unit/memory_array_reg[0][6]  ( .D(\u_mem_unit/n76 ), .CLK(
        clk), .QN(n512) );
  DFFX1_RVT \u_credit_unit/credit_reg[2]  ( .D(\u_credit_unit/n10 ), .CLK(clk), 
        .Q(display[2]), .QN(n547) );
  DFFX2_RVT \u_control_unit/state_reg[2]  ( .D(\u_control_unit/N14 ), .CLK(clk), .Q(state_out[2]), .QN(\u_control_unit/n16 ) );
  DFFX2_RVT cancel_reg_reg ( .D(N7), .CLK(clk), .Q(cancel_reg), .QN(n537) );
  DFFX2_RVT \u_credit_unit/credit_reg[3]  ( .D(\u_credit_unit/n9 ), .CLK(clk), 
        .Q(display[3]), .QN(n542) );
  DFFX1_RVT \u_credit_unit/credit_reg[6]  ( .D(\u_credit_unit/n6 ), .CLK(clk), 
        .Q(display[6]), .QN(n539) );
  OR2X1_RVT U232 ( .A1(n404), .A2(n255), .Y(n233) );
  INVX0_RVT U233 ( .A(n399), .Y(n165) );
  INVX0_RVT U234 ( .A(n398), .Y(n172) );
  INVX0_RVT U235 ( .A(n169), .Y(n168) );
  INVX0_RVT U236 ( .A(n174), .Y(n173) );
  INVX0_RVT U237 ( .A(display[3]), .Y(n170) );
  XNOR2X1_RVT U238 ( .A1(n394), .A2(n540), .Y(n386) );
  OR2X2_RVT U239 ( .A1(n396), .A2(n423), .Y(n404) );
  NOR2X0_RVT U240 ( .A1(n261), .A2(n502), .Y(dispense) );
  NOR4X1_RVT U241 ( .A1(n175), .A2(n410), .A3(n166), .A4(n164), .Y(
        \u_credit_unit/n9 ) );
  NOR3X0_RVT U242 ( .A1(n397), .A2(n170), .A3(n165), .Y(n164) );
  OR2X1_RVT U243 ( .A1(n171), .A2(n167), .Y(n166) );
  NOR2X0_RVT U244 ( .A1(n168), .A2(n398), .Y(n167) );
  AND2X1_RVT U245 ( .A1(n397), .A2(n170), .Y(n169) );
  NOR2X0_RVT U246 ( .A1(n173), .A2(n172), .Y(n171) );
  AND2X1_RVT U247 ( .A1(n397), .A2(display[3]), .Y(n174) );
  NOR3X0_RVT U248 ( .A1(display[3]), .A2(n397), .A3(n399), .Y(n175) );
  OR3X1_RVT U249 ( .A1(n396), .A2(n389), .A3(n423), .Y(n394) );
  NBUFFX2_RVT U250 ( .A(coin_in[1]), .Y(n389) );
  OR2X1_RVT U251 ( .A1(n541), .A2(display[4]), .Y(n473) );
  INVX1_RVT U252 ( .A(n537), .Y(n496) );
  XNOR2X1_RVT U253 ( .A1(n392), .A2(n448), .Y(n393) );
  INVX1_RVT U254 ( .A(n374), .Y(n353) );
  INVX1_RVT U255 ( .A(n378), .Y(n359) );
  INVX1_RVT U256 ( .A(sel_item[1]), .Y(n402) );
  OR2X1_RVT U257 ( .A1(n547), .A2(price[2]), .Y(n235) );
  AND2X1_RVT U258 ( .A1(n537), .A2(display[7]), .Y(n488) );
  AO21X1_RVT U259 ( .A1(n496), .A2(n545), .A3(n245), .Y(n241) );
  OR2X1_RVT U260 ( .A1(n496), .A2(n195), .Y(n435) );
  INVX1_RVT U261 ( .A(n262), .Y(n245) );
  NOR2X0_RVT U262 ( .A1(price[4]), .A2(n504), .Y(n465) );
  INVX0_RVT U263 ( .A(n246), .Y(n203) );
  INVX0_RVT U264 ( .A(n350), .Y(n263) );
  OR2X1_RVT U265 ( .A1(n288), .A2(sel_item[1]), .Y(n291) );
  INVX0_RVT U266 ( .A(n421), .Y(n272) );
  INVX0_RVT U267 ( .A(n475), .Y(n205) );
  AO21X1_RVT U268 ( .A1(n482), .A2(n487), .A3(n481), .Y(n483) );
  NOR2X0_RVT U269 ( .A1(n480), .A2(n479), .Y(n482) );
  INVX0_RVT U270 ( .A(coin_in[1]), .Y(n395) );
  NAND3X0_RVT U271 ( .A1(n206), .A2(n176), .A3(n214), .Y(n187) );
  NOR2X0_RVT U272 ( .A1(display[6]), .A2(n501), .Y(n490) );
  NOR2X0_RVT U273 ( .A1(display[0]), .A2(n546), .Y(n430) );
  NOR2X0_RVT U274 ( .A1(display[2]), .A2(n543), .Y(n440) );
  NOR2X0_RVT U275 ( .A1(n244), .A2(n238), .Y(n243) );
  OR3X1_RVT U276 ( .A1(n429), .A2(n241), .A3(n240), .Y(n242) );
  NOR2X0_RVT U277 ( .A1(n473), .A2(n239), .Y(n240) );
  OR2X1_RVT U278 ( .A1(n271), .A2(state_out[2]), .Y(n422) );
  INVX1_RVT U279 ( .A(n360), .Y(n380) );
  INVX1_RVT U280 ( .A(n354), .Y(n375) );
  INVX1_RVT U281 ( .A(n357), .Y(n377) );
  NAND2X0_RVT U282 ( .A1(sel_item[1]), .A2(sel_item[0]), .Y(n192) );
  NAND2X0_RVT U283 ( .A1(sel_item[1]), .A2(sel_item[0]), .Y(n193) );
  NOR2X0_RVT U284 ( .A1(n396), .A2(n395), .Y(n398) );
  NOR2X0_RVT U285 ( .A1(n361), .A2(n360), .Y(n362) );
  NOR2X0_RVT U286 ( .A1(n371), .A2(n361), .Y(n351) );
  NOR2X0_RVT U287 ( .A1(n371), .A2(n342), .Y(n343) );
  INVX0_RVT U288 ( .A(n345), .Y(n342) );
  NOR2X0_RVT U289 ( .A1(n371), .A2(n332), .Y(n333) );
  INVX0_RVT U290 ( .A(n335), .Y(n332) );
  NOR2X0_RVT U291 ( .A1(n371), .A2(n321), .Y(n322) );
  INVX0_RVT U292 ( .A(n324), .Y(n321) );
  NOR2X0_RVT U293 ( .A1(n371), .A2(n300), .Y(n301) );
  NOR2X0_RVT U294 ( .A1(n371), .A2(n370), .Y(n372) );
  INVX0_RVT U295 ( .A(n379), .Y(n370) );
  INVX1_RVT U296 ( .A(n491), .Y(n480) );
  AO21X1_RVT U297 ( .A1(n489), .A2(n480), .A3(n490), .Y(n497) );
  INVX0_RVT U298 ( .A(n330), .Y(n340) );
  INVX0_RVT U299 ( .A(n319), .Y(n329) );
  INVX0_RVT U300 ( .A(dispense), .Y(n286) );
  INVX1_RVT U301 ( .A(n209), .Y(n469) );
  INVX0_RVT U302 ( .A(n472), .Y(n266) );
  INVX1_RVT U303 ( .A(n467), .Y(n206) );
  INVX0_RVT U304 ( .A(n214), .Y(n226) );
  NOR2X0_RVT U305 ( .A1(price[3]), .A2(n542), .Y(n467) );
  NOR2X0_RVT U306 ( .A1(n494), .A2(n493), .Y(n495) );
  INVX0_RVT U307 ( .A(n497), .Y(n220) );
  INVX0_RVT U308 ( .A(rst), .Y(n284) );
  INVX1_RVT U309 ( .A(n282), .Y(n199) );
  INVX0_RVT U310 ( .A(display[6]), .Y(n201) );
  INVX0_RVT U311 ( .A(n543), .Y(n194) );
  INVX0_RVT U312 ( .A(n544), .Y(n195) );
  OR2X1_RVT U313 ( .A1(n191), .A2(n407), .Y(n408) );
  OR3X1_RVT U314 ( .A1(n315), .A2(n314), .A3(n313), .Y(n316) );
  NOR2X0_RVT U315 ( .A1(n521), .A2(n192), .Y(n314) );
  OR3X1_RVT U316 ( .A1(n294), .A2(n293), .A3(n292), .Y(n297) );
  NOR2X0_RVT U317 ( .A1(n523), .A2(n192), .Y(n293) );
  OR3X1_RVT U318 ( .A1(n384), .A2(n383), .A3(n382), .Y(n385) );
  NOR2X0_RVT U319 ( .A1(n522), .A2(n192), .Y(n383) );
  OR3X1_RVT U320 ( .A1(n327), .A2(n326), .A3(n325), .Y(n328) );
  NOR2X0_RVT U321 ( .A1(n524), .A2(n193), .Y(n326) );
  OR3X1_RVT U322 ( .A1(n366), .A2(n365), .A3(n364), .Y(n367) );
  NOR2X0_RVT U323 ( .A1(n520), .A2(n193), .Y(n365) );
  OR3X1_RVT U324 ( .A1(n348), .A2(n347), .A3(n346), .Y(n349) );
  NOR2X0_RVT U325 ( .A1(n526), .A2(n193), .Y(n347) );
  OR3X1_RVT U326 ( .A1(n338), .A2(n337), .A3(n336), .Y(n339) );
  NOR2X0_RVT U327 ( .A1(n525), .A2(n192), .Y(n337) );
  OR3X1_RVT U328 ( .A1(n308), .A2(n307), .A3(n306), .Y(n309) );
  NOR2X0_RVT U329 ( .A1(n527), .A2(n193), .Y(n307) );
  OAI21X1_RVT U330 ( .A1(price[4]), .A2(n459), .A3(n473), .Y(n176) );
  NAND2X0_RVT U331 ( .A1(n496), .A2(n539), .Y(n177) );
  NAND2X0_RVT U332 ( .A1(n539), .A2(n501), .Y(n178) );
  NOR2X0_RVT U333 ( .A1(n475), .A2(n474), .Y(n179) );
  NOR2X0_RVT U334 ( .A1(n215), .A2(n219), .Y(n180) );
  OA21X1_RVT U335 ( .A1(n448), .A2(n542), .A3(coin_in[0]), .Y(n181) );
  AOI21X1_RVT U336 ( .A1(n202), .A2(n248), .A3(n448), .Y(n182) );
  AND2X1_RVT U337 ( .A1(n182), .A2(n183), .Y(n397) );
  OR2X1_RVT U338 ( .A1(n249), .A2(coin_in[1]), .Y(n183) );
  AND3X1_RVT U339 ( .A1(n184), .A2(n185), .A3(n186), .Y(change_out[5]) );
  NOR2X0_RVT U340 ( .A1(n243), .A2(n242), .Y(n184) );
  OR4X1_RVT U341 ( .A1(n465), .A2(n467), .A3(n239), .A4(n226), .Y(n185) );
  OR2X1_RVT U342 ( .A1(n244), .A2(n463), .Y(n186) );
  OR2X1_RVT U343 ( .A1(n548), .A2(price[1]), .Y(n439) );
  OR2X1_RVT U344 ( .A1(n464), .A2(n463), .Y(n189) );
  OR3X2_RVT U345 ( .A1(n453), .A2(n452), .A3(n266), .Y(n214) );
  AND4X1_RVT U346 ( .A1(n187), .A2(n188), .A3(n431), .A4(n189), .Y(
        change_out[4]) );
  NAND2X0_RVT U347 ( .A1(n496), .A2(n504), .Y(n188) );
  OR2X2_RVT U348 ( .A1(n245), .A2(n203), .Y(n499) );
  XOR2X2_RVT U349 ( .A1(n190), .A2(display[5]), .Y(n281) );
  AND3X1_RVT U350 ( .A1(n224), .A2(n223), .A3(n222), .Y(n190) );
  AO22X1_RVT U351 ( .A1(n395), .A2(display[3]), .A3(n397), .A4(n228), .Y(n191)
         );
  NBUFFX2_RVT U352 ( .A(display[1]), .Y(n196) );
  NOR3X0_RVT U353 ( .A1(n200), .A2(n198), .A3(n197), .Y(\u_credit_unit/n6 ) );
  NOR4X1_RVT U354 ( .A1(n256), .A2(n233), .A3(n282), .A4(n254), .Y(n197) );
  OA21X1_RVT U355 ( .A1(n199), .A2(n254), .A3(n201), .Y(n198) );
  AO21X1_RVT U356 ( .A1(n233), .A2(n201), .A3(n410), .Y(n200) );
  NBUFFX2_RVT U357 ( .A(n548), .Y(n202) );
  INVX0_RVT U358 ( .A(n424), .Y(n204) );
  NAND3X0_RVT U359 ( .A1(n262), .A2(n246), .A3(n177), .Y(n481) );
  AND2X1_RVT U360 ( .A1(n204), .A2(n508), .Y(n246) );
  OR2X2_RVT U361 ( .A1(n502), .A2(cancel_reg), .Y(n262) );
  AND2X1_RVT U362 ( .A1(n502), .A2(\u_control_unit/n16 ), .Y(n424) );
  NOR2X0_RVT U363 ( .A1(n544), .A2(display[1]), .Y(n438) );
  AO21X1_RVT U364 ( .A1(n179), .A2(n476), .A3(n483), .Y(n211) );
  OR2X1_RVT U365 ( .A1(n453), .A2(n452), .Y(n209) );
  NOR3X0_RVT U366 ( .A1(n212), .A2(n211), .A3(n207), .Y(change_out[6]) );
  AO21X1_RVT U367 ( .A1(n210), .A2(n209), .A3(n208), .Y(n207) );
  NOR3X0_RVT U368 ( .A1(n470), .A2(n471), .A3(n209), .Y(n208) );
  AND3X1_RVT U369 ( .A1(n206), .A2(n205), .A3(n476), .Y(n210) );
  OR2X1_RVT U370 ( .A1(n477), .A2(n478), .Y(n212) );
  OR2X1_RVT U371 ( .A1(n545), .A2(cancel_reg), .Y(n213) );
  INVX0_RVT U372 ( .A(n213), .Y(n236) );
  OA21X1_RVT U373 ( .A1(n213), .A2(price[5]), .A3(n491), .Y(n239) );
  OR2X2_RVT U374 ( .A1(n538), .A2(display[5]), .Y(n491) );
  AND2X1_RVT U375 ( .A1(n214), .A2(n206), .Y(n463) );
  NBUFFX2_RVT U376 ( .A(n484), .Y(n215) );
  AOI21X1_RVT U377 ( .A1(n218), .A2(n217), .A3(n216), .Y(change_out[7]) );
  OR2X1_RVT U378 ( .A1(n498), .A2(n500), .Y(n216) );
  AO21X1_RVT U379 ( .A1(n220), .A2(n234), .A3(n499), .Y(n217) );
  OR3X1_RVT U380 ( .A1(n499), .A2(n215), .A3(n219), .Y(n218) );
  OR2X1_RVT U381 ( .A1(n487), .A2(n486), .Y(n219) );
  NOR3X0_RVT U382 ( .A1(n470), .A2(n452), .A3(n453), .Y(n484) );
  OR2X2_RVT U383 ( .A1(n507), .A2(display[3]), .Y(n472) );
  INVX0_RVT U384 ( .A(n221), .Y(n468) );
  OR2X1_RVT U385 ( .A1(n539), .A2(cancel_reg), .Y(n221) );
  OA21X1_RVT U386 ( .A1(n501), .A2(n221), .A3(n178), .Y(n479) );
  AND2X1_RVT U387 ( .A1(n406), .A2(display[4]), .Y(n280) );
  NAND2X0_RVT U388 ( .A1(coin_in[1]), .A2(n181), .Y(n406) );
  NAND2X0_RVT U389 ( .A1(n403), .A2(n389), .Y(n222) );
  OR3X1_RVT U390 ( .A1(n389), .A2(n280), .A3(n403), .Y(n223) );
  OA21X1_RVT U391 ( .A1(n395), .A2(n225), .A3(n405), .Y(n224) );
  INVX0_RVT U392 ( .A(n280), .Y(n225) );
  AO22X1_RVT U393 ( .A1(n395), .A2(display[3]), .A3(n397), .A4(n228), .Y(n403)
         );
  AND2X1_RVT U394 ( .A1(n430), .A2(n227), .Y(n453) );
  AND2X1_RVT U395 ( .A1(n439), .A2(n235), .Y(n227) );
  NAND2X0_RVT U396 ( .A1(n389), .A2(n250), .Y(n228) );
  NOR4X1_RVT U397 ( .A1(n231), .A2(n230), .A3(n232), .A4(n229), .Y(
        \u_credit_unit/n5 ) );
  NOR4X1_RVT U398 ( .A1(n233), .A2(n234), .A3(n282), .A4(n254), .Y(n229) );
  AO21X1_RVT U399 ( .A1(n233), .A2(n234), .A3(n410), .Y(n230) );
  AND2X1_RVT U400 ( .A1(n254), .A2(n234), .Y(n231) );
  AND2X1_RVT U401 ( .A1(n282), .A2(n234), .Y(n232) );
  NOR2X0_RVT U402 ( .A1(rst), .A2(n428), .Y(\u_control_unit/N12 ) );
  NOR2X0_RVT U403 ( .A1(n427), .A2(n426), .Y(n428) );
  OA21X1_RVT U404 ( .A1(state_out[1]), .A2(n425), .A3(n424), .Y(n426) );
  NOR2X0_RVT U405 ( .A1(n535), .A2(n368), .Y(n352) );
  OR2X1_RVT U406 ( .A1(n373), .A2(n372), .Y(\u_mem_unit/n69 ) );
  NOR2X0_RVT U407 ( .A1(n536), .A2(n368), .Y(n373) );
  OR2X1_RVT U408 ( .A1(n302), .A2(n301), .Y(\u_mem_unit/n63 ) );
  NOR2X0_RVT U409 ( .A1(n531), .A2(n368), .Y(n302) );
  OR2X1_RVT U410 ( .A1(n323), .A2(n322), .Y(\u_mem_unit/n65 ) );
  NOR2X0_RVT U411 ( .A1(n532), .A2(n368), .Y(n323) );
  OR2X1_RVT U412 ( .A1(n334), .A2(n333), .Y(\u_mem_unit/n66 ) );
  NOR2X0_RVT U413 ( .A1(n533), .A2(n368), .Y(n334) );
  OR2X1_RVT U414 ( .A1(n344), .A2(n343), .Y(\u_mem_unit/n67 ) );
  NOR2X0_RVT U415 ( .A1(n534), .A2(n368), .Y(n344) );
  NOR2X0_RVT U416 ( .A1(n410), .A2(n386), .Y(\u_credit_unit/n12 ) );
  OA21X1_RVT U417 ( .A1(n286), .A2(n291), .A3(n284), .Y(n298) );
  OR2X1_RVT U418 ( .A1(rst), .A2(n305), .Y(\u_mem_unit/n55 ) );
  NOR2X0_RVT U419 ( .A1(n530), .A2(n359), .Y(n363) );
  NOR2X0_RVT U420 ( .A1(n193), .A2(n411), .Y(n412) );
  OR2X1_RVT U421 ( .A1(n420), .A2(n419), .Y(\u_control_unit/N13 ) );
  OAI22X1_RVT U422 ( .A1(n196), .A2(n390), .A3(display[0]), .A4(n389), .Y(n391) );
  NOR2X0_RVT U423 ( .A1(display[5]), .A2(n389), .Y(n255) );
  NOR2X0_RVT U424 ( .A1(n499), .A2(n437), .Y(change_out[1]) );
  AO21X1_RVT U425 ( .A1(n496), .A2(n448), .A3(n499), .Y(n449) );
  AO21X1_RVT U426 ( .A1(n496), .A2(n542), .A3(n499), .Y(n455) );
  NOR2X0_RVT U427 ( .A1(n381), .A2(n513), .Y(n384) );
  NOR2X0_RVT U428 ( .A1(n381), .A2(n517), .Y(n348) );
  NOR2X0_RVT U429 ( .A1(n381), .A2(n516), .Y(n338) );
  NOR2X0_RVT U430 ( .A1(n381), .A2(n515), .Y(n327) );
  NOR2X0_RVT U431 ( .A1(n381), .A2(n518), .Y(n315) );
  NOR2X0_RVT U432 ( .A1(n381), .A2(n514), .Y(n308) );
  NOR2X0_RVT U433 ( .A1(n381), .A2(n519), .Y(n294) );
  NOR2X0_RVT U434 ( .A1(n381), .A2(n512), .Y(n366) );
  NOR2X0_RVT U435 ( .A1(n381), .A2(n286), .Y(n285) );
  NOR2X0_RVT U436 ( .A1(n278), .A2(n277), .Y(n295) );
  OR2X1_RVT U437 ( .A1(n416), .A2(n415), .Y(\u_mem_unit/n34 ) );
  NOR2X0_RVT U438 ( .A1(n410), .A2(n388), .Y(\u_credit_unit/n11 ) );
  AO21X1_RVT U439 ( .A1(n441), .A2(n543), .A3(n440), .Y(n446) );
  OA21X1_RVT U440 ( .A1(n458), .A2(n469), .A3(n457), .Y(change_out[3]) );
  AOI21X1_RVT U441 ( .A1(n469), .A2(n456), .A3(n455), .Y(n457) );
  NOR2X0_RVT U442 ( .A1(n450), .A2(n449), .Y(change_out[2]) );
  AO21X1_RVT U443 ( .A1(n447), .A2(n446), .A3(n445), .Y(n450) );
  NOR2X0_RVT U444 ( .A1(n444), .A2(n447), .Y(n445) );
  NOR2X0_RVT U445 ( .A1(n410), .A2(n393), .Y(\u_credit_unit/n10 ) );
  OR2X1_RVT U446 ( .A1(rst), .A2(n303), .Y(\u_mem_unit/n47 ) );
  OAI22X1_RVT U447 ( .A1(n520), .A2(n358), .A3(n361), .A4(n357), .Y(
        \u_mem_unit/n52 ) );
  NOR2X0_RVT U448 ( .A1(n410), .A2(n409), .Y(\u_credit_unit/n8 ) );
  AO21X1_RVT U449 ( .A1(n438), .A2(n235), .A3(n440), .Y(n452) );
  NOR2X0_RVT U450 ( .A1(n471), .A2(n205), .Y(n478) );
  NOR2X0_RVT U451 ( .A1(n496), .A2(n542), .Y(n454) );
  NOR2X0_RVT U452 ( .A1(cancel_reg), .A2(n504), .Y(n460) );
  NOR2X0_RVT U453 ( .A1(n448), .A2(cancel_reg), .Y(n441) );
  OR2X1_RVT U454 ( .A1(n430), .A2(n496), .Y(n436) );
  AO21X1_RVT U455 ( .A1(n430), .A2(n439), .A3(n438), .Y(n447) );
  NOR2X0_RVT U456 ( .A1(coin_in[0]), .A2(coin_in[1]), .Y(n423) );
  NBUFFX2_RVT U457 ( .A(n547), .Y(n448) );
  NOR2X0_RVT U458 ( .A1(n443), .A2(n442), .Y(n444) );
  NOR2X0_RVT U459 ( .A1(n286), .A2(n192), .Y(n287) );
  NOR2X0_RVT U460 ( .A1(n462), .A2(n461), .Y(n464) );
  NOR2X0_RVT U461 ( .A1(n361), .A2(n354), .Y(n355) );
  OA21X1_RVT U462 ( .A1(n432), .A2(n430), .A3(n431), .Y(n433) );
  OR2X1_RVT U463 ( .A1(n356), .A2(n355), .Y(\u_mem_unit/n76 ) );
  OR2X1_RVT U464 ( .A1(n363), .A2(n362), .Y(\u_mem_unit/n60 ) );
  OR2X1_RVT U465 ( .A1(n352), .A2(n351), .Y(\u_mem_unit/n68 ) );
  AO21X1_RVT U466 ( .A1(n414), .A2(n194), .A3(n412), .Y(\u_mem_unit/n35 ) );
  AO22X1_RVT U467 ( .A1(n538), .A2(n545), .A3(price[5]), .A4(n236), .Y(n237)
         );
  NAND2X0_RVT U468 ( .A1(n237), .A2(n473), .Y(n244) );
  INVX0_RVT U469 ( .A(n465), .Y(n238) );
  INVX0_RVT U470 ( .A(n246), .Y(n429) );
  AND2X1_RVT U471 ( .A1(n499), .A2(n284), .Y(n283) );
  INVX1_RVT U472 ( .A(n283), .Y(n410) );
  AND2X1_RVT U473 ( .A1(n389), .A2(coin_in[0]), .Y(n390) );
  INVX0_RVT U474 ( .A(n390), .Y(n258) );
  NOR2X0_RVT U475 ( .A1(display[5]), .A2(n280), .Y(n247) );
  NOR2X0_RVT U476 ( .A1(n258), .A2(n247), .Y(n256) );
  OR2X1_RVT U477 ( .A1(state_out[2]), .A2(state_out[1]), .Y(n396) );
  INVX0_RVT U478 ( .A(coin_in[0]), .Y(n248) );
  NAND2X0_RVT U479 ( .A1(display[3]), .A2(n248), .Y(n250) );
  AND2X1_RVT U480 ( .A1(n196), .A2(display[0]), .Y(n249) );
  OR2X1_RVT U481 ( .A1(coin_in[0]), .A2(display[5]), .Y(n251) );
  AND2X1_RVT U482 ( .A1(n389), .A2(n251), .Y(n252) );
  OR2X1_RVT U483 ( .A1(n252), .A2(n280), .Y(n253) );
  NOR2X0_RVT U484 ( .A1(n403), .A2(n253), .Y(n254) );
  OR2X1_RVT U485 ( .A1(display[5]), .A2(display[6]), .Y(n257) );
  NOR2X0_RVT U486 ( .A1(n280), .A2(n257), .Y(n260) );
  AND2X1_RVT U487 ( .A1(n539), .A2(n258), .Y(n259) );
  OR2X2_RVT U488 ( .A1(n260), .A2(n259), .Y(n282) );
  NAND2X0_RVT U489 ( .A1(state_out[1]), .A2(\u_control_unit/n16 ), .Y(n261) );
  NOR2X0_RVT U490 ( .A1(state_out[1]), .A2(n262), .Y(n421) );
  OR2X1_RVT U491 ( .A1(stock[0]), .A2(stock[1]), .Y(n310) );
  OR2X1_RVT U492 ( .A1(stock[2]), .A2(n310), .Y(n317) );
  OR2X1_RVT U493 ( .A1(stock[3]), .A2(n317), .Y(n319) );
  OR2X1_RVT U494 ( .A1(stock[4]), .A2(n319), .Y(n330) );
  NOR2X0_RVT U495 ( .A1(n330), .A2(stock[5]), .Y(n350) );
  OR2X1_RVT U496 ( .A1(n263), .A2(stock[6]), .Y(n369) );
  OR2X1_RVT U497 ( .A1(n539), .A2(price[6]), .Y(n489) );
  AND2X1_RVT U498 ( .A1(n473), .A2(n467), .Y(n487) );
  NOR2X0_RVT U499 ( .A1(price[5]), .A2(n545), .Y(n466) );
  INVX0_RVT U500 ( .A(n466), .Y(n264) );
  NAND2X0_RVT U501 ( .A1(n489), .A2(n264), .Y(n265) );
  OR2X1_RVT U502 ( .A1(n465), .A2(n265), .Y(n486) );
  NAND2X0_RVT U503 ( .A1(n473), .A2(n472), .Y(n470) );
  NOR2X0_RVT U504 ( .A1(n497), .A2(n180), .Y(n267) );
  OA22X1_RVT U505 ( .A1(stock[7]), .A2(n369), .A3(display[7]), .A4(n267), .Y(
        n417) );
  NOR2X0_RVT U506 ( .A1(n508), .A2(n417), .Y(n268) );
  MUX21X1_RVT U507 ( .A1(n421), .A2(n268), .S0(\u_control_unit/n16 ), .Y(n269)
         );
  NOR2X0_RVT U508 ( .A1(dispense), .A2(n269), .Y(n270) );
  NOR2X0_RVT U509 ( .A1(rst), .A2(n270), .Y(\u_control_unit/N14 ) );
  INVX0_RVT U510 ( .A(confirm), .Y(n271) );
  OR2X2_RVT U511 ( .A1(n422), .A2(n272), .Y(n277) );
  NOR2X2_RVT U512 ( .A1(rst), .A2(n277), .Y(n419) );
  INVX0_RVT U513 ( .A(sel_item[0]), .Y(n288) );
  AND2X1_RVT U514 ( .A1(n419), .A2(n288), .Y(n276) );
  INVX1_RVT U515 ( .A(n277), .Y(n273) );
  NOR2X2_RVT U516 ( .A1(rst), .A2(n273), .Y(n414) );
  AND2X1_RVT U517 ( .A1(n414), .A2(price[3]), .Y(n274) );
  OR2X1_RVT U518 ( .A1(n276), .A2(n274), .Y(n503) );
  AND2X1_RVT U519 ( .A1(n414), .A2(price[0]), .Y(n275) );
  OR2X1_RVT U520 ( .A1(n276), .A2(n275), .Y(n505) );
  NAND2X0_RVT U521 ( .A1(n284), .A2(sel_item[1]), .Y(n278) );
  AND2X1_RVT U522 ( .A1(n414), .A2(price[6]), .Y(n279) );
  OR2X1_RVT U523 ( .A1(n295), .A2(n279), .Y(n506) );
  AND2X1_RVT U524 ( .A1(n283), .A2(n281), .Y(\u_credit_unit/n7 ) );
  AND2X1_RVT U525 ( .A1(cancel), .A2(n284), .Y(N7) );
  OR2X1_RVT U526 ( .A1(n529), .A2(rst), .Y(n290) );
  INVX2_RVT U527 ( .A(n298), .Y(n368) );
  MUX21X1_RVT U528 ( .A1(\u_mem_unit/memory_array[1][0] ), .A2(n290), .S0(n368), .Y(\u_mem_unit/n70 ) );
  OR2X2_RVT U529 ( .A1(sel_item[0]), .A2(sel_item[1]), .Y(n381) );
  NOR2X2_RVT U530 ( .A1(rst), .A2(n285), .Y(n374) );
  MUX21X1_RVT U531 ( .A1(\u_mem_unit/memory_array[0][0] ), .A2(n290), .S0(n353), .Y(\u_mem_unit/n78 ) );
  NOR2X2_RVT U532 ( .A1(rst), .A2(n287), .Y(n376) );
  OR2X2_RVT U533 ( .A1(rst), .A2(n376), .Y(n357) );
  AO22X1_RVT U534 ( .A1(n377), .A2(n529), .A3(n376), .A4(
        \u_mem_unit/memory_array[3][0] ), .Y(\u_mem_unit/n54 ) );
  AND2X1_RVT U535 ( .A1(sel_item[1]), .A2(n288), .Y(n289) );
  AOI21X2_RVT U536 ( .A1(n289), .A2(dispense), .A3(rst), .Y(n378) );
  MUX21X1_RVT U537 ( .A1(\u_mem_unit/memory_array[2][0] ), .A2(n290), .S0(n359), .Y(\u_mem_unit/n62 ) );
  INVX1_RVT U538 ( .A(n291), .Y(n413) );
  AND2X1_RVT U539 ( .A1(n413), .A2(\u_mem_unit/memory_array[1][0] ), .Y(n292)
         );
  INVX0_RVT U540 ( .A(n295), .Y(n296) );
  NOR2X2_RVT U541 ( .A1(sel_item[0]), .A2(n296), .Y(n415) );
  AO222X1_RVT U542 ( .A1(n297), .A2(n419), .A3(stock[0]), .A4(n414), .A5(n415), 
        .A6(\u_mem_unit/memory_array[2][0] ), .Y(\u_mem_unit/n79 ) );
  OR2X2_RVT U543 ( .A1(rst), .A2(n298), .Y(n371) );
  INVX0_RVT U544 ( .A(n310), .Y(n299) );
  AO21X1_RVT U545 ( .A1(stock[1]), .A2(stock[0]), .A3(n299), .Y(n304) );
  INVX0_RVT U546 ( .A(n304), .Y(n300) );
  OR2X2_RVT U547 ( .A1(rst), .A2(n374), .Y(n354) );
  AO22X1_RVT U548 ( .A1(n304), .A2(n375), .A3(n374), .A4(
        \u_mem_unit/memory_array[0][1] ), .Y(\u_mem_unit/n71 ) );
  INVX1_RVT U549 ( .A(n376), .Y(n358) );
  MUX21X1_RVT U550 ( .A1(\u_mem_unit/memory_array[3][1] ), .A2(n304), .S0(n358), .Y(n303) );
  MUX21X1_RVT U551 ( .A1(\u_mem_unit/memory_array[2][1] ), .A2(n304), .S0(n359), .Y(n305) );
  AND2X1_RVT U552 ( .A1(n413), .A2(\u_mem_unit/memory_array[1][1] ), .Y(n306)
         );
  AO222X1_RVT U553 ( .A1(n309), .A2(n419), .A3(n414), .A4(stock[1]), .A5(n415), 
        .A6(\u_mem_unit/memory_array[2][1] ), .Y(\u_mem_unit/n46 ) );
  XNOR2X1_RVT U554 ( .A1(n310), .A2(stock[2]), .Y(n312) );
  OR2X1_RVT U555 ( .A1(rst), .A2(n312), .Y(n311) );
  MUX21X1_RVT U556 ( .A1(\u_mem_unit/memory_array[1][2] ), .A2(n311), .S0(n368), .Y(\u_mem_unit/n64 ) );
  MUX21X1_RVT U557 ( .A1(\u_mem_unit/memory_array[0][2] ), .A2(n311), .S0(n353), .Y(\u_mem_unit/n72 ) );
  AO22X1_RVT U558 ( .A1(n377), .A2(n312), .A3(n376), .A4(
        \u_mem_unit/memory_array[3][2] ), .Y(\u_mem_unit/n48 ) );
  OR2X2_RVT U559 ( .A1(rst), .A2(n378), .Y(n360) );
  AO22X1_RVT U560 ( .A1(n380), .A2(n312), .A3(n378), .A4(
        \u_mem_unit/memory_array[2][2] ), .Y(\u_mem_unit/n56 ) );
  AND2X1_RVT U561 ( .A1(n413), .A2(\u_mem_unit/memory_array[1][2] ), .Y(n313)
         );
  AO222X1_RVT U562 ( .A1(n316), .A2(n419), .A3(n415), .A4(
        \u_mem_unit/memory_array[2][2] ), .A5(stock[2]), .A6(n414), .Y(
        \u_mem_unit/n45 ) );
  INVX0_RVT U563 ( .A(n317), .Y(n318) );
  NOR2X0_RVT U564 ( .A1(n511), .A2(n318), .Y(n320) );
  OR2X1_RVT U565 ( .A1(n320), .A2(n329), .Y(n324) );
  AO22X1_RVT U566 ( .A1(n324), .A2(n375), .A3(n374), .A4(
        \u_mem_unit/memory_array[0][3] ), .Y(\u_mem_unit/n73 ) );
  AO22X1_RVT U567 ( .A1(n377), .A2(n324), .A3(n376), .A4(
        \u_mem_unit/memory_array[3][3] ), .Y(\u_mem_unit/n49 ) );
  AO22X1_RVT U568 ( .A1(n380), .A2(n324), .A3(n378), .A4(
        \u_mem_unit/memory_array[2][3] ), .Y(\u_mem_unit/n57 ) );
  AND2X1_RVT U569 ( .A1(n413), .A2(\u_mem_unit/memory_array[1][3] ), .Y(n325)
         );
  AO222X1_RVT U570 ( .A1(n328), .A2(n419), .A3(n414), .A4(stock[3]), .A5(n415), 
        .A6(\u_mem_unit/memory_array[2][3] ), .Y(\u_mem_unit/n44 ) );
  NOR2X0_RVT U571 ( .A1(n510), .A2(n329), .Y(n331) );
  OR2X1_RVT U572 ( .A1(n331), .A2(n340), .Y(n335) );
  AO22X1_RVT U573 ( .A1(n335), .A2(n375), .A3(n374), .A4(
        \u_mem_unit/memory_array[0][4] ), .Y(\u_mem_unit/n74 ) );
  AO22X1_RVT U574 ( .A1(n377), .A2(n335), .A3(n376), .A4(
        \u_mem_unit/memory_array[3][4] ), .Y(\u_mem_unit/n50 ) );
  AO22X1_RVT U575 ( .A1(n380), .A2(n335), .A3(n378), .A4(
        \u_mem_unit/memory_array[2][4] ), .Y(\u_mem_unit/n58 ) );
  AND2X1_RVT U576 ( .A1(n413), .A2(\u_mem_unit/memory_array[1][4] ), .Y(n336)
         );
  AO222X1_RVT U577 ( .A1(n339), .A2(n419), .A3(n414), .A4(stock[4]), .A5(n415), 
        .A6(\u_mem_unit/memory_array[2][4] ), .Y(\u_mem_unit/n43 ) );
  NOR2X0_RVT U578 ( .A1(n509), .A2(n340), .Y(n341) );
  OR2X1_RVT U579 ( .A1(n341), .A2(n350), .Y(n345) );
  AO22X1_RVT U580 ( .A1(n345), .A2(n375), .A3(n374), .A4(
        \u_mem_unit/memory_array[0][5] ), .Y(\u_mem_unit/n75 ) );
  AO22X1_RVT U581 ( .A1(n377), .A2(n345), .A3(n376), .A4(
        \u_mem_unit/memory_array[3][5] ), .Y(\u_mem_unit/n51 ) );
  AO22X1_RVT U582 ( .A1(n380), .A2(n345), .A3(n378), .A4(
        \u_mem_unit/memory_array[2][5] ), .Y(\u_mem_unit/n59 ) );
  AND2X1_RVT U583 ( .A1(n413), .A2(\u_mem_unit/memory_array[1][5] ), .Y(n346)
         );
  AO222X1_RVT U584 ( .A1(n349), .A2(n419), .A3(n414), .A4(stock[5]), .A5(n415), 
        .A6(\u_mem_unit/memory_array[2][5] ), .Y(\u_mem_unit/n42 ) );
  OA21X1_RVT U585 ( .A1(n528), .A2(n350), .A3(n369), .Y(n361) );
  NOR2X0_RVT U586 ( .A1(n512), .A2(n353), .Y(n356) );
  AND2X1_RVT U587 ( .A1(n413), .A2(\u_mem_unit/memory_array[1][6] ), .Y(n364)
         );
  AO222X1_RVT U588 ( .A1(n367), .A2(n419), .A3(stock[6]), .A4(n414), .A5(
        \u_mem_unit/memory_array[2][6] ), .A6(n415), .Y(\u_mem_unit/n41 ) );
  XNOR2X1_RVT U589 ( .A1(n369), .A2(stock[7]), .Y(n379) );
  AO22X1_RVT U590 ( .A1(n379), .A2(n375), .A3(n374), .A4(
        \u_mem_unit/memory_array[0][7] ), .Y(\u_mem_unit/n77 ) );
  AO22X1_RVT U591 ( .A1(n377), .A2(n379), .A3(n376), .A4(
        \u_mem_unit/memory_array[3][7] ), .Y(\u_mem_unit/n53 ) );
  AO22X1_RVT U592 ( .A1(n380), .A2(n379), .A3(n378), .A4(
        \u_mem_unit/memory_array[2][7] ), .Y(\u_mem_unit/n61 ) );
  AND2X1_RVT U593 ( .A1(n413), .A2(\u_mem_unit/memory_array[1][7] ), .Y(n382)
         );
  AO222X1_RVT U594 ( .A1(n385), .A2(n419), .A3(\u_mem_unit/memory_array[2][7] ), .A4(n415), .A5(stock[7]), .A6(n414), .Y(\u_mem_unit/n40 ) );
  OAI22X1_RVT U595 ( .A1(coin_in[0]), .A2(n404), .A3(n540), .A4(n394), .Y(n387) );
  XNOR2X1_RVT U596 ( .A1(n387), .A2(n196), .Y(n388) );
  OR2X1_RVT U597 ( .A1(n404), .A2(n391), .Y(n392) );
  INVX0_RVT U598 ( .A(n394), .Y(n399) );
  AO22X1_RVT U599 ( .A1(price[4]), .A2(n414), .A3(n419), .A4(n402), .Y(
        \u_mem_unit/n37 ) );
  INVX1_RVT U600 ( .A(n404), .Y(n405) );
  NAND2X0_RVT U601 ( .A1(n406), .A2(n405), .Y(n407) );
  XNOR2X1_RVT U602 ( .A1(n408), .A2(n504), .Y(n409) );
  AO22X1_RVT U603 ( .A1(price[5]), .A2(n414), .A3(n419), .A4(sel_item[0]), .Y(
        \u_mem_unit/n38 ) );
  INVX1_RVT U604 ( .A(n419), .Y(n411) );
  AO22X1_RVT U605 ( .A1(n195), .A2(n414), .A3(n419), .A4(n413), .Y(n416) );
  INVX0_RVT U606 ( .A(n417), .Y(n418) );
  NOR4X1_RVT U607 ( .A1(rst), .A2(n508), .A3(n204), .A4(n418), .Y(n420) );
  AND2X1_RVT U608 ( .A1(n422), .A2(n421), .Y(n427) );
  INVX0_RVT U609 ( .A(n423), .Y(n425) );
  NOR3X0_RVT U610 ( .A1(\u_control_unit/n16 ), .A2(state_out[1]), .A3(n502), 
        .Y(error) );
  NOR2X0_RVT U611 ( .A1(n540), .A2(n429), .Y(n434) );
  NOR2X0_RVT U612 ( .A1(price[0]), .A2(n540), .Y(n432) );
  INVX1_RVT U613 ( .A(n499), .Y(n431) );
  MUX21X1_RVT U614 ( .A1(n434), .A2(n433), .S0(n537), .Y(change_out[0]) );
  XOR3X2_RVT U615 ( .A1(n436), .A2(n202), .A3(n435), .Y(n437) );
  AND2X1_RVT U616 ( .A1(n194), .A2(n441), .Y(n443) );
  AND2X1_RVT U617 ( .A1(n448), .A2(n543), .Y(n442) );
  INVX0_RVT U618 ( .A(n454), .Y(n451) );
  OA21X1_RVT U619 ( .A1(price[3]), .A2(n451), .A3(n472), .Y(n458) );
  AO22X1_RVT U620 ( .A1(n542), .A2(n507), .A3(price[3]), .A4(n454), .Y(n456)
         );
  INVX0_RVT U621 ( .A(n460), .Y(n459) );
  AND2X1_RVT U622 ( .A1(price[4]), .A2(n460), .Y(n462) );
  AND2X1_RVT U623 ( .A1(n504), .A2(n541), .Y(n461) );
  OR2X1_RVT U624 ( .A1(n466), .A2(n465), .Y(n475) );
  AO21X1_RVT U625 ( .A1(n468), .A2(n501), .A3(n490), .Y(n476) );
  OR2X1_RVT U626 ( .A1(n480), .A2(n479), .Y(n471) );
  AND2X1_RVT U627 ( .A1(n473), .A2(n472), .Y(n474) );
  AND2X1_RVT U628 ( .A1(n476), .A2(n480), .Y(n477) );
  INVX0_RVT U629 ( .A(n488), .Y(n485) );
  NOR4X1_RVT U630 ( .A1(n487), .A2(n486), .A3(n485), .A4(n484), .Y(n500) );
  NAND2X0_RVT U631 ( .A1(n489), .A2(n488), .Y(n494) );
  INVX0_RVT U632 ( .A(n490), .Y(n492) );
  AND2X1_RVT U633 ( .A1(n492), .A2(n491), .Y(n493) );
  AO21X1_RVT U634 ( .A1(n496), .A2(n234), .A3(n495), .Y(n498) );
endmodule

