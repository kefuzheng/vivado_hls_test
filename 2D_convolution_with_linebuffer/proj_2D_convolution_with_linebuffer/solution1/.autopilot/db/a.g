#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /wrk/xbj_vdi/kefuz/workspace/workspace_hls_test/test23/2D_convolution_with_linebuffer/proj_2D_convolution_with_linebuffer/solution1/.autopilot/db/a.g.bc ${1+"$@"}
