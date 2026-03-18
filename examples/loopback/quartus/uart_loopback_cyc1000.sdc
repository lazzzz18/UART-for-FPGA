#-------------------------------------------------------------------------------
# PROJECT: SIMPLE UART FOR FPGA
#-------------------------------------------------------------------------------
# AUTHORS: Lazarus Kannati <lazaruskannati086@gmail.com>
# LICENSE: The MIT License, please read LICENSE file
# WEBSITE: https://github.com/lazzzz18/UART-for-FPGA
#-------------------------------------------------------------------------------

create_clock -name CLK12M -period 12MHz [get_ports {CLK_12M}]
