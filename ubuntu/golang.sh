#!/usr/bin/bash
# GO LANGUAGE
# Script partially from Bing AI

source ~/scripts/util/detect-installer.sh
echo "Linux distribution: $BVT_DISTRO"
echo "Selected installer: $BVT_INSTALLER"
echo "***** BEGIN GO LANGUAGE BUILD SCRIPT $(date) *****"


sudo ${BVT_INSTALLER} update -y
sudo ${BVT_INSTALLER} install -y git gcc

# Go requires itself to build now, at 1.20 or greater
# If you accidentally install an older version, you may need to do something like:
# export GOROOT_BOOTSTRAP=/usr/lib/go-1.20

sudo ${BVT_INSTALLER} install -y golang-1.20

pushd ~ || exit 255
git clone https://go.googlesource.com/go
cd go/src
./all.bash
echo "***** END GO LANGUAGE BUILD SCRIPT $(date) *****"
popd

