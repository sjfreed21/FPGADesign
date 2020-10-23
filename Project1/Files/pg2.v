module pg2(
    input        clk,
    input  [9:0] hPixel,
    input  [9:0] vLine,
    input        vActive,
    input  [2:0] SW,
    output [7:0] RED,
    output [7:0] GRN,
    output [7:0] BLU
);

reg [5:0] addr;
reg [7:0] r, g, b;
wire [23:0] q;

always @(hPixel, vLine)
begin
    if (vLine < 60)
    begin
        if (hPixel < 80) addr = 0;
        else if (hPixel < 160) addr = 8;
        else if (hPixel < 240) addr = 16;
        else if (hPixel < 320) addr = 24;
        else if (hPixel < 400) addr = 32;
        else if (hPixel < 480) addr = 40;
        else if (hPixel < 560) addr = 48;
        else if (hPixel < 640) addr = 56;
        else addr = 56;
    end
    else if (vLine < 120)
    begin
        if (hPixel < 80) addr = 56;
        else if (hPixel < 160) addr = 0;
        else if (hPixel < 240) addr = 8;
        else if (hPixel < 320) addr = 16;
        else if (hPixel < 400) addr = 24;
        else if (hPixel < 480) addr = 32;
        else if (hPixel < 560) addr = 40;
        else if (hPixel < 640) addr = 48;
        else addr = 56;
    end
    else if (vLine < 180)
    begin
        if (hPixel < 80) addr = 48;
        else if (hPixel < 160) addr = 56;
        else if (hPixel < 240) addr = 0;
        else if (hPixel < 320) addr = 8;
        else if (hPixel < 400) addr = 16;
        else if (hPixel < 480) addr = 24;
        else if (hPixel < 560) addr = 32;
        else if (hPixel < 640) addr = 40;
        else addr = 56;
    end
    else if (vLine < 240)
    begin
        if (hPixel < 80) addr = 40;
        else if (hPixel < 160) addr = 48;
        else if (hPixel < 240) addr = 56;
        else if (hPixel < 320) addr = 0;
        else if (hPixel < 400) addr = 8;
        else if (hPixel < 480) addr = 16;
        else if (hPixel < 560) addr = 24;
        else if (hPixel < 640) addr = 32;
        else addr = 56;
    end
    else if (vLine < 300)
    begin
        if (hPixel < 80) addr = 32;
        else if (hPixel < 160) addr = 40;
        else if (hPixel < 240) addr = 48;
        else if (hPixel < 320) addr = 56;
        else if (hPixel < 400) addr = 0;
        else if (hPixel < 480) addr = 8;
        else if (hPixel < 560) addr = 16;
        else if (hPixel < 640) addr = 24;
        else addr = 56;
    end
    else if (vLine < 360)
    begin
        if (hPixel < 80) addr = 24;
        else if (hPixel < 160) addr = 32;
        else if (hPixel < 240) addr = 40;
        else if (hPixel < 320) addr = 48;
        else if (hPixel < 400) addr = 56;
        else if (hPixel < 480) addr = 0;
        else if (hPixel < 560) addr = 8;
        else if (hPixel < 640) addr = 16;
        else addr = 56;
    end
    else if (vLine < 420)
    begin
        if (hPixel < 80) addr = 16;
        else if (hPixel < 160) addr = 24;
        else if (hPixel < 240) addr = 32;
        else if (hPixel < 320) addr = 40;
        else if (hPixel < 400) addr = 48;
        else if (hPixel < 480) addr = 56;
        else if (hPixel < 560) addr = 0;
        else if (hPixel < 640) addr = 8;
        else addr = 56;
    end
    else
    begin
        if (hPixel < 80) addr = 8;
        else if (hPixel < 160) addr = 16;
        else if (hPixel < 240) addr = 24;
        else if (hPixel < 320) addr = 32;
        else if (hPixel < 400) addr = 40;
        else if (hPixel < 480) addr = 48;
        else if (hPixel < 560) addr = 56;
        else if (hPixel < 640) addr = 0;
        else addr = 56;
    end
end

rom R1 (.address(addr), .clock(clk), .q(q));

always @(vActive, q)
begin
    if (~vActive)
    begin
        r = 0;
        g = 0;
        b = 0;  
    end
    else
    begin
        r = q[23:16];
        g = q[15:8];
        b = q[7:0];
    end
end

assign RED = r;
assign GRN = g;
assign BLU = b;

endmodule