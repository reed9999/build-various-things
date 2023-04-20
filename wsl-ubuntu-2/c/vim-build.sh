#!/usr/bin/bash
# https://github.com/vim/vim/blob/master/src/INSTALL
pushd ~
sudo apt install -y make
sudo apt install -y clang
sudo apt install -y libtool-bin

git clone https://github.com/vim/vim.git
pushd ~/vim/src
make
make tests
sudo make install


# I don't need X or GUI support.
# For Python it has a manual step -- automate it with sed


sudo apt install -y libpython3-dev


# The manual step
# "CONF_OPT_PYTHON3 = --enable-python3interp"
	# % make reconfig

	# # Debugging:
	# % sudo apt install valgrind
	# Uncomment this line in Makefile:
		# CFLAGS = -g -Wall -Wextra -Wshadow -Wmissing-prototypes -Wunreachable-code -Wno-deprecated-declarations -U_FORTIFY_SOURCE -D_FORTIFY_SOURCE=1
	# % make reconfig
	# % make test_{test-name}
	# See output in testdir/valgrind.test_{test-name}



