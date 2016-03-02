module hundred_hertz_clock(clock_in, b1, clock_out);
	input clock_in;
	input b1;
	reg start;
	output reg clock_out;
	
	initial start = 1'b0;
	reg [17:0] ctr;
	//1 hertz clock generator]
	
	always @ (posedge clock_in)
		begin
			if (b1 == 0)
				start = 1;
			if (start == 1)
				begin
					if (ctr < 18'd249999)
						begin
							ctr <= ctr + 18'b1;
						end
					else
						begin
							ctr <= 18'b0;
							clock_out <= ~clock_out;
						end
				end
		end
endmodule


module counter(clock, b0, b1, c0, c1, c2, c3);
	input clock;
	input b0, b1;
	reg en;
	
	initial en = 1'b1;
	
	output reg [3:0] c0, c1, c2, c3;
	
	always @ (posedge clock)
		begin
			if (b1 == 0)
				en = 1'b1;
			if (b0 & en)
				begin
					if (c0 == 4'd9)
						begin
							c0 <= 0;
							if (c1 == 4'd9)
								begin
									c1 <= 0;
									if (c2 == 4'd9)
										begin
											c2 <= 0;
											if (c3 == 4'd9)
												c3 <= 0;
											else
												c3 <= c3 + 4'b1;
										end
									else
										c2 <= c2 + 4'b1;
								end
							else
								c1 <= c1 + 4'b1;
						end
					else
						c0 <= c0 + 4'b1;
				end
			else	
				begin
					en <= 1'b0;
					c0 <= 1'b0;
					c1 <= 1'b0;
					c2 <= 1'b0;
					c3 <= 1'b0;
				end
		end
endmodule

module dec_to_seven_segment (in, b2, out);
	output [6:0] out; //in this program we are using active low
	input [3:0] in;
	input b2;

	reg [6:0] out; //make out a variable

	always @ (in, b2)
		begin
			if (b2)
				begin
					case (in)
						/*
						--0--
						|	 |
						5	 1
						|	 |
						--6--
						|   |
						4	 2
						|   |
						--3--

						*/
						//<size>'<base><value>
						//NB: output is [6:0] (not [0:6])
						4'h0: out = 7'b1000000;
						4'h1: out = 7'b1111001;
						4'h2: out = 7'b0100100;
						4'h3: out = 7'b0110000;
						4'h4: out = 7'b0011001;
						4'h5: out = 7'b0010010;
						4'h6: out = 7'b0000010;
						4'h7: out = 7'b1111000;
						4'h8: out = 7'b0000000;
						4'h9: out = 7'b0010000;
						default: out = 7'b0000100;
					endcase
				end
		end
endmodule

module stopclock (clk, button0, button1, button2, hex0, hex1, hex2, hex3, decimal_point);
	input clk, button0, button1, button2;
	output decimal_point;
	output [6:0] hex0, hex1, hex2, hex3;

	wire clk, button0, button1, button2;
	wire [3:0] count0, count1, count2, count3;
	wire [6:0] hex0, hex1, hex2, hex3;
	wire one_hertz_clock;

	assign decimal_point = 1'b0;
	hundred_hertz_clock clockConv (.clock_in(clk), .b1(button1), .clock_out(one_hertz_clock));
	counter timeCount (.clock(one_hertz_clock), .b0(button0), .b1(button1), .c0(count0), .c1(count1), .c2(count2), .c3(count3));
	dec_to_seven_segment dss0 (.in(count0), .b2(button2), .out(hex0));
	dec_to_seven_segment dss1 (.in(count1), .b2(button2), .out(hex1));
	dec_to_seven_segment dss2 (.in(count2), .b2(button2), .out(hex2));
	dec_to_seven_segment dss3 (.in(count3), .b2(button2), .out(hex3));

endmodule