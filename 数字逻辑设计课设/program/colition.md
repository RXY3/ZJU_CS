```verilog
module colition(
    input wire clk,
    input wire rst,
    input wire [11:0] rbg,
    output reg collition
    );
    always @(posedge clk, posedge rst)
    begin
        if(rbg[11:0] == 12'h000)
            collition <= 1'b1;
        else
            collition <= 1'b0;s
    end
```