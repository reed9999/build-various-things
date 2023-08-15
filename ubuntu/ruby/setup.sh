# https://www.ruby-lang.org/en/documentation/installation/#building-from-source
# https://github.com/ruby/ruby/blob/master/doc/contributing/building_ruby.md
#
source ~/scripts/util/detect-installer.sh
echo "Linux distribution: $BVT_DISTRO"
echo "Selected installer: $BVT_INSTALLER"
echo "***** BEGIN RUBY SETUP SCRIPT $(date) *****"

PKGMGR=$BVT_INSTALLER

# Some of these may still be unneeded -- be mindful of parsimony
# It seems that apt (Ubuntu) repositories package the same libraries under slightly
# different names, perhaps owing to dev versus devel
#
# See packages.ubuntu.com
pushd ~
#PKGMGR=apt
sudo ${BVT_INSTALLER} update
sudo ${BVT_INSTALLER} install -y gcc
# sudo ${BVT_INSTALLER} install -y libyaml-2-0
sudo ${BVT_INSTALLER} install -y libyaml-dev
sudo ${BVT_INSTALLER} install -y zlib1g-dev
sudo ${BVT_INSTALLER} install -y autoconf
sudo ${BVT_INSTALLER} install -y bison
sudo ${BVT_INSTALLER} install -y gperf  # Ubuntu: unable to find
sudo ${BVT_INSTALLER} install -y libffi-dev
sudo ${BVT_INSTALLER} install -y openssl
sudo ${BVT_INSTALLER} install -y readline-common
# sudo ${BVT_INSTALLER} install -y ruby	# according to official ruby instructions
sudo ${BVT_INSTALLER} install -y ruby-dev

sudo gem install bundler
git clone --depth 1 https://github.com/ruby/ruby.git 
	pushd ruby
	./autogen.sh
	[ -f build ] && mv build build-backup
	mkdir build
	popd
popd


# Phase 1 comment:
# Although it seemed like a longshot this actually made everything but psych appear to work.
# Let's try installing rvm too just for good measure.
# Phase 2 -- it can't find rvm on the path after that. And since the build fails
# badly this seems to be a problem.

sudo gem install rvm
#
# https://github.com/rvm/rvm/issues/5069
export optflags="-Wno-error=implicit-function-declaration"; \
export LDFLAGS="-L/opt/homebrew/opt/libffi/lib"; \
export CPPFLAGS="-I/opt/homebrew/opt/libffi/include"; \
export PKG_CONFIG_PATH="/opt/homebrew/opt/libffi/lib/pkgconfig" | rvm install 2.6.6
