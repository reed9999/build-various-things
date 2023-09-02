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
if [[ "$BVT_DISTRO" == "ubuntu" ]]; then
  sudo add-apt-repository universe
  export BOOTSTRAP_HASKELL_NONINTERACTIVE=1
  export BOOTSTRAP_HASKELL_MINIMAL=1
  export BOOTSTRAP_HASKELL_VERBOSE=1
  export BOOTSTRAP_HASKELL_GHC_VERSION=9.4.4
# I think the message to "ensure" the following was informational, not an error
#  sudo ${BVT_INSTALLER} install -y build-essential curl libffi-dev libffi8ubuntu1 libgmp-dev libgmp10 \
#    libncurses-dev libncurses5 libtinfo5

  curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
fi
sudo ${BVT_INSTALLER} install -y ghc=9.4
sudo ${BVT_INSTALLER} install -y cabal-install
cabal update
hadrian/build -j

echo "***** BEGIN HASKELL TESTS $(date) *****"
hadrian/build test
echo "***** END HASKELL TESTS $(date) *****"
echo "***** END HASKELL BUILD SCRIPT $(date) *****"