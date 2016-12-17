#!/bin/bash


#check for device name
if [$# -ne 1 ]
then
	echo "enter device name"
	exit
fi

# ccache
export USE_CCACHE=1
echo "export USE_CCACHE=1" >> ~/.bashrc
./prebuilts/misc/linux-x86/ccache/ccache -M 50G
export KBUILD_BUILD_USER=SubhrajyotiSen
export KBUILD_BUILD_HOST=Beast

# clean
make clean 

# build
. build/envsetup.sh
brunch $1
