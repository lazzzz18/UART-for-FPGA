#-------------------------------------------------------------------------------
# PROJECT: SIMPLE UART FOR FPGA
#-------------------------------------------------------------------------------
# AUTHORS: Lazarus Kannati <lazaruskannati086@gmail.com>
# LICENSE: The MIT License, please read LICENSE file
# WEBSITE: https://github.com/lazzzz18/UART-for-FPGA
#-------------------------------------------------------------------------------

# Create work library
vlib work

# Compile VHDL files
vcom -93 ../rtl/comp/uart_clk_div.vhd
vcom -93 ../rtl/comp/uart_debouncer.vhd
vcom -93 ../rtl/comp/uart_parity.vhd
vcom -93 ../rtl/comp/uart_tx.vhd
vcom -93 ../rtl/comp/uart_rx.vhd
vcom -93 ../rtl/uart.vhd
vcom -93 ./uart_tb.vhd

# Load testbench
vsim work.uart_tb

# Setup and start simulation
add wave sim:/uart_tb/utt/*
#add wave sim:/uart_tb/utt/uart_rx_i/*
#add wave sim:/uart_tb/utt/uart_tx_i/*
#add wave sim:/uart_tb/*
run -All