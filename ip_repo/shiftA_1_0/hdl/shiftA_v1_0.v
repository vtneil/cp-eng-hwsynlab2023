
`timescale 1 ns / 1 ps

	module shiftA_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface D
		parameter integer C_D_DATA_WIDTH	= 32,
		parameter integer C_D_ADDR_WIDTH	= 4,

		// Parameters of Axi Slave Bus Interface CLK
		parameter integer C_CLK_DATA_WIDTH	= 32,
		parameter integer C_CLK_ADDR_WIDTH	= 4,

		// Parameters of Axi Master Bus Interface Q
		parameter  C_Q_START_DATA_VALUE	= 32'hAA000000,
		parameter  C_Q_TARGET_SLAVE_BASE_ADDR	= 32'h40000000,
		parameter integer C_Q_ADDR_WIDTH	= 32,
		parameter integer C_Q_DATA_WIDTH	= 32,
		parameter integer C_Q_TRANSACTIONS_NUM	= 4
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface D
		input wire  d_aclk,
		input wire  d_aresetn,
		input wire [C_D_ADDR_WIDTH-1 : 0] d_awaddr,
		input wire [2 : 0] d_awprot,
		input wire  d_awvalid,
		output wire  d_awready,
		input wire [C_D_DATA_WIDTH-1 : 0] d_wdata,
		input wire [(C_D_DATA_WIDTH/8)-1 : 0] d_wstrb,
		input wire  d_wvalid,
		output wire  d_wready,
		output wire [1 : 0] d_bresp,
		output wire  d_bvalid,
		input wire  d_bready,
		input wire [C_D_ADDR_WIDTH-1 : 0] d_araddr,
		input wire [2 : 0] d_arprot,
		input wire  d_arvalid,
		output wire  d_arready,
		output wire [C_D_DATA_WIDTH-1 : 0] d_rdata,
		output wire [1 : 0] d_rresp,
		output wire  d_rvalid,
		input wire  d_rready,

		// Ports of Axi Slave Bus Interface CLK
		input wire  clk_aclk,
		input wire  clk_aresetn,
		input wire [C_CLK_ADDR_WIDTH-1 : 0] clk_awaddr,
		input wire [2 : 0] clk_awprot,
		input wire  clk_awvalid,
		output wire  clk_awready,
		input wire [C_CLK_DATA_WIDTH-1 : 0] clk_wdata,
		input wire [(C_CLK_DATA_WIDTH/8)-1 : 0] clk_wstrb,
		input wire  clk_wvalid,
		output wire  clk_wready,
		output wire [1 : 0] clk_bresp,
		output wire  clk_bvalid,
		input wire  clk_bready,
		input wire [C_CLK_ADDR_WIDTH-1 : 0] clk_araddr,
		input wire [2 : 0] clk_arprot,
		input wire  clk_arvalid,
		output wire  clk_arready,
		output wire [C_CLK_DATA_WIDTH-1 : 0] clk_rdata,
		output wire [1 : 0] clk_rresp,
		output wire  clk_rvalid,
		input wire  clk_rready,

		// Ports of Axi Master Bus Interface Q
		input wire  q_init_axi_txn,
		output wire  q_error,
		output wire  q_txn_done,
		input wire  q_aclk,
		input wire  q_aresetn,
		output wire [C_Q_ADDR_WIDTH-1 : 0] q_awaddr,
		output wire [2 : 0] q_awprot,
		output wire  q_awvalid,
		input wire  q_awready,
		output wire [C_Q_DATA_WIDTH-1 : 0] q_wdata,
		output wire [C_Q_DATA_WIDTH/8-1 : 0] q_wstrb,
		output wire  q_wvalid,
		input wire  q_wready,
		input wire [1 : 0] q_bresp,
		input wire  q_bvalid,
		output wire  q_bready,
		output wire [C_Q_ADDR_WIDTH-1 : 0] q_araddr,
		output wire [2 : 0] q_arprot,
		output wire  q_arvalid,
		input wire  q_arready,
		input wire [C_Q_DATA_WIDTH-1 : 0] q_rdata,
		input wire [1 : 0] q_rresp,
		input wire  q_rvalid,
		output wire  q_rready
	);
// Instantiation of Axi Bus Interface D
	shiftA_v1_0_D # ( 
		.C_S_AXI_DATA_WIDTH(C_D_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_D_ADDR_WIDTH)
	) shiftA_v1_0_D_inst (
		.S_AXI_ACLK(d_aclk),
		.S_AXI_ARESETN(d_aresetn),
		.S_AXI_AWADDR(d_awaddr),
		.S_AXI_AWPROT(d_awprot),
		.S_AXI_AWVALID(d_awvalid),
		.S_AXI_AWREADY(d_awready),
		.S_AXI_WDATA(d_wdata),
		.S_AXI_WSTRB(d_wstrb),
		.S_AXI_WVALID(d_wvalid),
		.S_AXI_WREADY(d_wready),
		.S_AXI_BRESP(d_bresp),
		.S_AXI_BVALID(d_bvalid),
		.S_AXI_BREADY(d_bready),
		.S_AXI_ARADDR(d_araddr),
		.S_AXI_ARPROT(d_arprot),
		.S_AXI_ARVALID(d_arvalid),
		.S_AXI_ARREADY(d_arready),
		.S_AXI_RDATA(d_rdata),
		.S_AXI_RRESP(d_rresp),
		.S_AXI_RVALID(d_rvalid),
		.S_AXI_RREADY(d_rready)
	);

// Instantiation of Axi Bus Interface CLK
	shiftA_v1_0_CLK # ( 
		.C_S_AXI_DATA_WIDTH(C_CLK_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_CLK_ADDR_WIDTH)
	) shiftA_v1_0_CLK_inst (
		.S_AXI_ACLK(clk_aclk),
		.S_AXI_ARESETN(clk_aresetn),
		.S_AXI_AWADDR(clk_awaddr),
		.S_AXI_AWPROT(clk_awprot),
		.S_AXI_AWVALID(clk_awvalid),
		.S_AXI_AWREADY(clk_awready),
		.S_AXI_WDATA(clk_wdata),
		.S_AXI_WSTRB(clk_wstrb),
		.S_AXI_WVALID(clk_wvalid),
		.S_AXI_WREADY(clk_wready),
		.S_AXI_BRESP(clk_bresp),
		.S_AXI_BVALID(clk_bvalid),
		.S_AXI_BREADY(clk_bready),
		.S_AXI_ARADDR(clk_araddr),
		.S_AXI_ARPROT(clk_arprot),
		.S_AXI_ARVALID(clk_arvalid),
		.S_AXI_ARREADY(clk_arready),
		.S_AXI_RDATA(clk_rdata),
		.S_AXI_RRESP(clk_rresp),
		.S_AXI_RVALID(clk_rvalid),
		.S_AXI_RREADY(clk_rready)
	);

// Instantiation of Axi Bus Interface Q
	shiftA_v1_0_Q # ( 
		.C_M_START_DATA_VALUE(C_Q_START_DATA_VALUE),
		.C_M_TARGET_SLAVE_BASE_ADDR(C_Q_TARGET_SLAVE_BASE_ADDR),
		.C_M_AXI_ADDR_WIDTH(C_Q_ADDR_WIDTH),
		.C_M_AXI_DATA_WIDTH(C_Q_DATA_WIDTH),
		.C_M_TRANSACTIONS_NUM(C_Q_TRANSACTIONS_NUM)
	) shiftA_v1_0_Q_inst (
		.INIT_AXI_TXN(q_init_axi_txn),
		.ERROR(q_error),
		.TXN_DONE(q_txn_done),
		.M_AXI_ACLK(q_aclk),
		.M_AXI_ARESETN(q_aresetn),
		.M_AXI_AWADDR(q_awaddr),
		.M_AXI_AWPROT(q_awprot),
		.M_AXI_AWVALID(q_awvalid),
		.M_AXI_AWREADY(q_awready),
		.M_AXI_WDATA(q_wdata),
		.M_AXI_WSTRB(q_wstrb),
		.M_AXI_WVALID(q_wvalid),
		.M_AXI_WREADY(q_wready),
		.M_AXI_BRESP(q_bresp),
		.M_AXI_BVALID(q_bvalid),
		.M_AXI_BREADY(q_bready),
		.M_AXI_ARADDR(q_araddr),
		.M_AXI_ARPROT(q_arprot),
		.M_AXI_ARVALID(q_arvalid),
		.M_AXI_ARREADY(q_arready),
		.M_AXI_RDATA(q_rdata),
		.M_AXI_RRESP(q_rresp),
		.M_AXI_RVALID(q_rvalid),
		.M_AXI_RREADY(q_rready)
	);

	// Add user logic here

	// User logic ends

	endmodule
