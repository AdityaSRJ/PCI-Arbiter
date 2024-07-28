`define clkperiodby2 10

`include "pci_arbiter.v" 

module pci_arbiter_test;

reg clk;
reg reset_n;
reg REQ0;
reg REQ1;
reg REQ2;
reg REQ3;



wire GNT0;
wire GNT1;
wire GNT2;
wire GNT3;


pci_arbiter u1(

.clk(clk),
.reset_n(reset_n),
.REQ0(REQ0),
.REQ1(REQ1),
.REQ2(REQ2),
.REQ3(REQ3),
.GNT0(GNT0),
.GNT1(GNT1),
.GNT2(GNT2),
.GNT3(GNT3)

);

initial
begin

	REQ0 = 1;
	REQ1 = 1;
	REQ2 = 1;
	REQ3 = 1;


	clk = 0;
	reset_n = 1;

#60	reset_n = 0;
#20	reset_n = 1;  // reset deasserted at 80
 

#400	REQ0 = 0;  // REQ0 removed at 480
#80	REQ1 = 0;  // 560
#80	REQ2 = 0; // 640
#160    REQ0 = 1; // 800

# 200   REQ3 = 0;  // 1000

#100

$stop;
end


always
	#`clkperiodby2 clk <= ~clk;

endmodule


	

