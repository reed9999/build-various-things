# https://www.ruby-lang.org/en/documentation/installation/#building-from-source
# https://github.com/ruby/ruby/blob/master/doc/contributing/building_ruby.md
#
# Some of these are unneeded but added to try to fix issues -- try to make this more parsimonious.
pushd ~
sudo yum install -y gcc
sudo yum install -y libyaml
sudo yum install -y zlib
sudo yum install -y zlib-devel
sudo yum install -y autoconf
sudo yum install -y bison
sudo yum install -y gperf
sudo yum install -y libffi
sudo yum install -y libffi-devel
# sudo yum install -y openssl # doubtful
sudo yum install -y openssl-devel
sudo yum install -y readline
sudo yum install -y readline-devel
# sudo yum install -y psych  # any such thing?
# sudo yum install -y psych-devel  # any such thing?
sudo yum install -y ruby	# according to official ruby instructions

gem install bundler
git clone --depth 1 https://github.com/ruby/ruby.git 
	pushd ruby
	./autogen.sh
	mkdir build
	popd
popd


# Although it seemed like a longshot this actually made everything but psych appear to work.
#
# https://github.com/rvm/rvm/issues/5069
export optflags="-Wno-error=implicit-function-declaration"; \
export LDFLAGS="-L/opt/homebrew/opt/libffi/lib"; \
export CPPFLAGS="-I/opt/homebrew/opt/libffi/include"; \
export PKG_CONFIG_PATH="/opt/homebrew/opt/libffi/lib/pkgconfig" | rvm install 2.6.6
