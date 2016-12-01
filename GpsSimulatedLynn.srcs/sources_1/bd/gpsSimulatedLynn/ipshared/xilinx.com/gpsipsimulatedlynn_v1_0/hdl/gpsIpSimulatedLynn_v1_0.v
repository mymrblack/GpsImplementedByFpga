
`timescale 1 ns / 1 ps

	module gpsIpSimulatedLynn_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface GPS_AXI
		parameter integer C_GPS_AXI_DATA_WIDTH	= 32,
		parameter integer C_GPS_AXI_ADDR_WIDTH	= 6
	)
	(
		// Users to add ports here
		input gps_pps_in,
		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface GPS_AXI
		input wire  gps_axi_aclk,
		input wire  gps_axi_aresetn,
		input wire [C_GPS_AXI_ADDR_WIDTH-1 : 0] gps_axi_awaddr,
		input wire [2 : 0] gps_axi_awprot,
		input wire  gps_axi_awvalid,
		output wire  gps_axi_awready,
		input wire [C_GPS_AXI_DATA_WIDTH-1 : 0] gps_axi_wdata,
		input wire [(C_GPS_AXI_DATA_WIDTH/8)-1 : 0] gps_axi_wstrb,
		input wire  gps_axi_wvalid,
		output wire  gps_axi_wready,
		output wire [1 : 0] gps_axi_bresp,
		output wire  gps_axi_bvalid,
		input wire  gps_axi_bready,
		input wire [C_GPS_AXI_ADDR_WIDTH-1 : 0] gps_axi_araddr,
		input wire [2 : 0] gps_axi_arprot,
		input wire  gps_axi_arvalid,
		output wire  gps_axi_arready,
		output wire [C_GPS_AXI_DATA_WIDTH-1 : 0] gps_axi_rdata,
		output wire [1 : 0] gps_axi_rresp,
		output wire  gps_axi_rvalid,
		input wire  gps_axi_rready
	);
// Instantiation of Axi Bus Interface GPS_AXI
	gpsIpSimulatedLynn_v1_0_GPS_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_GPS_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_GPS_AXI_ADDR_WIDTH)
	) gpsIpSimulatedLynn_v1_0_GPS_AXI_inst (
		.S_AXI_ACLK(gps_axi_aclk),
		.PPS_IN(gps_pps_in),
		.S_AXI_ARESETN(gps_axi_aresetn),
		.S_AXI_AWADDR(gps_axi_awaddr),
		.S_AXI_AWPROT(gps_axi_awprot),
		.S_AXI_AWVALID(gps_axi_awvalid),
		.S_AXI_AWREADY(gps_axi_awready),
		.S_AXI_WDATA(gps_axi_wdata),
		.S_AXI_WSTRB(gps_axi_wstrb),
		.S_AXI_WVALID(gps_axi_wvalid),
		.S_AXI_WREADY(gps_axi_wready),
		.S_AXI_BRESP(gps_axi_bresp),
		.S_AXI_BVALID(gps_axi_bvalid),
		.S_AXI_BREADY(gps_axi_bready),
		.S_AXI_ARADDR(gps_axi_araddr),
		.S_AXI_ARPROT(gps_axi_arprot),
		.S_AXI_ARVALID(gps_axi_arvalid),
		.S_AXI_ARREADY(gps_axi_arready),
		.S_AXI_RDATA(gps_axi_rdata),
		.S_AXI_RRESP(gps_axi_rresp),
		.S_AXI_RVALID(gps_axi_rvalid),
		.S_AXI_RREADY(gps_axi_rready)
	);

	// Add user logic here

	// User logic ends

	endmodule
