#!/bin/bash
 
# ccache
export USE_CCACHE=1
export CCACHE_DIR=/home/ccache/subhrajyoti
prebuilts/misc/linux-x86/ccache/ccache -M 50G
 
# clean
make clean && make clobber
 
# build
. build/envsetup.sh
lunch cm_$device-userdebug
make bacon -j8