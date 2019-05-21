# ==============================================================
# File generated on Tue Dec 25 11:47:47 IST 2018
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build (by kefuz) on Tue Dec 25 11:23:54 IST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
set ::env(LD_LIBRARY_PATH) $::env(LD_LIBRARY_PATH):/proj/xhdhdstaff1/kefuz/nobkup/workspace_18.3/Rodin/REL/2018.3/prep/rdi/vivado/lnx64/tools/fpo_v7_0
set ::env(LD_LIBRARY_PATH) $::env(LD_LIBRARY_PATH):/proj/xhdhdstaff1/kefuz/nobkup/workspace_18.3/Rodin/REL/2018.3/prep/rdi/vivado/lnx64/tools/opencv
set ::env(LD_LIBRARY_PATH) $::env(LD_LIBRARY_PATH):/proj/xhdhdstaff1/kefuz/nobkup/workspace_18.3/Rodin/REL/2018.3/prep/rdi/vivado/lnx64/tools/fft_v9_1
set ::env(LD_LIBRARY_PATH) $::env(LD_LIBRARY_PATH):/proj/xhdhdstaff1/kefuz/nobkup/workspace_18.3/Rodin/REL/2018.3/prep/rdi/vivado/lnx64/tools/fir_v7_0
set ::env(LD_LIBRARY_PATH) $::env(LD_LIBRARY_PATH):/proj/xhdhdstaff1/kefuz/nobkup/workspace_18.3/Rodin/REL/2018.3/prep/rdi/vivado/lnx64/tools/dds_v6_0
set ::env(LD_LIBRARY_PATH) $::env(LD_LIBRARY_PATH):/proj/xhdhdstaff1/kefuz/nobkup/workspace_18.3/Rodin/REL/2018.3/prep/rdi/vivado/lnx64/csim
### C sim ###
if {![file exists csim.exe]} {
  puts "@E C-simulation is not set up properly. Please re-run csim."
  return -code error
}
set ret [catch {eval exec ./csim.exe | tee temp0.log >&@ stdout} err]
set logfile "temp0.log"
if {$ret || $err != ""} {
    if { [lindex $::errorCode 0] eq "CHILDSTATUS"} {
        set status [lindex $::errorCode 2]
        if {$status != ""} {
            puts "@E Simulation failed: Function \'main\' returns nonzero value \'$status\'."
            set ::AESL_CSIM::gnonzeroRetErr 1
            return -code error
        } else {
            puts "@E Simulation failed."
            return -code error
        }
    } else {
        if { [regexp {segmentation violation} $err] } {
            puts "@E Simulation failed: SIGSEGV."
        } else {
            puts "@E Simulation failed."
        }
        return -code error
    }
}
if {[file exists $logfile]} {
    set cmdret [catch {eval exec "grep \"Error:\" $logfile"} err]
    if {$cmdret == 0} {
        puts "@E Simulation failed."
        return -code error
    }
}

