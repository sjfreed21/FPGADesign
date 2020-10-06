module vtc
    #(
    parameter  [9:0] hArea,
    parameter  [9:0] hFPorch,
    parameter  [9:0] hBPorch,
    parameter  [9:0] hSTime,
    parameter  [9:0] vArea,
    parameter  [9:0] vFPorch,
    parameter  [9:0] vBPorch,
    parameter  [9:0] vSTime
)
    (
    input        clock,
    input        rst,
    output       vActive,
    output       hSync,
    output       vSync,
    output [9:0] hPixel,
    output [9:0] vLine
);

reg [9:0] hP = 0;
reg [9:0] vL = 0;
reg vA, vS, hS;

// Horizontal Pixel & Vertical Line
always @(posedge clock or posedge rst)
begin
    if(rst == 1)
    begin
        hP = 0;
        vL = 0;
    end
    else
        if(hP < hArea)
            hP <= hP +1;
        else if(hP == hArea)
        begin
            hP = 0;
            if(vL < vArea) 
                vL = vL + 1;
            else
                vL = 0;
        end
        else
            hP = 0;
end

assign hPixel = hP;
assign vLine = vL;

// vSync
always @(vL)
begin
    if(vL < vSTime)
        vS = 1;
    else
        vS = 0;
end

assign vSync = vS;

// hSync
always @(hP)
begin
    if (hP < hSTime)
        hS = 0;
    else
        hS = 1;
end

assign hSync = hS;

// vActive
always @(hP)
begin
    if (vL > (vSTime + vBPorch) && vL < (vArea - vFPorch))
    begin
        if(hP > (hSTime + hBPorch) && hP < (hArea - hFPorch))
            vA = 1;
        else
            vA = 0;
    end  
end

assign vActive = vA;

endmodule