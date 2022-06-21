module cosh_tb();
reg clk,rst,start;
reg [15:0] x_in;
wire done;
wire [1:0] intpart;
wire [15:0] fracpart;
exponential cosh(.clk(clk), .rst(rst), .start(start), .done(done), .x(x_in), .intpart(intpart) , .fracpart(fracpart));
initial begin
    rst = 1'b1;
    clk = 1'b0;
    start = 1'b0;
end
initial #30 rst = 1'b0;

always #10 clk = ~clk;

initial begin
    #10 start = 1'b1;
    #10 x_in = 16'h8000;
    #30 start = 1'b0;
    #200 start = 1'b1;
    end
endmodule