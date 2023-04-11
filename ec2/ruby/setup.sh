# https://www.ruby-lang.org/en/documentation/installation/#building-from-source
# https://github.com/ruby/ruby/blob/master/doc/contributing/building_ruby.md
pushd ~
sudo yum install -y gcc
sudo yum install -y libyaml
sudo yum install -y zlib
sudo yum install -y autoconf
sudo yum install -y bison
sudo yum install -y gperf
sudo yum install -y ruby	# according to official ruby instructions


git clone --depth 1 https://github.com/ruby/ruby.git 
	pushd ruby
	./autogen.sh
	mkdir build
	popd
popd

