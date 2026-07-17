/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : X-2025.06-SP2
// Date      : Fri Jul 17 18:37:42 2026
/////////////////////////////////////////////////////////////


module memory ( clk, rst, sel_item, stock, price, mem_read, mem_write );
  input [1:0] sel_item;
  output [7:0] stock;
  output [7:0] price;
  input clk, rst, mem_read, mem_write;
  wire   \memory_array[3][7] , \memory_array[3][6] , \memory_array[3][5] ,
         \memory_array[3][4] , \memory_array[3][3] , \memory_array[3][2] ,
         \memory_array[3][1] , \memory_array[3][0] , \memory_array[2][7] ,
         \memory_array[2][6] , \memory_array[2][5] , \memory_array[2][4] ,
         \memory_array[2][3] , \memory_array[2][2] , \memory_array[2][1] ,
         \memory_array[2][0] , \memory_array[1][7] , \memory_array[1][6] ,
         \memory_array[1][5] , \memory_array[1][4] , \memory_array[1][3] ,
         \memory_array[1][2] , \memory_array[1][1] , \memory_array[1][0] ,
         \memory_array[0][7] , \memory_array[0][6] , \memory_array[0][5] ,
         \memory_array[0][4] , \memory_array[0][3] , \memory_array[0][2] ,
         \memory_array[0][1] , \memory_array[0][0] , n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91,
         n92, n93, n94, n95, n96, n97, n98, n99;

  DFFX1_RVT \stock_reg[2]  ( .D(n45), .CLK(clk), .Q(stock[2]), .QN(n99) );
  DFFX1_RVT \stock_reg[0]  ( .D(n79), .CLK(clk), .Q(stock[0]), .QN(n98) );
  DFFX1_RVT \memory_array_reg[2][6]  ( .D(n60), .CLK(clk), .Q(
        \memory_array[2][6] ) );
  DFFX1_RVT \memory_array_reg[2][5]  ( .D(n59), .CLK(clk), .Q(
        \memory_array[2][5] ) );
  DFFX1_RVT \memory_array_reg[2][4]  ( .D(n58), .CLK(clk), .Q(
        \memory_array[2][4] ) );
  DFFX1_RVT \memory_array_reg[0][6]  ( .D(n76), .CLK(clk), .Q(
        \memory_array[0][6] ) );
  DFFX1_RVT \memory_array_reg[0][5]  ( .D(n75), .CLK(clk), .Q(
        \memory_array[0][5] ) );
  DFFX1_RVT \memory_array_reg[0][4]  ( .D(n74), .CLK(clk), .Q(
        \memory_array[0][4] ) );
  DFFX1_RVT \memory_array_reg[0][3]  ( .D(n73), .CLK(clk), .Q(
        \memory_array[0][3] ) );
  DFFX1_RVT \memory_array_reg[0][2]  ( .D(n72), .CLK(clk), .Q(
        \memory_array[0][2] ) );
  DFFX1_RVT \memory_array_reg[0][1]  ( .D(n71), .CLK(clk), .Q(
        \memory_array[0][1] ) );
  DFFX1_RVT \memory_array_reg[0][0]  ( .D(n78), .CLK(clk), .Q(
        \memory_array[0][0] ) );
  DFFX1_RVT \memory_array_reg[3][6]  ( .D(n52), .CLK(clk), .Q(
        \memory_array[3][6] ) );
  DFFX1_RVT \memory_array_reg[3][5]  ( .D(n51), .CLK(clk), .Q(
        \memory_array[3][5] ) );
  DFFX1_RVT \memory_array_reg[3][4]  ( .D(n50), .CLK(clk), .Q(
        \memory_array[3][4] ) );
  DFFX1_RVT \memory_array_reg[3][3]  ( .D(n49), .CLK(clk), .Q(
        \memory_array[3][3] ) );
  DFFX1_RVT \memory_array_reg[3][2]  ( .D(n48), .CLK(clk), .Q(
        \memory_array[3][2] ) );
  DFFX1_RVT \memory_array_reg[2][3]  ( .D(n57), .CLK(clk), .Q(
        \memory_array[2][3] ) );
  DFFX1_RVT \memory_array_reg[2][2]  ( .D(n56), .CLK(clk), .Q(
        \memory_array[2][2] ) );
  DFFX1_RVT \memory_array_reg[2][0]  ( .D(n62), .CLK(clk), .Q(
        \memory_array[2][0] ) );
  DFFX1_RVT \memory_array_reg[3][0]  ( .D(n54), .CLK(clk), .Q(
        \memory_array[3][0] ) );
  DFFX1_RVT \memory_array_reg[2][7]  ( .D(n61), .CLK(clk), .Q(
        \memory_array[2][7] ) );
  DFFX1_RVT \memory_array_reg[1][6]  ( .D(n68), .CLK(clk), .Q(
        \memory_array[1][6] ) );
  DFFX1_RVT \memory_array_reg[1][5]  ( .D(n67), .CLK(clk), .Q(
        \memory_array[1][5] ) );
  DFFX1_RVT \memory_array_reg[1][4]  ( .D(n66), .CLK(clk), .Q(
        \memory_array[1][4] ) );
  DFFX1_RVT \memory_array_reg[1][3]  ( .D(n65), .CLK(clk), .Q(
        \memory_array[1][3] ) );
  DFFX1_RVT \memory_array_reg[1][2]  ( .D(n64), .CLK(clk), .Q(
        \memory_array[1][2] ) );
  DFFX1_RVT \memory_array_reg[1][1]  ( .D(n63), .CLK(clk), .Q(
        \memory_array[1][1] ) );
  DFFX1_RVT \memory_array_reg[1][0]  ( .D(n70), .CLK(clk), .Q(
        \memory_array[1][0] ) );
  DFFX1_RVT \memory_array_reg[0][7]  ( .D(n77), .CLK(clk), .Q(
        \memory_array[0][7] ) );
  DFFX1_RVT \memory_array_reg[1][7]  ( .D(n69), .CLK(clk), .Q(
        \memory_array[1][7] ) );
  DFFX1_RVT \memory_array_reg[3][1]  ( .D(n47), .CLK(clk), .Q(
        \memory_array[3][1] ) );
  DFFX1_RVT \memory_array_reg[2][1]  ( .D(n55), .CLK(clk), .Q(
        \memory_array[2][1] ) );
  DFFX1_RVT \memory_array_reg[3][7]  ( .D(n53), .CLK(clk), .Q(
        \memory_array[3][7] ) );
  DFFX1_RVT \price_reg[0]  ( .D(n33), .CLK(clk), .Q(price[0]) );
  DFFX1_RVT \stock_reg[7]  ( .D(n40), .CLK(clk), .Q(stock[7]) );
  DFFX1_RVT \stock_reg[3]  ( .D(n44), .CLK(clk), .Q(stock[3]) );
  DFFX1_RVT \stock_reg[6]  ( .D(n41), .CLK(clk), .Q(stock[6]) );
  DFFX1_RVT \stock_reg[5]  ( .D(n42), .CLK(clk), .Q(stock[5]) );
  DFFX1_RVT \stock_reg[4]  ( .D(n43), .CLK(clk), .Q(stock[4]) );
  DFFX1_RVT \price_reg[4]  ( .D(n37), .CLK(clk), .Q(price[4]) );
  DFFX1_RVT \price_reg[3]  ( .D(n36), .CLK(clk), .Q(price[3]) );
  DFFX1_RVT \price_reg[6]  ( .D(n39), .CLK(clk), .Q(price[6]) );
  DFFX1_RVT \price_reg[5]  ( .D(n38), .CLK(clk), .Q(price[5]) );
  DFFX1_RVT \price_reg[2]  ( .D(n35), .CLK(clk), .Q(price[2]) );
  DFFX1_RVT \price_reg[1]  ( .D(n34), .CLK(clk), .Q(price[1]) );
  DFFX1_RVT \stock_reg[1]  ( .D(n46), .CLK(clk), .Q(stock[1]) );
  INVX0_RVT U3 ( .A(rst), .Y(n25) );
  AND2X1_RVT U4 ( .A1(mem_read), .A2(n25), .Y(n96) );
  INVX0_RVT U5 ( .A(sel_item[0]), .Y(n95) );
  AND3X1_RVT U6 ( .A1(sel_item[1]), .A2(n96), .A3(n95), .Y(n91) );
  INVX0_RVT U7 ( .A(sel_item[1]), .Y(n93) );
  AND2X1_RVT U8 ( .A1(sel_item[0]), .A2(n93), .Y(n89) );
  NOR2X0_RVT U9 ( .A1(rst), .A2(mem_read), .Y(n97) );
  AO22X1_RVT U10 ( .A1(n89), .A2(n96), .A3(n97), .A4(price[1]), .Y(n1) );
  OR2X1_RVT U11 ( .A1(n91), .A2(n1), .Y(n34) );
  AND2X1_RVT U12 ( .A1(n95), .A2(n93), .Y(n90) );
  AND2X1_RVT U13 ( .A1(sel_item[0]), .A2(sel_item[1]), .Y(n94) );
  AO222X1_RVT U14 ( .A1(n90), .A2(\memory_array[0][0] ), .A3(n94), .A4(
        \memory_array[3][0] ), .A5(\memory_array[1][0] ), .A6(n89), .Y(n2) );
  AO222X1_RVT U15 ( .A1(n2), .A2(n96), .A3(n91), .A4(\memory_array[2][0] ), 
        .A5(stock[0]), .A6(n97), .Y(n79) );
  AO21X1_RVT U16 ( .A1(n90), .A2(mem_write), .A3(rst), .Y(n11) );
  INVX0_RVT U17 ( .A(n11), .Y(n14) );
  NAND2X0_RVT U18 ( .A1(stock[0]), .A2(n25), .Y(n20) );
  AO22X1_RVT U19 ( .A1(n14), .A2(\memory_array[0][0] ), .A3(n11), .A4(n20), 
        .Y(n78) );
  NOR4X1_RVT U20 ( .A1(stock[3]), .A2(stock[2]), .A3(stock[1]), .A4(stock[0]), 
        .Y(n9) );
  INVX0_RVT U21 ( .A(n9), .Y(n8) );
  OR2X1_RVT U22 ( .A1(n8), .A2(stock[4]), .Y(n6) );
  OR2X1_RVT U23 ( .A1(n6), .A2(stock[5]), .Y(n4) );
  NOR2X0_RVT U24 ( .A1(n4), .A2(stock[6]), .Y(n3) );
  HADDX1_RVT U25 ( .A0(stock[7]), .B0(n3), .SO(n26) );
  AND2X1_RVT U26 ( .A1(n25), .A2(n11), .Y(n13) );
  AO22X1_RVT U27 ( .A1(n26), .A2(n13), .A3(n14), .A4(\memory_array[0][7] ), 
        .Y(n77) );
  AO21X1_RVT U28 ( .A1(stock[6]), .A2(n4), .A3(n3), .Y(n27) );
  AO22X1_RVT U29 ( .A1(n14), .A2(\memory_array[0][6] ), .A3(n13), .A4(n27), 
        .Y(n76) );
  INVX0_RVT U30 ( .A(n4), .Y(n5) );
  AO21X1_RVT U31 ( .A1(stock[5]), .A2(n6), .A3(n5), .Y(n28) );
  AO22X1_RVT U32 ( .A1(n14), .A2(\memory_array[0][5] ), .A3(n13), .A4(n28), 
        .Y(n75) );
  INVX0_RVT U33 ( .A(n6), .Y(n7) );
  AO21X1_RVT U34 ( .A1(stock[4]), .A2(n8), .A3(n7), .Y(n29) );
  AO22X1_RVT U35 ( .A1(n14), .A2(\memory_array[0][4] ), .A3(n13), .A4(n29), 
        .Y(n74) );
  OR3X1_RVT U36 ( .A1(stock[2]), .A2(stock[1]), .A3(stock[0]), .Y(n10) );
  AO21X1_RVT U37 ( .A1(stock[3]), .A2(n10), .A3(n9), .Y(n30) );
  AO22X1_RVT U38 ( .A1(n14), .A2(\memory_array[0][3] ), .A3(n13), .A4(n30), 
        .Y(n73) );
  NOR2X0_RVT U39 ( .A1(stock[1]), .A2(stock[0]), .Y(n12) );
  OA21X1_RVT U40 ( .A1(n12), .A2(n99), .A3(n10), .Y(n21) );
  NAND2X0_RVT U41 ( .A1(n21), .A2(n25), .Y(n15) );
  AO22X1_RVT U42 ( .A1(n14), .A2(\memory_array[0][2] ), .A3(n11), .A4(n15), 
        .Y(n72) );
  AO21X1_RVT U43 ( .A1(stock[0]), .A2(stock[1]), .A3(n12), .Y(n82) );
  AO22X1_RVT U44 ( .A1(n14), .A2(\memory_array[0][1] ), .A3(n13), .A4(n82), 
        .Y(n71) );
  AO21X1_RVT U45 ( .A1(mem_write), .A2(n89), .A3(rst), .Y(n16) );
  INVX0_RVT U46 ( .A(n16), .Y(n18) );
  AO22X1_RVT U47 ( .A1(n18), .A2(\memory_array[1][0] ), .A3(n16), .A4(n20), 
        .Y(n70) );
  AND2X1_RVT U48 ( .A1(n25), .A2(n16), .Y(n17) );
  AO22X1_RVT U49 ( .A1(n26), .A2(n17), .A3(n18), .A4(\memory_array[1][7] ), 
        .Y(n69) );
  AO22X1_RVT U50 ( .A1(n18), .A2(\memory_array[1][6] ), .A3(n17), .A4(n27), 
        .Y(n68) );
  AO22X1_RVT U51 ( .A1(n18), .A2(\memory_array[1][5] ), .A3(n17), .A4(n28), 
        .Y(n67) );
  AO22X1_RVT U52 ( .A1(n18), .A2(\memory_array[1][4] ), .A3(n17), .A4(n29), 
        .Y(n66) );
  AO22X1_RVT U53 ( .A1(n18), .A2(\memory_array[1][3] ), .A3(n17), .A4(n30), 
        .Y(n65) );
  AO22X1_RVT U54 ( .A1(n18), .A2(\memory_array[1][2] ), .A3(n16), .A4(n15), 
        .Y(n64) );
  AO22X1_RVT U55 ( .A1(n18), .A2(\memory_array[1][1] ), .A3(n17), .A4(n82), 
        .Y(n63) );
  NAND3X0_RVT U56 ( .A1(sel_item[1]), .A2(mem_write), .A3(n95), .Y(n19) );
  NAND2X0_RVT U57 ( .A1(n25), .A2(n19), .Y(n24) );
  INVX0_RVT U58 ( .A(n24), .Y(n23) );
  AO22X1_RVT U59 ( .A1(n23), .A2(\memory_array[2][0] ), .A3(n24), .A4(n20), 
        .Y(n62) );
  AND2X1_RVT U60 ( .A1(n25), .A2(n24), .Y(n22) );
  AO22X1_RVT U61 ( .A1(n26), .A2(n22), .A3(n23), .A4(\memory_array[2][7] ), 
        .Y(n61) );
  AO22X1_RVT U62 ( .A1(n23), .A2(\memory_array[2][6] ), .A3(n22), .A4(n27), 
        .Y(n60) );
  AO22X1_RVT U63 ( .A1(n23), .A2(\memory_array[2][5] ), .A3(n22), .A4(n28), 
        .Y(n59) );
  AO22X1_RVT U64 ( .A1(n23), .A2(\memory_array[2][4] ), .A3(n22), .A4(n29), 
        .Y(n58) );
  AO22X1_RVT U65 ( .A1(n23), .A2(\memory_array[2][3] ), .A3(n22), .A4(n30), 
        .Y(n57) );
  INVX0_RVT U66 ( .A(n21), .Y(n31) );
  AO22X1_RVT U67 ( .A1(n23), .A2(\memory_array[2][2] ), .A3(n22), .A4(n31), 
        .Y(n56) );
  AO221X1_RVT U68 ( .A1(n82), .A2(n24), .A3(n23), .A4(\memory_array[2][1] ), 
        .A5(rst), .Y(n55) );
  AO21X1_RVT U69 ( .A1(mem_write), .A2(n94), .A3(rst), .Y(n81) );
  INVX0_RVT U70 ( .A(n81), .Y(n80) );
  AND2X1_RVT U71 ( .A1(n25), .A2(n81), .Y(n32) );
  AO22X1_RVT U72 ( .A1(\memory_array[3][0] ), .A2(n80), .A3(n32), .A4(n98), 
        .Y(n54) );
  AO22X1_RVT U73 ( .A1(n26), .A2(n32), .A3(n80), .A4(\memory_array[3][7] ), 
        .Y(n53) );
  AO22X1_RVT U74 ( .A1(n80), .A2(\memory_array[3][6] ), .A3(n32), .A4(n27), 
        .Y(n52) );
  AO22X1_RVT U75 ( .A1(n80), .A2(\memory_array[3][5] ), .A3(n32), .A4(n28), 
        .Y(n51) );
  AO22X1_RVT U76 ( .A1(n80), .A2(\memory_array[3][4] ), .A3(n32), .A4(n29), 
        .Y(n50) );
  AO22X1_RVT U77 ( .A1(n80), .A2(\memory_array[3][3] ), .A3(n32), .A4(n30), 
        .Y(n49) );
  AO22X1_RVT U78 ( .A1(n80), .A2(\memory_array[3][2] ), .A3(n32), .A4(n31), 
        .Y(n48) );
  AO221X1_RVT U79 ( .A1(n82), .A2(n81), .A3(n80), .A4(\memory_array[3][1] ), 
        .A5(rst), .Y(n47) );
  AO222X1_RVT U80 ( .A1(n90), .A2(\memory_array[0][1] ), .A3(n94), .A4(
        \memory_array[3][1] ), .A5(\memory_array[1][1] ), .A6(n89), .Y(n83) );
  AO222X1_RVT U81 ( .A1(n83), .A2(n96), .A3(n91), .A4(\memory_array[2][1] ), 
        .A5(stock[1]), .A6(n97), .Y(n46) );
  AO222X1_RVT U82 ( .A1(n90), .A2(\memory_array[0][2] ), .A3(n94), .A4(
        \memory_array[3][2] ), .A5(\memory_array[1][2] ), .A6(n89), .Y(n84) );
  AO222X1_RVT U83 ( .A1(n84), .A2(n96), .A3(n91), .A4(\memory_array[2][2] ), 
        .A5(stock[2]), .A6(n97), .Y(n45) );
  AO222X1_RVT U84 ( .A1(n90), .A2(\memory_array[0][3] ), .A3(n94), .A4(
        \memory_array[3][3] ), .A5(\memory_array[1][3] ), .A6(n89), .Y(n85) );
  AO222X1_RVT U85 ( .A1(n85), .A2(n96), .A3(n91), .A4(\memory_array[2][3] ), 
        .A5(stock[3]), .A6(n97), .Y(n44) );
  AO222X1_RVT U86 ( .A1(n90), .A2(\memory_array[0][4] ), .A3(n94), .A4(
        \memory_array[3][4] ), .A5(\memory_array[1][4] ), .A6(n89), .Y(n86) );
  AO222X1_RVT U87 ( .A1(n86), .A2(n96), .A3(\memory_array[2][4] ), .A4(n91), 
        .A5(stock[4]), .A6(n97), .Y(n43) );
  AO222X1_RVT U88 ( .A1(n90), .A2(\memory_array[0][5] ), .A3(n94), .A4(
        \memory_array[3][5] ), .A5(\memory_array[1][5] ), .A6(n89), .Y(n87) );
  AO222X1_RVT U89 ( .A1(n87), .A2(n96), .A3(\memory_array[2][5] ), .A4(n91), 
        .A5(stock[5]), .A6(n97), .Y(n42) );
  AO222X1_RVT U90 ( .A1(n90), .A2(\memory_array[0][6] ), .A3(n94), .A4(
        \memory_array[3][6] ), .A5(\memory_array[1][6] ), .A6(n89), .Y(n88) );
  AO222X1_RVT U91 ( .A1(n88), .A2(n96), .A3(\memory_array[2][6] ), .A4(n91), 
        .A5(stock[6]), .A6(n97), .Y(n41) );
  AO222X1_RVT U92 ( .A1(n90), .A2(\memory_array[0][7] ), .A3(n89), .A4(
        \memory_array[1][7] ), .A5(n94), .A6(\memory_array[3][7] ), .Y(n92) );
  AO222X1_RVT U93 ( .A1(n92), .A2(n96), .A3(\memory_array[2][7] ), .A4(n91), 
        .A5(stock[7]), .A6(n97), .Y(n40) );
  AO22X1_RVT U94 ( .A1(sel_item[1]), .A2(n96), .A3(n97), .A4(price[6]), .Y(n39) );
  AO22X1_RVT U95 ( .A1(sel_item[0]), .A2(n96), .A3(n97), .A4(price[5]), .Y(n38) );
  AO22X1_RVT U96 ( .A1(price[4]), .A2(n97), .A3(n96), .A4(n93), .Y(n37) );
  AO22X1_RVT U97 ( .A1(price[3]), .A2(n97), .A3(n96), .A4(n95), .Y(n36) );
  AO22X1_RVT U98 ( .A1(n94), .A2(n96), .A3(n97), .A4(price[2]), .Y(n35) );
  AO22X1_RVT U99 ( .A1(price[0]), .A2(n97), .A3(n96), .A4(n95), .Y(n33) );
endmodule


module credit_reg ( clk, rst, clr, credit_load, coin_value, credit );
  input [1:0] coin_value;
  output [7:0] credit;
  input clk, rst, clr, credit_load;
  wire   n5, n6, n7, n8, n9, n10, n11, n12, n1, n2, n3, n4, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n44, n45,
         n46, n47, n48, n49, n50, n51, n52, n53, n54;

  DFFX1_RVT \credit_reg[0]  ( .D(n12), .CLK(clk), .Q(credit[0]), .QN(n54) );
  DFFX1_RVT \credit_reg[6]  ( .D(n6), .CLK(clk), .Q(credit[6]), .QN(n53) );
  DFFX1_RVT \credit_reg[4]  ( .D(n8), .CLK(clk), .Q(credit[4]), .QN(n52) );
  DFFX1_RVT \credit_reg[3]  ( .D(n9), .CLK(clk), .Q(credit[3]), .QN(n51) );
  DFFX1_RVT \credit_reg[2]  ( .D(n10), .CLK(clk), .Q(credit[2]), .QN(n50) );
  DFFX1_RVT \credit_reg[1]  ( .D(n11), .CLK(clk), .Q(credit[1]), .QN(n49) );
  DFFX1_RVT \credit_reg[5]  ( .D(n7), .CLK(clk), .Q(credit[5]), .QN(n48) );
  DFFX1_RVT \credit_reg[7]  ( .D(n5), .CLK(clk), .Q(credit[7]) );
  INVX0_RVT U3 ( .A(coin_value[1]), .Y(n37) );
  NAND2X0_RVT U4 ( .A1(coin_value[0]), .A2(n37), .Y(n19) );
  INVX0_RVT U5 ( .A(n19), .Y(n3) );
  NAND2X0_RVT U6 ( .A1(n3), .A2(credit_load), .Y(n1) );
  INVX0_RVT U7 ( .A(n1), .Y(n2) );
  NOR2X0_RVT U8 ( .A1(rst), .A2(clr), .Y(n47) );
  OA221X1_RVT U9 ( .A1(credit[0]), .A2(n2), .A3(n54), .A4(n1), .A5(n47), .Y(
        n12) );
  INVX0_RVT U10 ( .A(coin_value[0]), .Y(n38) );
  AO22X1_RVT U11 ( .A1(coin_value[1]), .A2(n38), .A3(n3), .A4(credit[0]), .Y(
        n14) );
  NAND2X0_RVT U12 ( .A1(n14), .A2(credit_load), .Y(n4) );
  INVX0_RVT U13 ( .A(n4), .Y(n13) );
  OA221X1_RVT U14 ( .A1(credit[1]), .A2(n13), .A3(n49), .A4(n4), .A5(n47), .Y(
        n11) );
  AO22X1_RVT U15 ( .A1(coin_value[1]), .A2(coin_value[0]), .A3(n14), .A4(
        credit[1]), .Y(n17) );
  NAND2X0_RVT U16 ( .A1(credit_load), .A2(n17), .Y(n15) );
  INVX0_RVT U17 ( .A(n15), .Y(n16) );
  OA221X1_RVT U18 ( .A1(credit[2]), .A2(n16), .A3(n50), .A4(n15), .A5(n47), 
        .Y(n10) );
  NAND2X0_RVT U19 ( .A1(credit[2]), .A2(n17), .Y(n18) );
  OR2X1_RVT U20 ( .A1(coin_value[1]), .A2(n18), .Y(n23) );
  NAND2X0_RVT U21 ( .A1(n19), .A2(n18), .Y(n22) );
  NAND3X0_RVT U22 ( .A1(credit_load), .A2(n23), .A3(n22), .Y(n20) );
  INVX0_RVT U23 ( .A(n20), .Y(n21) );
  OA221X1_RVT U24 ( .A1(credit[3]), .A2(n21), .A3(n51), .A4(n20), .A5(n47), 
        .Y(n9) );
  NAND2X0_RVT U25 ( .A1(credit[3]), .A2(n22), .Y(n24) );
  AO22X1_RVT U26 ( .A1(coin_value[1]), .A2(coin_value[0]), .A3(n37), .A4(n38), 
        .Y(n25) );
  AO21X1_RVT U27 ( .A1(n23), .A2(n24), .A3(n25), .Y(n28) );
  NAND2X0_RVT U28 ( .A1(n25), .A2(n24), .Y(n30) );
  NAND3X0_RVT U29 ( .A1(credit_load), .A2(n28), .A3(n30), .Y(n26) );
  INVX0_RVT U30 ( .A(n26), .Y(n27) );
  OA221X1_RVT U31 ( .A1(credit[4]), .A2(n27), .A3(n52), .A4(n26), .A5(n47), 
        .Y(n8) );
  INVX0_RVT U32 ( .A(n28), .Y(n29) );
  AO21X1_RVT U33 ( .A1(credit[4]), .A2(n30), .A3(n29), .Y(n31) );
  INVX0_RVT U34 ( .A(n31), .Y(n34) );
  OA221X1_RVT U35 ( .A1(coin_value[1]), .A2(n31), .A3(n37), .A4(n34), .A5(
        credit_load), .Y(n33) );
  INVX0_RVT U36 ( .A(n33), .Y(n32) );
  OA221X1_RVT U37 ( .A1(credit[5]), .A2(n33), .A3(n48), .A4(n32), .A5(n47), 
        .Y(n7) );
  OA222X1_RVT U38 ( .A1(n37), .A2(n48), .A3(n37), .A4(n34), .A5(n48), .A6(n34), 
        .Y(n36) );
  NAND2X0_RVT U39 ( .A1(coin_value[1]), .A2(coin_value[0]), .Y(n35) );
  NAND2X0_RVT U40 ( .A1(n36), .A2(n35), .Y(n42) );
  OR3X1_RVT U41 ( .A1(n38), .A2(n37), .A3(n36), .Y(n41) );
  NAND3X0_RVT U42 ( .A1(credit_load), .A2(n42), .A3(n41), .Y(n39) );
  INVX0_RVT U43 ( .A(n39), .Y(n40) );
  OA221X1_RVT U44 ( .A1(credit[6]), .A2(n40), .A3(n53), .A4(n39), .A5(n47), 
        .Y(n6) );
  INVX0_RVT U45 ( .A(n41), .Y(n44) );
  OA221X1_RVT U47 ( .A1(n44), .A2(credit[6]), .A3(1'b0), .A4(n42), .A5(
        credit_load), .Y(n45) );
  HADDX1_RVT U48 ( .A0(credit[7]), .B0(n45), .SO(n46) );
  AND2X1_RVT U49 ( .A1(n47), .A2(n46), .Y(n5) );
endmodule


module comparator ( credit, price, stock, can_sell );
  input [7:0] credit;
  input [7:0] price;
  input [7:0] stock;
  output can_sell;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
;

  INVX0_RVT U2 ( .A(price[1]), .Y(n3) );
  INVX0_RVT U3 ( .A(credit[0]), .Y(n1) );
  NAND2X0_RVT U4 ( .A1(price[0]), .A2(n1), .Y(n2) );
  AO222X1_RVT U5 ( .A1(credit[1]), .A2(n3), .A3(credit[1]), .A4(n2), .A5(n3), 
        .A6(n2), .Y(n5) );
  INVX0_RVT U6 ( .A(price[2]), .Y(n4) );
  AO222X1_RVT U7 ( .A1(credit[2]), .A2(n5), .A3(credit[2]), .A4(n4), .A5(n5), 
        .A6(n4), .Y(n7) );
  INVX0_RVT U8 ( .A(price[3]), .Y(n6) );
  AO222X1_RVT U9 ( .A1(credit[3]), .A2(n7), .A3(credit[3]), .A4(n6), .A5(n7), 
        .A6(n6), .Y(n9) );
  INVX0_RVT U10 ( .A(price[4]), .Y(n8) );
  AO222X1_RVT U11 ( .A1(credit[4]), .A2(n9), .A3(credit[4]), .A4(n8), .A5(n9), 
        .A6(n8), .Y(n11) );
  INVX0_RVT U12 ( .A(price[5]), .Y(n10) );
  AO222X1_RVT U13 ( .A1(credit[5]), .A2(n11), .A3(credit[5]), .A4(n10), .A5(
        n11), .A6(n10), .Y(n13) );
  INVX0_RVT U14 ( .A(price[6]), .Y(n12) );
  AO222X1_RVT U15 ( .A1(credit[6]), .A2(n13), .A3(credit[6]), .A4(n12), .A5(
        n13), .A6(n12), .Y(n16) );
  OR4X1_RVT U16 ( .A1(stock[7]), .A2(stock[6]), .A3(stock[5]), .A4(stock[4]), 
        .Y(n15) );
  OR4X1_RVT U17 ( .A1(stock[3]), .A2(stock[2]), .A3(stock[1]), .A4(stock[0]), 
        .Y(n14) );
  OA22X1_RVT U18 ( .A1(credit[7]), .A2(n16), .A3(n15), .A4(n14), .Y(can_sell)
         );
endmodule


module subtractor ( credit, price, change );
  input [7:0] credit;
  input [7:0] price;
  output [7:0] change;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20;

  INVX0_RVT U1 ( .A(credit[1]), .Y(n2) );
  INVX0_RVT U2 ( .A(price[0]), .Y(n17) );
  NOR2X0_RVT U3 ( .A1(n17), .A2(credit[0]), .Y(n16) );
  INVX0_RVT U4 ( .A(n1), .Y(change[1]) );
  INVX0_RVT U5 ( .A(credit[2]), .Y(n5) );
  FADDX1_RVT U6 ( .A(price[1]), .B(n2), .CI(n16), .CO(n4), .S(n1) );
  INVX0_RVT U7 ( .A(n3), .Y(change[2]) );
  INVX0_RVT U8 ( .A(credit[3]), .Y(n8) );
  FADDX1_RVT U9 ( .A(price[2]), .B(n5), .CI(n4), .CO(n7), .S(n3) );
  INVX0_RVT U10 ( .A(n6), .Y(change[3]) );
  INVX0_RVT U11 ( .A(credit[4]), .Y(n11) );
  FADDX1_RVT U12 ( .A(price[3]), .B(n8), .CI(n7), .CO(n10), .S(n6) );
  INVX0_RVT U13 ( .A(n9), .Y(change[4]) );
  INVX0_RVT U14 ( .A(credit[5]), .Y(n14) );
  FADDX1_RVT U15 ( .A(price[4]), .B(n11), .CI(n10), .CO(n13), .S(n9) );
  INVX0_RVT U16 ( .A(n12), .Y(change[5]) );
  INVX0_RVT U17 ( .A(credit[6]), .Y(n19) );
  FADDX1_RVT U18 ( .A(price[5]), .B(n14), .CI(n13), .CO(n18), .S(n12) );
  INVX0_RVT U19 ( .A(n15), .Y(change[6]) );
  AO21X1_RVT U20 ( .A1(credit[0]), .A2(n17), .A3(n16), .Y(change[0]) );
  FADDX1_RVT U21 ( .A(price[6]), .B(n19), .CI(n18), .CO(n20), .S(n15) );
  HADDX1_RVT U22 ( .A0(credit[7]), .B0(n20), .SO(change[7]) );
endmodule


module control_unit ( clk, rst, can_sell, coin_in, confirm, cancel, 
        credit_load, en_change, mem_write, mem_read, clr, state_out, dispense, 
        error );
  input [1:0] coin_in;
  output [2:0] state_out;
  input clk, rst, can_sell, confirm, cancel;
  output credit_load, en_change, mem_write, mem_read, clr, dispense, error;
  wire   mem_write, en_change, N12, N13, N14, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16;
  assign dispense = mem_write;
  assign clr = en_change;

  DFFX1_RVT \state_reg[2]  ( .D(N14), .CLK(clk), .Q(state_out[2]), .QN(n16) );
  DFFX1_RVT \state_reg[1]  ( .D(N13), .CLK(clk), .Q(state_out[1]), .QN(n15) );
  DFFX1_RVT \state_reg[0]  ( .D(N12), .CLK(clk), .Q(state_out[0]), .QN(n14) );
  AND3X1_RVT U3 ( .A1(state_out[0]), .A2(state_out[1]), .A3(n16), .Y(mem_write) );
  NOR2X0_RVT U4 ( .A1(coin_in[1]), .A2(coin_in[0]), .Y(n2) );
  NOR3X0_RVT U5 ( .A1(state_out[1]), .A2(n2), .A3(state_out[2]), .Y(
        credit_load) );
  NAND2X0_RVT U6 ( .A1(n2), .A2(n15), .Y(n3) );
  NAND3X0_RVT U7 ( .A1(n14), .A2(n16), .A3(n3), .Y(n6) );
  AND2X1_RVT U8 ( .A1(state_out[0]), .A2(n15), .Y(n11) );
  INVX0_RVT U9 ( .A(cancel), .Y(n10) );
  NAND2X0_RVT U10 ( .A1(confirm), .A2(n16), .Y(n4) );
  NAND3X0_RVT U11 ( .A1(n11), .A2(n10), .A3(n4), .Y(n5) );
  AOI21X1_RVT U12 ( .A1(n6), .A2(n5), .A3(rst), .Y(N12) );
  AND3X1_RVT U13 ( .A1(state_out[0]), .A2(state_out[2]), .A3(n15), .Y(error)
         );
  AND2X1_RVT U14 ( .A1(state_out[1]), .A2(n16), .Y(n8) );
  INVX0_RVT U15 ( .A(can_sell), .Y(n7) );
  AO22X1_RVT U16 ( .A1(n8), .A2(n7), .A3(error), .A4(n10), .Y(n9) );
  INVX0_RVT U17 ( .A(rst), .Y(n12) );
  OA21X1_RVT U18 ( .A1(mem_write), .A2(n9), .A3(n12), .Y(N14) );
  AND4X1_RVT U19 ( .A1(n11), .A2(confirm), .A3(n16), .A4(n10), .Y(mem_read) );
  AND4X1_RVT U20 ( .A1(state_out[1]), .A2(can_sell), .A3(n16), .A4(n14), .Y(
        n13) );
  OA21X1_RVT U21 ( .A1(n13), .A2(mem_read), .A3(n12), .Y(N13) );
  OA221X1_RVT U22 ( .A1(state_out[0]), .A2(state_out[2]), .A3(n14), .A4(cancel), .A5(n15), .Y(en_change) );
endmodule


module Vending_Top ( clk, rst, sel_item, coin_in, confirm, cancel, change_out, 
        state_out, dispense, display, error );
  input [1:0] sel_item;
  input [1:0] coin_in;
  output [7:0] change_out;
  output [2:0] state_out;
  output [7:0] display;
  input clk, rst, confirm, cancel;
  output dispense, error;
  wire   cancel_reg, N7, en_change, mem_read, mem_write, clr, credit_load,
         can_sell, n13, n14, n15, n16, net828, net829;
  wire   [7:0] change;
  wire   [7:0] stock;
  wire   [7:0] price;
  wire   SYNOPSYS_UNCONNECTED__0;

  memory u_mem_unit ( .clk(clk), .rst(rst), .sel_item(sel_item), .stock(stock), 
        .price({SYNOPSYS_UNCONNECTED__0, price[6:0]}), .mem_read(mem_read), 
        .mem_write(mem_write) );
  credit_reg u_credit_unit ( .clk(clk), .rst(rst), .clr(clr), .credit_load(
        credit_load), .coin_value(coin_in), .credit(display) );
  comparator u_comp_unit ( .credit(display), .price({net829, price[6:0]}), 
        .stock(stock), .can_sell(can_sell) );
  subtractor u_sub_unit ( .credit(display), .price({net828, price[6:0]}), 
        .change(change) );
  control_unit u_control_unit ( .clk(clk), .rst(rst), .can_sell(can_sell), 
        .coin_in(coin_in), .confirm(confirm), .cancel(cancel_reg), 
        .credit_load(credit_load), .en_change(en_change), .mem_write(mem_write), .mem_read(mem_read), .clr(clr), .state_out(state_out), .dispense(dispense), 
        .error(error) );
  DFFX1_RVT cancel_reg_reg ( .D(N7), .CLK(clk), .Q(cancel_reg), .QN(n16) );
  INVX0_RVT U16 ( .A(rst), .Y(n13) );
  AND2X1_RVT U17 ( .A1(cancel), .A2(n13), .Y(N7) );
  AND2X1_RVT U18 ( .A1(en_change), .A2(n16), .Y(n15) );
  AND2X1_RVT U19 ( .A1(cancel_reg), .A2(en_change), .Y(n14) );
  AO22X1_RVT U20 ( .A1(n15), .A2(change[7]), .A3(n14), .A4(display[7]), .Y(
        change_out[7]) );
  AO22X1_RVT U21 ( .A1(n15), .A2(change[6]), .A3(n14), .A4(display[6]), .Y(
        change_out[6]) );
  AO22X1_RVT U22 ( .A1(n15), .A2(change[5]), .A3(n14), .A4(display[5]), .Y(
        change_out[5]) );
  AO22X1_RVT U23 ( .A1(n15), .A2(change[4]), .A3(n14), .A4(display[4]), .Y(
        change_out[4]) );
  AO22X1_RVT U24 ( .A1(n15), .A2(change[3]), .A3(n14), .A4(display[3]), .Y(
        change_out[3]) );
  AO22X1_RVT U25 ( .A1(n15), .A2(change[2]), .A3(n14), .A4(display[2]), .Y(
        change_out[2]) );
  AO22X1_RVT U26 ( .A1(n15), .A2(change[1]), .A3(n14), .A4(display[1]), .Y(
        change_out[1]) );
  AO22X1_RVT U27 ( .A1(n15), .A2(change[0]), .A3(n14), .A4(display[0]), .Y(
        change_out[0]) );
endmodule

