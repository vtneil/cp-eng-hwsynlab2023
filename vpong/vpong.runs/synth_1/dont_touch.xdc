# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: imports/cp-eng-hwsynlab2023/Basys-3-Master-Custom.xdc

# IP: ip/CW/CW.xci
set_property KEEP_HIERARCHY SOFT [get_cells -hier -filter {REF_NAME==CW || ORIG_REF_NAME==CW} -quiet] -quiet

# XDC: c:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.gen/sources_1/ip/CW/CW_board.xdc
set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==CW || ORIG_REF_NAME==CW} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: c:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.gen/sources_1/ip/CW/CW.xdc
#dup# set_property KEEP_HIERARCHY SOFT [get_cells [split [join [get_cells -hier -filter {REF_NAME==CW || ORIG_REF_NAME==CW} -quiet] {/inst } ]/inst ] -quiet] -quiet

# XDC: c:/Users/vivat/Desktop/git_target/cp-eng-hwsynlab2023/vpong/vpong.gen/sources_1/ip/CW/CW_ooc.xdc