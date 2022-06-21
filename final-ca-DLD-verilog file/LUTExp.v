module LUT (input [3:0] adr, output [15:0] data);
reg [15:0] datat;
	always @(adr) begin
		case(adr)
			0: datat = 16'hFFFF;
			1: datat = 16'h8000;
			2: datat = 16'h5555;
			3: datat = 16'h4000;
			4: datat = 16'h3333;
			5: datat = 16'h2AAA;
			6: datat = 16'h2492;
			7: datat = 16'h2000;
			8: datat = 16'h1C71;
			9: datat = 16'h1999;
			10: datat = 16'h1745;
			11: datat = 16'h1555;
			12: datat = 16'h13B1;
			13: datat = 16'h1249;
			14: datat = 16'h1111;
			15: datat = 16'h1000;
		endcase
	end
assign data = datat;
endmodule
