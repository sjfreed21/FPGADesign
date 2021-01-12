module i2c_count(
    input        clock,
    input        in,
    output [6:0] address
);

// In its current iteration, this program can only handle the 64 values (0 thru 63) that the ROM currently has inside it.
// This would need to be expanded to fit the entire I2C data.

reg [6:0] count = 0;

always @(negedge clock)
    // Technically, the if statement below is not necessary - ideally, when the last of the I2C memory is read,
    // the counter would stop since the data would not need to be sent again.
    if (count >= 38)
        count = 0;
    else if (count == 18 || count == 35) begin
        if(in == 0) 
            count = count + 1;
        else
            count = count;
    end
    else
        count = count + 1;

assign address = count;

endmodule