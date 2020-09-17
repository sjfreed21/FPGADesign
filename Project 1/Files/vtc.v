module vtc(
    input        clock,
    input        rst,
    output       vActive,
    output       hSync,
    output       vSync,
    output [9:0] hPixel,
    output [9:0] vLine
);
