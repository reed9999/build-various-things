pushd ~
	pushd ruby
	./autogen.sh
	mkdir -p build
		pushd build
		../configure --prefix="${HOME}/.rubies/ruby-main"
		sudo make install
		popd
	popd
popd

