# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct D:\Work\rfsoc_project\project_1\app\test\platform.tcl
# 
# OR launch xsct and run below command.
# source D:\Work\rfsoc_project\project_1\app\test\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {test}\
-hw {D:\Work\rfsoc_project\project_1\app\design_1_wrapper.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {D:/Work/rfsoc_project/project_1/app}

platform write
platform generate -domains 
platform active {test}
platform generate
platform active {test}
platform config -updatehw {D:/Work/rfsoc_project/project_1/app/design_1_wrapper.xsa}
platform generate -domains 
bsp reload
domain active {zynqmp_fsbl}
bsp reload
platform generate -domains 
platform active {test}
platform config -updatehw {D:/Work/rfsoc_project/project_1/app/design_1_wrapper.xsa}
platform generate -domains 
platform active {test}
platform config -updatehw {D:/Work/rfsoc_project/project_1/app/design_1_wrapper.xsa}
platform generate -domains 
platform generate
platform active {test}
platform config -updatehw {D:/Work/rfsoc_project/project_1/app/design_1_wrapper.xsa}
platform generate -domains 
domain active {standalone_domain}
bsp reload
domain active {zynqmp_fsbl}
bsp reload
domain active {zynqmp_pmufw}
bsp reload
platform config -updatehw {D:/Work/rfsoc_project/project_1/app/design_1_wrapper.xsa}
platform generate -domains 
domain active {standalone_domain}
bsp reload
domain active {zynqmp_fsbl}
bsp reload
platform config -updatehw {D:/Work/rfsoc_project/project_1/app/design_1_wrapper.xsa}
platform generate -domains 
platform active {test}
platform generate -domains 
platform active {test}
platform config -updatehw {D:/Work/rfsoc_project/project_1/app/design_1_wrapper.xsa}
platform generate -domains 
platform active {test}
platform config -updatehw {D:/Work/rfsoc_project/project_1/app/design_1_wrapper.xsa}
platform generate -domains 
platform active {test}
platform config -updatehw {D:/Work/rfsoc_project/project_1/app/design_1_wrapper.xsa}
platform generate
platform active {test}
bsp reload
domain active {standalone_domain}
bsp reload
domain active {zynqmp_pmufw}
bsp reload
domain active {zynqmp_fsbl}
bsp setlib -name libmetal -ver 2.4
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform active {test}
platform config -updatehw {D:/Work/rfsoc_project/project_1/app/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {D:/Work/rfsoc_project/project_1/app/design_1_wrapper.xsa}
platform generate -domains 
platform config -updatehw {D:/Work/rfsoc_project/project_1/app/design_1_wrapper.xsa}
platform generate -domains 
platform active {test}
platform config -updatehw {D:/Work/rfsoc_project/project3/app/design_1_wrapper.xsa}
platform generate
platform generate
platform active {test}
domain active {standalone_domain}
domain active {zynqmp_fsbl}
bsp reload
bsp reload
platform generate -domains 
