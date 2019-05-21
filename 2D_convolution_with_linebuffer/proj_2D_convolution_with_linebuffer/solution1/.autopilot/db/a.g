#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/kefuz/git/vivado_hls_test/2D_convolution_with_linebuffer/proj_2D_convolution_with_linebuffer/solution1/.autopilot/db/a.g.bc ${1+"$@"}
