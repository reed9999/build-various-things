source ~/scripts/ubuntu/ruby/setup.sh
if [[ -z "${BVT_INSTALLER}" ]]; then
  echo "BVT_INSTALLER must be set to begin build."
  exit 255
fi
echo "Linux distribution: $BVT_DISTRO"
echo "Selected installer: $BVT_INSTALLER"
echo "***** BEGIN RUBY BUILD SCRIPT $(date) *****"

sudo ${BVT_INSTALLER} install -y gcc make
pushd ~/ruby
	./autogen.sh
	mkdir -p build
  pushd build
		../configure --prefix="${HOME}/.rubies/ruby-main"
		sudo make install

        ~/scripts/ec2/ruby/test.sh
  popd
popd

