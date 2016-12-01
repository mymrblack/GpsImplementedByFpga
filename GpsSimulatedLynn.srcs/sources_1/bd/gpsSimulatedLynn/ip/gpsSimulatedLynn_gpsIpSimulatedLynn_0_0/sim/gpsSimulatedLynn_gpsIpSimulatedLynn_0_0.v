// (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:gpsIpSimulatedLynn:1.0
// IP Revision: 4

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module gpsSimulatedLynn_gpsIpSimulatedLynn_0_0 (
  gps_pps_in,
  gps_axi_awaddr,
  gps_axi_awprot,
  gps_axi_awvalid,
  gps_axi_awready,
  gps_axi_wdata,
  gps_axi_wstrb,
  gps_axi_wvalid,
  gps_axi_wready,
  gps_axi_bresp,
  gps_axi_bvalid,
  gps_axi_bready,
  gps_axi_araddr,
  gps_axi_arprot,
  gps_axi_arvalid,
  gps_axi_arready,
  gps_axi_rdata,
  gps_axi_rresp,
  gps_axi_rvalid,
  gps_axi_rready,
  gps_axi_aclk,
  gps_axi_aresetn
);

input wire gps_pps_in;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 GPS_AXI AWADDR" *)
input wire [5 : 0] gps_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 GPS_AXI AWPROT" *)
input wire [2 : 0] gps_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 GPS_AXI AWVALID" *)
input wire gps_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 GPS_AXI AWREADY" *)
output wire gps_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 GPS_AXI WDATA" *)
input wire [31 : 0] gps_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 GPS_AXI WSTRB" *)
input wire [3 : 0] gps_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 GPS_AXI WVALID" *)
input wire gps_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 GPS_AXI WREADY" *)
output wire gps_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 GPS_AXI BRESP" *)
output wire [1 : 0] gps_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 GPS_AXI BVALID" *)
output wire gps_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 GPS_AXI BREADY" *)
input wire gps_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 GPS_AXI ARADDR" *)
input wire [5 : 0] gps_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 GPS_AXI ARPROT" *)
input wire [2 : 0] gps_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 GPS_AXI ARVALID" *)
input wire gps_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 GPS_AXI ARREADY" *)
output wire gps_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 GPS_AXI RDATA" *)
output wire [31 : 0] gps_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 GPS_AXI RRESP" *)
output wire [1 : 0] gps_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 GPS_AXI RVALID" *)
output wire gps_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 GPS_AXI RREADY" *)
input wire gps_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 GPS_AXI_CLK CLK" *)
input wire gps_axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 GPS_AXI_RST RST" *)
input wire gps_axi_aresetn;

  gpsIpSimulatedLynn_v1_0 #(
    .C_GPS_AXI_DATA_WIDTH(32),  // Width of S_AXI data bus
    .C_GPS_AXI_ADDR_WIDTH(6)  // Width of S_AXI address bus
  ) inst (
    .gps_pps_in(gps_pps_in),
    .gps_axi_awaddr(gps_axi_awaddr),
    .gps_axi_awprot(gps_axi_awprot),
    .gps_axi_awvalid(gps_axi_awvalid),
    .gps_axi_awready(gps_axi_awready),
    .gps_axi_wdata(gps_axi_wdata),
    .gps_axi_wstrb(gps_axi_wstrb),
    .gps_axi_wvalid(gps_axi_wvalid),
    .gps_axi_wready(gps_axi_wready),
    .gps_axi_bresp(gps_axi_bresp),
    .gps_axi_bvalid(gps_axi_bvalid),
    .gps_axi_bready(gps_axi_bready),
    .gps_axi_araddr(gps_axi_araddr),
    .gps_axi_arprot(gps_axi_arprot),
    .gps_axi_arvalid(gps_axi_arvalid),
    .gps_axi_arready(gps_axi_arready),
    .gps_axi_rdata(gps_axi_rdata),
    .gps_axi_rresp(gps_axi_rresp),
    .gps_axi_rvalid(gps_axi_rvalid),
    .gps_axi_rready(gps_axi_rready),
    .gps_axi_aclk(gps_axi_aclk),
    .gps_axi_aresetn(gps_axi_aresetn)
  );
endmodule
