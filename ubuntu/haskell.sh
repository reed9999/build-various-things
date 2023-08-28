# Steps to build Haskell per
# https://gitlab.haskell.org/ghc/ghc/-/wikis/building/getting-the-sources#via-git-repositories
# https://gitlab.haskell.org/ghc/ghc/-/wikis/building/hadrian

source ~/scripts/util/detect-installer.sh
echo "Linux distribution: $BVT_DISTRO"
echo "Selected installer: $BVT_INSTALLER"
if [[ -z "${BVT_INSTALLER}" ]]; then
  echo "BVT_INSTALLER must be set to begin build."
  exit 255
fi

echo "***** BEGIN HASKELL BUILD SCRIPT $(date) *****"
sudo ${BVT_INSTALLER} update
# This hopefully will include make and possibly gcc
sudo ${BVT_INSTALLER} install -y build-essential git autoconf python3 \
    libgmp-dev libnuma-dev libncurses-dev
cabal v2-install alex happy

pushd ~
git clone --depth 1 --recurse-submodules https://gitlab.haskell.org/ghc/ghc.git
popd

pushd ~/ghc
./boot && ./configure

# Ignore the bootstrap objection for now -- install Haskell to build Haskell
sudo ${BVT_INSTALLER} install -y ghc
sudo ${BVT_INSTALLER} install -y cabal-install
cabal update
hadrian/build -j

echo "***** BEGIN HASKELL TESTS $(date) *****"
hadrian/build test
echo "***** END HASKELL TESTS $(date) *****"
echo "***** END HASKELL BUILD SCRIPT $(date) *****"