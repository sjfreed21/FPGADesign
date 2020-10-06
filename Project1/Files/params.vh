`ifdef sixforty
    parameter hArea = 800;
    parameter hFPorch = 16;
    parameter hBPorch = 48;
    parameter hSTime = 96;
    parameter vArea = 525;
    parameter vFPorch = 10;
    parameter vBPorch = 33;
    parameter vSTime = 2;
    parameter min = 200;
    parameter max = 300;
`endif

`ifdef simulation
    parameter hArea = 10;
    parameter hFPorch = 2;
    parameter hBPorch = 2;
    parameter hSTime = 1;
    parameter vArea = 30;
    parameter vFPorch = 2;
    parameter vBPorch = 6;
    parameter vSTime = 1;
    parameter min = 2;
    parameter max = 7;
`endif