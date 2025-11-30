# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: D:\Work\rfsoc_project\project_1\app\test_uart_system\_ide\scripts\debugger_test_uart-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source D:\Work\rfsoc_project\project_1\app\test_uart_system\_ide\scripts\debugger_test_uart-default.tcl
# 
connect -url tcp:127.0.0.1:3121
source D:/Software/Vitis2022/Vitis/2022.2/scripts/vitis/util/zynqmp_utils.tcl
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx TUL 1234-tulA" && level==0 && jtag_device_ctx=="jsn-TUL-1234-tulA-147e4093-0"}
fpga -file D:/Work/rfsoc_project/project_1/app/test_uart/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw D:/Work/rfsoc_project/project_1/app/test/export/test/hw/design_1_wrapper.xsa -mem-ranges [list {0x80000000 0xbfffffff} {0x400000000 0x5ffffffff} {0x1000000000 0x7fffffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
set mode [expr [mrd -value 0xFF5E0200] & 0xf]
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow D:/Work/rfsoc_project/project_1/app/test/export/test/sw/test/boot/fsbl.elf
set bp_18_13_fsbl_bp [bpadd -addr &XFsbl_Exit]
con -block -timeout 60
bpremove $bp_18_13_fsbl_bp
targets -set -nocase -filter {name =~ "*A53*#0"}
rst -processor
dow D:/Work/rfsoc_project/project_1/app/test_uart/Debug/test_uart.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A53*#0"}
con
