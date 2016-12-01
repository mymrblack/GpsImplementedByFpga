# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: imports/new/system.xdc

# Block Designs: bd/gpsSimulatedLynn/gpsSimulatedLynn.bd
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==gpsSimulatedLynn || ORIG_REF_NAME==gpsSimulatedLynn}]

# IP: bd/gpsSimulatedLynn/ip/gpsSimulatedLynn_processing_system7_0_0/gpsSimulatedLynn_processing_system7_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==gpsSimulatedLynn_processing_system7_0_0 || ORIG_REF_NAME==gpsSimulatedLynn_processing_system7_0_0}]

# IP: bd/gpsSimulatedLynn/ip/gpsSimulatedLynn_axi_uartlite_0_0/gpsSimulatedLynn_axi_uartlite_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==gpsSimulatedLynn_axi_uartlite_0_0 || ORIG_REF_NAME==gpsSimulatedLynn_axi_uartlite_0_0}]

# IP: bd/gpsSimulatedLynn/ip/gpsSimulatedLynn_gpsIpSimulatedLynn_0_0/gpsSimulatedLynn_gpsIpSimulatedLynn_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==gpsSimulatedLynn_gpsIpSimulatedLynn_0_0 || ORIG_REF_NAME==gpsSimulatedLynn_gpsIpSimulatedLynn_0_0}]

# IP: bd/gpsSimulatedLynn/ip/gpsSimulatedLynn_processing_system7_0_axi_periph_0/gpsSimulatedLynn_processing_system7_0_axi_periph_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==gpsSimulatedLynn_processing_system7_0_axi_periph_0 || ORIG_REF_NAME==gpsSimulatedLynn_processing_system7_0_axi_periph_0}]

# IP: bd/gpsSimulatedLynn/ip/gpsSimulatedLynn_rst_processing_system7_0_100M_0/gpsSimulatedLynn_rst_processing_system7_0_100M_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==gpsSimulatedLynn_rst_processing_system7_0_100M_0 || ORIG_REF_NAME==gpsSimulatedLynn_rst_processing_system7_0_100M_0}]

# IP: bd/gpsSimulatedLynn/ip/gpsSimulatedLynn_xbar_0/gpsSimulatedLynn_xbar_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==gpsSimulatedLynn_xbar_0 || ORIG_REF_NAME==gpsSimulatedLynn_xbar_0}]

# IP: bd/gpsSimulatedLynn/ip/gpsSimulatedLynn_auto_pc_0/gpsSimulatedLynn_auto_pc_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==gpsSimulatedLynn_auto_pc_0 || ORIG_REF_NAME==gpsSimulatedLynn_auto_pc_0}]

# XDC: bd/gpsSimulatedLynn/ip/gpsSimulatedLynn_processing_system7_0_0/gpsSimulatedLynn_processing_system7_0_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==gpsSimulatedLynn_processing_system7_0_0 || ORIG_REF_NAME==gpsSimulatedLynn_processing_system7_0_0}] {/inst }]/inst ]]

# XDC: bd/gpsSimulatedLynn/ip/gpsSimulatedLynn_axi_uartlite_0_0/gpsSimulatedLynn_axi_uartlite_0_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==gpsSimulatedLynn_axi_uartlite_0_0 || ORIG_REF_NAME==gpsSimulatedLynn_axi_uartlite_0_0}] {/U0 }]/U0 ]]

# XDC: bd/gpsSimulatedLynn/ip/gpsSimulatedLynn_axi_uartlite_0_0/gpsSimulatedLynn_axi_uartlite_0_0_ooc.xdc

# XDC: bd/gpsSimulatedLynn/ip/gpsSimulatedLynn_axi_uartlite_0_0/gpsSimulatedLynn_axi_uartlite_0_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==gpsSimulatedLynn_axi_uartlite_0_0 || ORIG_REF_NAME==gpsSimulatedLynn_axi_uartlite_0_0}] {/U0 }]/U0 ]]

# XDC: bd/gpsSimulatedLynn/ip/gpsSimulatedLynn_rst_processing_system7_0_100M_0/gpsSimulatedLynn_rst_processing_system7_0_100M_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==gpsSimulatedLynn_rst_processing_system7_0_100M_0 || ORIG_REF_NAME==gpsSimulatedLynn_rst_processing_system7_0_100M_0}] {/U0 }]/U0 ]]

# XDC: bd/gpsSimulatedLynn/ip/gpsSimulatedLynn_rst_processing_system7_0_100M_0/gpsSimulatedLynn_rst_processing_system7_0_100M_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==gpsSimulatedLynn_rst_processing_system7_0_100M_0 || ORIG_REF_NAME==gpsSimulatedLynn_rst_processing_system7_0_100M_0}] {/U0 }]/U0 ]]

# XDC: bd/gpsSimulatedLynn/ip/gpsSimulatedLynn_rst_processing_system7_0_100M_0/gpsSimulatedLynn_rst_processing_system7_0_100M_0_ooc.xdc

# XDC: bd/gpsSimulatedLynn/ip/gpsSimulatedLynn_xbar_0/gpsSimulatedLynn_xbar_0_ooc.xdc

# XDC: bd/gpsSimulatedLynn/ip/gpsSimulatedLynn_auto_pc_0/gpsSimulatedLynn_auto_pc_0_ooc.xdc

# XDC: bd/gpsSimulatedLynn/gpsSimulatedLynn_ooc.xdc
