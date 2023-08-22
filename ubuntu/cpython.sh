# Steps to build Python per
# https://devguide.python.org/getting-started/setup-building/index.html


source ~/scripts/util/detect-installer.sh
echo "Linux distribution: $BVT_DISTRO"
echo "Selected installer: $BVT_INSTALLER"
if [[ -z "${BVT_INSTALLER}" ]]; then
  echo "BVT_INSTALLER must be set to begin build."
  exit 255
fi

sudo ${BVT_INSTALLER} update
# This hopefully will include make and possibly gcc
sudo ${BVT_INSTALLER} install -y build-essential   # I think this was another way of getting gcc
sudo ${BVT_INSTALLER} install -y gcc  # redundant?

pushd ~
git clone --depth 1 https://github.com/python/cpython.git
popd

pushd ~/cpython
make clean

./configure --with-pydebug



make -s -j2

make test | tee ~/python-test-output.txt
