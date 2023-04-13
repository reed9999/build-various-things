# https://www.ruby-lang.org/en/documentation/installation/#building-from-source
# https://github.com/ruby/ruby/blob/master/doc/contributing/building_ruby.md
#
# Some of these may still be unneeded -- be mindful of parsimony
# It seems that apt (Ubuntu) repositories package the same libraries under slightly
# different names, perhaps owing to dev versus devel
#
# See packages.ubuntu.com
pushd ~
PKGMGR=apt
sudo ${PKGMGR} install -y gcc
# sudo ${PKGMGR} install -y libyaml-2-0
sudo ${PKGMGR} install -y libyaml-dev
sudo ${PKGMGR} install -y zlib1g-dev
sudo ${PKGMGR} install -y autoconf
sudo ${PKGMGR} install -y bison
sudo ${PKGMGR} install -y gperf
sudo ${PKGMGR} install -y libffi-dev
sudo ${PKGMGR} install -y openssl
sudo ${PKGMGR} install -y readline-common
# sudo ${PKGMGR} install -y ruby	# according to official ruby instructions
sudo ${PKGMGR} install -y ruby-dev

sudo gem install bundler
git clone --depth 1 https://github.com/ruby/ruby.git 
	pushd ruby
	./autogen.sh
	mv build build-backup
	mkdir build
	popd
popd


# Although it seemed like a longshot this actually made everything but psych appear to work.
# Let's try installing rvm too just for good measure.
sudo gem install rvm
#
# https://github.com/rvm/rvm/issues/5069
export optflags="-Wno-error=implicit-function-declaration"; \
export LDFLAGS="-L/opt/homebrew/opt/libffi/lib"; \
export CPPFLAGS="-I/opt/homebrew/opt/libffi/include"; \
export PKG_CONFIG_PATH="/opt/homebrew/opt/libffi/lib/pkgconfig" | rvm install 2.6.6
